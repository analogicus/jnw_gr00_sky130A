---
layout: page
title: Schematic
permalink: sch
---

## JNW_GR00_SKY130NM/JNWG00_ANA.svg




![JNW_GR00_SKY130NM/JNWG00_ANA.svg](JNW_GR00_SKY130NM/JNWG00_ANA.svg)


## JNW_GR00_SKY130NM/JNWG00_BDAC.svg




![JNW_GR00_SKY130NM/JNWG00_BDAC.svg](JNW_GR00_SKY130NM/JNWG00_BDAC.svg)



A bipolar DAC that can switch in 1, or more (up to 8) diodes. 

There is also a resistor that can be enabled to provide R + diode combination.

## JNW_GR00_SKY130NM/JNWG00_BIAS.svg




![JNW_GR00_SKY130NM/JNWG00_BIAS.svg](JNW_GR00_SKY130NM/JNWG00_BIAS.svg)


## JNW_GR00_SKY130NM/JNWG00_CCELL.svg




![JNW_GR00_SKY130NM/JNWG00_CCELL.svg](JNW_GR00_SKY130NM/JNWG00_CCELL.svg)




The storage capacitor with a bottom plate sampling. The switched capacitor
includes the inverters to ensure the bottom plate is disconnected first.

## JNW_GR00_SKY130NM/JNWG00_CDAC.svg




![JNW_GR00_SKY130NM/JNWG00_CDAC.svg](JNW_GR00_SKY130NM/JNWG00_CDAC.svg)


## JNW_GR00_SKY130NM/JNWG00_CHP.svg




![JNW_GR00_SKY130NM/JNWG00_CHP.svg](JNW_GR00_SKY130NM/JNWG00_CHP.svg)


## JNW_GR00_SKY130NM/JNWG00_CMP.svg




![JNW_GR00_SKY130NM/JNWG00_CMP.svg](JNW_GR00_SKY130NM/JNWG00_CMP.svg)


## JNW_GR00_SKY130NM/JNWG00_CORE.svg




![JNW_GR00_SKY130NM/JNWG00_CORE.svg](JNW_GR00_SKY130NM/JNWG00_CORE.svg)


## JNW_GR00_SKY130NM/JNWG00_CP.svg




![JNW_GR00_SKY130NM/JNWG00_CP.svg](JNW_GR00_SKY130NM/JNWG00_CP.svg)


## JNW_GR00_SKY130NM/JNWG00_IDAC.svg




![JNW_GR00_SKY130NM/JNWG00_IDAC.svg](JNW_GR00_SKY130NM/JNWG00_IDAC.svg)




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
## JNW_GR00_SKY130NM/JNWG00_LPF.svg




![JNW_GR00_SKY130NM/JNWG00_LPF.svg](JNW_GR00_SKY130NM/JNWG00_LPF.svg)


## JNW_GR00_SKY130NM/JNW_GR00.svg




![JNW_GR00_SKY130NM/JNW_GR00.svg](JNW_GR00_SKY130NM/JNW_GR00.svg)


