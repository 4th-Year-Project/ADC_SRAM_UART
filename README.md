

# ADC SRAM UART
This is the top level for the FPGA project. The aim of this is to read from the two ADCs, using the AXI stream FIFO and then into SRAM. The SRAM Can then be read slowly back to the PC over UART.

## How to use
1. Plug FPGA in using USB cable
2. Run the SDK code using the Xilinx SDK software
3. Connect to the FPGA via serial using the settings defined in "Specs" or the Matlab GUI
4. Reset is BTN0, Sample and send is BTN1

## LEDs
| LEDs lit | Meaning |
|--|--|
| No LEDs | No power - Check USB |
| Orange LED | FPGA Programming Done |
| Red LED | Board has power |
| Green LED1 only | Ready to sample |
| Green LED2 only | Sampling started |
| Green LED1 & LED2 | Sampling finished |
| Orange LED by USB | Serial data being sent |
| No Green LEDs | Microblaze not programmed |
|RGB LED| Not used |

## GPIOs
| GPIO/bit  | Connection  | Explanation                      |
|-----------|-------------|----------------------------------|
| *GPIO0 ch1* |             | *External inputs*              |
| bit 0     | BTN1        | Start External sampling          |
| *GPIO0 ch2* |             | *External outputs*             |
| bit 0     | LED1        | See LED table                    |
| bit 1     | LED2        | See LED table                    |
| *GPIO1 ch1* |             | *Internal inputs*              |
| bit 0     | ADC1_DONE   | ADC1 completed sampling          |
| bit 1     | ADC2_DONE   | ADC2 completed sampling          |
| *GPIO1 ch2* |             | *Internal outputs*             |
| bit 0     | RESET       | For software reset (Active high) |
| bit 1     | ADC1_ENABLE | ADC1 start sampling              |
| bit 2     | ADC2_ENABLE | ADC2 start sampling              |


## Specs
* ADCs
  * Reads from the even channels only
  * 2 MSPS sample rate
  * AXI-Stream output
  * 32,000 samples total (8,000 of each channel)
* AXI-Stream re-clocking
  * 2 MHz to 100MHz
  * 100 MHz is the FPGA clock rate
* AXI-Stream data width converter
  * Converts from 1 byte to 4 byte Stream
  * Required because the FIFO has minimum 32 bit input for data
* AXI-Stream Combiner
 * Not yet implimented
* AXI-Stream FIFO
  * 8192 sample depth (32bit width)
* MicroBlaze
  * Controls GPIO

* SRAM
* MicroBlaze
* UART
  * 115200 baud
