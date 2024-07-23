

The principle behind the IDAC is to have a single PMOS transistor, and use 
two segmented DACs to control the gate voltage of the PMOS.

At power off the gate of the PMOS is connected to ground, and the coarse DAC
bottom plates are connected to ground. As such, there is no charge stored in the
CDAC. 

A SAR algorithm is run on the coarse DAC first (`../src/core_tb.v`) and then on
the fine DAC. 

After the SAR algorithms the loop does a bang, bang type loop, increasing, or
decreasing the fine DAC. Hopefully that compensates for leakage in the IDAC. 

The IDAC must be powered down, and powered up once in a while.
