#include "xparameters.h"
#include "xil_exception.h"
#include "xstreamer.h"
#include "xil_cache.h"
#include "xllfifo.h"
#include "xstatus.h"

#define FIFO_DEV_ID	   	XPAR_AXI_FIFO_0_DEVICE_ID   //Device ID
#define WORD_SIZE 8			/* Size of words in bytes */ //You c
#define MAX_PACKET_LEN 4  //To be checked
#define NO_OF_PACKETS 64  // Probably won't be used
#define MAX_DATA_BUFFER_SIZE NO_OF_PACKETS*MAX_PACKET_LEN

#undef DEBUG

/************************** Function Prototypes ******************************/
int RxInit(XLlFifo *InstancePtr, u32 *DestinationAddr);
int RxADC(XLlFifo *InstancePtr, u32 *DestinationAddr);
int TxUART(XLlFifo *InstancePtr, u32 *SourceAddr);

/************************** Variable Definitions *****************************/

XLlFifo FifoInstance;

u32 SourceBuffer[MAX_DATA_BUFFER_SIZE * WORD_SIZE];
u32 DestinationBuffer[MAX_DATA_BUFFER_SIZE * WORD_SIZE];

int main (){
  int Status;

  xil_printf("--- Entering main() ---\n\r");
  //Initialize
  Status = RxInit(&FifoInstance, FIFO_DEV_ID);

  if (Status != XST_SUCCESS) {
		xil_printf("Initilization of Rx Chain failed\n\r");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran Initilization of Rx Chain\n\r");
	return XST_SUCCESS;

  //Recieve

  //transmit

  //reset?


}

int RxInit(XLlFifo *InstancePtr, u16 DeviceId){
  XLlFifo_Config *Config;
	int Status;
	int i;
	int Error;
	Status = XST_SUCCESS;

  /* Initialize the Device Configuration Interface driver */
  Config = XLlFfio_LookupConfig(DeviceId);
	if (!Config) {
		xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}
  /*
	 * Initialize with a physical address
	 */
  Status = XLlFifo_CfgInitialize(InstancePtr, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed\n\r");
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
}

int RxADC(XLlFifo *InstancePtr, u32 *DestinationAddr){
  int i;
	int Status;
	u32 RxWord;
	static u32 ReceiveLength;

  xil_printf(" Receiving data ....\n\r");

  /* Read Recieve Length */
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


}
