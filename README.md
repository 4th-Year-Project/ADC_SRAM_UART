# ADC SRAM UART
This is the top level for the FPGA project. The aim of this is to read from the two ADCs, using the AXI stream FIFO and then into SRAM. The SRAM Can then be read slowly back to the PC from the SRAM.

## How to use
1. Plug FPGA in using USB cable
2. Upload bitstream to FPGA and run the SDK code using the Xilinx SDK software
3. Connect to the FPGA via serial using the settings defined in "Specs"
4. Press BTN1 to start, LED2 Should light when capture is clang_complete
5. Reset is performed using BTN0


## Specs
* ADCs
  * Reads from the even channels only
  * 2 MSPS sample rate
  * AXI-Stream output
* AXI-Stream re-clocking
  * 2 MHz to 100MHz
  * 100 MHz is the FPGA clock rate
* AXI-Stream data width converter
  * Converts from 1 byte to 4 byte Stream
  * Required because the FIFO has minimum 32 bit input for data
* AXI-Stream Combiner
* AXI-Stream FIFO
* MicroBlaze
  * Controls GPIO
      * GPIO Channel 1:
         * bit 1: BTN 1
      * GPIO Channel 1: 
         * bit 1: LED1
         * bit 2: LED2
      * GPIO1 Channel 1:
         * bit 1: ADC_INTERFACE DONE
      * GPIO1 Channel 1: 
         * bit 1: RESET
         * bit 2: ADC_INTERFACE ENABLE
* SRAM
* MicroBlaze
* UART
  * 115200 baud

  ## Todo
* ADCS
  * Check stream output validity
  * Check synchronous logic warning
* AXI*Stream re*clocking
  * Fix warning about specification of clocks
* AXI*Stream data width converter
  * Consider combining this with the combiner and what effect this will have on the sampling order of the channels
  * Implement in hardware
* AXI*Stream Combiner
  * May be obsolete
  * Implement in hardware
* AXI*Stream FIFO
  * Implement in hardware
* (μBlaze)
   * Write function to get this stream fifo writing to SRAM
   * Change code to read the number of samples specified not the number of words used in the example code that was copied
   * Change the Tx location to the location of the SRAM
* SRAM
  * Implement in hardware
* (μBlaze)
* UART
  * Implement in hardware
  * Configure baud rate
