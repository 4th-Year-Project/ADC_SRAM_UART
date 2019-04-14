#include "xparameters.h"
#include "xgpio.h"
#include "xil_exception.h"
#include "xstreamer.h"
#include "xil_cache.h"
#include "xllfifo.h"
#include "xstatus.h"


#define FIFO_DEV_ID	   	XPAR_AXI_FIFO_0_DEVICE_ID   //Device ID
#define WORD_SIZE 4			/* Size of words in bytes */
#define MAX_PACKET_LEN 4
#define NO_OF_PACKETS 50
#define MAX_DATA_BUFFER_SIZE NO_OF_PACKETS*MAX_PACKET_LEN
#define SRAM_BASE_ADDR  0x60000000

#undef DEBUG

/************************** Function Prototypes ******************************/
int RxInit(XLlFifo *InstancePtr, u16 DeviceId);
int RxSamples(XLlFifo *InstancePtr, u32 *DestinationAddr);
int TxUART(u32 DestinationAddr);
/************************** Variable Definitions *****************************/

XLlFifo FifoInstance;
u32 SRAMBaseAddr = 0x60000000;
u32 SourceBuffer[MAX_DATA_BUFFER_SIZE * WORD_SIZE];
u32 DestinationBuffer[MAX_DATA_BUFFER_SIZE * WORD_SIZE];

static u32 ReceiveLength;

int main (){
  int Status;

  xil_printf("--- Entering main() ---\n\r");

  //--- Initialise ---
  u32 btn = 0;
  u32 led;
  XGpio gpio; // the GPIO struct for LEDs and buttons
  XGpio gpio1; // GPIO struct for internal devices
  XGpio_Initialize(&gpio, 0); //inits the GPIO for LEDs and BUttons
  XGpio_Initialize(&gpio1,1); //Initis the GPIO for internal devices
  XGpio_SetDataDirection(&gpio, 2, 0x00000000); // set LED GPIO channel tristates to All Output
  XGpio_SetDataDirection(&gpio, 1, 0xFFFFFFFF); // set BTN GPIO channel tristates to All Input
  XGpio_SetDataDirection(&gpio1, 2, 0x00000000); // set internal outputs GPIO channel tristates to All output
  XGpio_SetDataDirection(&gpio1, 1, 0xFFFFFFFF); // set internal inputs GPIO channel tristates to All Input

  Status = RxInit(&FifoInstance, FIFO_DEV_ID);

  if (Status != XST_SUCCESS) {
		xil_printf("Initialisation of Rx Chain failed\n\r");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran Initialisation of Rx Chain\n\r");

  // --- Start the ADC sampling to fill FIFO ---
	xil_printf("Press sample button now\n\r");
	//Wait for button
		while (1){
			btn = XGpio_DiscreteRead(&gpio, 1);
			if ((btn & 1) !=0 ){
				xil_printf("BTN1 Pressed\n\r");
				btn = 0;
				led = 0b1;  //turns on LED 1
				XGpio_DiscreteWrite(&gpio, 2, led);
				break;
			}
		}
	//Start Sampling
		XGpio_DiscreteWrite(&gpio1, 2, 0b1); //Sends enable signal
		XGpio_DiscreteWrite(&gpio, 2, 0b10); //Turn on LED2

	//wait for sampling to finish
		while (1){
			btn = XGpio_DiscreteRead(&gpio1, 1);
			if (btn != 0){
				xil_printf("Sampling done\n\r");
				XGpio_DiscreteWrite(&gpio, 2, 0b11); //Turn on LED2
				break;
			}
		}
  //--- Transfer to SRAM ---
  if(1){
	  xil_printf("Will transfer via SRAM\n\r");
	  Status = RxSamples(&FifoInstance, SRAMBaseAddr);

  if (Status != XST_SUCCESS) {
		xil_printf("Receiving of samples failed\n\r");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran receiving of samples\n\r");
  }
  else{
	  xil_printf("Skipped transfer to SRAM\n\r");
  }

  //--- Send over UART ---
  Status = TxUART(SRAMBaseAddr);
  if (Status != XST_SUCCESS) {
		xil_printf("Sending over UART Failed\n\r");
		return XST_FAILURE;
	}
  xil_printf("Successfully sent over UART\n\r");

  //--- reset ---
  xil_printf("Stopping\n\r");
  return XST_SUCCESS;
}

int RxInit(XLlFifo *InstancePtr, u16 DeviceId){
  XLlFifo_Config *Config;
	int Status;
	Status = XST_SUCCESS;

  /* Initialise the Device Configuration Interface driver */
  Config = XLlFfio_LookupConfig(DeviceId);
	if (!Config) {
		xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}
  /*
	 * Initialise with a physical address
	 */
  Status = XLlFifo_CfgInitialize(InstancePtr, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialisation failed\n\r");
		return Status;
	}

  /* Check for the Reset value */
	Status = XLlFifo_Status(InstancePtr);
	XLlFifo_IntClear(InstancePtr,0xffffffff);
	Status = XLlFifo_Status(InstancePtr);
	if(Status != 0x0) {
		xil_printf("\n ERROR : Reset value of ISR0 : 0x%x\t"
			    "Expected : 0x0\n\r",
			    XLlFifo_Status(InstancePtr));
		return XST_FAILURE;
	}
	return Status;
}

int RxSamples(XLlFifo *InstancePtr, u32* DestinationAddr){
    int i;
	int Status;
	u32 RxWord;


  xil_printf("Receiving data ....\n\r");

  /* Read Receive Length */
	ReceiveLength = (XLlFifo_iRxGetLen(InstancePtr))/WORD_SIZE;

	/* Start Receiving */
	for ( i=0; i < ReceiveLength; i++){
		RxWord = 0;
		RxWord = XLlFifo_RxGetWord(InstancePtr);

		if(XLlFifo_iRxOccupancy(InstancePtr)){
			RxWord = XLlFifo_RxGetWord(InstancePtr);
		}
		*(DestinationAddr+i) = RxWord;
	}

	Status = XLlFifo_IsRxDone(InstancePtr);
	if(Status != TRUE){
		xil_printf("Failing in receive complete ... \r\n");
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int TxUART(u32 DestinationAddr){
    u64 addr = DestinationAddr;
    u16 count =0;

    while(addr < (DestinationAddr + ReceiveLength* WORD_SIZE)){
    xil_printf("%x",Xil_In32(addr));
    print("\n\r");
    addr += WORD_SIZE;
    count++;
    }
    xil_printf("%d \n\r",count);
    return XST_SUCCESS;
}

