
# JNW_GR00_SKY130NM

# Who
Carsten Wulff

# Why
Is it possible to make a accurate temperature sensor based on a switched
capacitor bandgap reference? I don't know, let's find out 


# How
 
Grand Plan:

- [x] Make a discrete time PTAT current source work (ideal comparator)
- [ ] Add comparator, with chopping
- [ ] Add constant current output to the design 
- [ ] Add constant voltage output (VREF) to the design 
- [ ] Add a PTAT charging of a capacitor to VREF to convert from current to time 
- [ ] Add a constant current charging to eliminate C variation?



# What

| What            | Lib/Folder       | Cell/Name |
| :-              | :-:              | :-:       |
| Schematic       | JNW_GR00_SKY130NM | JNW_GR00 |
| Layout          | JNW_GR00_SKY130NM | JNW_GR00 |
| LPE             | JNW_GR00_SKY130NM | JNW_GR00 |


# Changelog/Plan
| Version | Status | Comment|
| :-| :-| :-|
|0.1.0 | :x: |  |


# Signal interface (TBD)
| Signal    | Direction | Domain  | Description          |
|:----------|:---------:|:-------:|:---------------------|
| VDD_1V8   | Input     | VDD_1V8 | Main supply          |
| VSS       | Input     | Ground  |                      |
| PWRUP_1V8 | Input     | VDD_1V8 | Power up the circuit |


# Key parameters (TBD)
| Parameter           | Min     | Typ           | Max     | Unit  |
| :---                | :-:     | :-:           | :-:     | :---: |
| Technology          |         | Sky130A |         |       |
| AVDD                | 1.7    | 1.8           | 1.9    | V     |
| Temperature         | -40     | 27            | 125     | C     |


# Status

| Stage                       | TYPE | Status | Comment                        |
| :---                        | :-:  | :---:  | :--:                           |
| Specification               | DOC  | :white_check_mark:    |                                |
| Schematic                   | VIEW | :x:    |                                |
| Schematic simulation        | VER  | N/A    |                                |
| Layout                      | VIEW | :x:    |                                |
| Layout parasitic extraction | VIEW | :x:    |                                |
| LPE simulation              | VER  | :x:    |                                |
| LVS                         | VER  | :x:    |                                |
| DRC                         | VER  | :x:    |                                |
| ERC                         | VER  | :x:    |                                |
| ANT                         | VER  | :x:    |                                |


# Simulation results

## PTAT Current status

![sim/JNWG00_CORE/results/tran_SchGtKttTtVt.png]
