# ADC SRAM UART
This is the top level for the FPGA project. The aim of this is to read from the two ADCs, using the AXI stream FIFO and then into SRAM. The SRAM Can then be read slowly back to the PC over UART.

## How to use
1. Plug FPGA in using USB cable
2. Run the SDK code using the Xilinx SDK software
3. Connect to the FPGA via serial using the settings defined in "Specs"
4. Press BTN1 to start, LED2 Should light when capture is complete
5. Reset is performed using BTN0 and must be done before sampling again


## Specs

- ADCs
  - Reads from the even channels only
  - 2 MSPS sample rate
  - AXI-Stream output
- AXI-Stream re-clocking
  - 2 MHz to 100MHz
  - 100 MHz is the FPGA clock rate
- AXI-Stream Interconnect
  - Converts from 1 byte to 4 byte Stream
  - Required because the FIFO has minimum 32 bit input for data
- AXI-Stream Combiner
  - Not implemented yet
- AXI-Stream FIFO
  - 512 depth (512 samples of 4 channels)
- MicroBlaze
- SRAM
- MicroBlaze
- UART
  - 115200 baud

  ## Todo
  
* ADC Interface
  * Make it resettable
  * Check Warnings
* AXI-Stream re-clocking
  - Done
* AXI-Stream Interconnect
  - Done
* AXI-Stream Combiner
  - Implement in hardware
* AXI-Stream FIFO
  - Done
* MicroBlaze
   - Change code to read the number of samples specified not the number of words used in the example code that was copied
* SRAM
  - Implement in hardware
* MicroBlaze
* UART
  - Done
