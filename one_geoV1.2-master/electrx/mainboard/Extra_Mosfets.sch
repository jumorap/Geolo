EESchema Schematic File Version 2
LIBS:mainboard-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:RMC
LIBS:arduino_shieldsNCL
LIBS:opendous
LIBS:m-bed
LIBS:stepper_drivers
LIBS:dc-dc-dsun
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logo
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:Symbols_DCDC-ACDC-Converter_RevC_20Jul2012
LIBS:Symbols_EN60617_13Mar2013
LIBS:Symbols_EN60617-10_HF-Radio_DRAFT_12Sep2013
LIBS:Symbols_ICs-Diskrete_RevD10
LIBS:Symbols_ICs-Opto_RevB_16Sep2013
LIBS:Symbols_Microcontroller_Philips-NXP_RevA_06Oct2013
LIBS:SymbolsSimilarEN60617+oldDIN617-RevE8
LIBS:Symbols_Socket-DIN41612_RevA
LIBS:Symbols_Transformer-Diskrete_RevA
LIBS:gmas
LIBS:mainboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 11
Title "RAMPS-FD (RAMPS for Arduino Due)"
Date "9 feb 2014"
Rev "v2 Issue A"
Comp ""
Comment1 "Derived from RAMPS 1.4 reprap.org/wiki/RAMPS1.4"
Comment2 "GPL v3"
Comment3 "Bob Cousins 2013"
Comment4 ""
$EndDescr
Connection ~ 3500 1000
Wire Wire Line
	3000 1000 3900 1000
Wire Wire Line
	3500 3200 3500 2600
Wire Wire Line
	3000 2050 4500 2050
Wire Wire Line
	3000 2050 3000 2000
Wire Wire Line
	3000 1600 3000 1550
Connection ~ 3500 2050
Wire Wire Line
	3500 1700 3500 2200
Wire Wire Line
	3000 1000 3000 1050
Wire Wire Line
	4500 1850 3900 1850
Wire Wire Line
	3900 1850 3900 1000
Wire Wire Line
	3500 850  3500 1300
$Comp
L MOS_N Q901
U 1 1 523E5FE5
P 3400 2400
F 0 "Q901" H 3410 2570 60  0000 R CNN
F 1 "DMN2075U" H 4050 2350 60  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3400 2400 60  0000 C CNN
F 3 "" H 3400 2400 60  0001 C CNN
	1    3400 2400
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR099
U 1 1 523E5FF8
P 3500 3200
F 0 "#PWR099" H 3500 3250 40  0001 C CNN
F 1 "GNDPWR" H 3500 3120 40  0000 C CNN
F 2 "" H 3500 3200 60  0001 C CNN
F 3 "" H 3500 3200 60  0001 C CNN
	1    3500 3200
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P901
U 1 1 523E5FFE
P 4850 1950
F 0 "P901" V 4800 1950 40  0000 C CNN
F 1 "D12" V 4900 1950 40  0000 C CNN
F 2 "RMC:CONN_KK_2.54_2W" H 4850 2200 60  0000 C CNN
F 3 "" H 4850 1950 60  0001 C CNN
	1    4850 1950
	1    0    0    -1  
$EndComp
$Comp
L DIODE D903
U 1 1 523E6004
P 3500 1500
F 0 "D903" H 3500 1600 40  0000 C CNN
F 1 "ES1F" H 3500 1400 40  0000 C CNN
F 2 "RMC:DO-214AC" H 3500 1500 60  0000 C CNN
F 3 "" H 3500 1500 60  0001 C CNN
	1    3500 1500
	0    -1   -1   0   
$EndComp
$Comp
L LED-RESCUE-mainboard D901
U 1 1 523E6017
P 3000 1800
F 0 "D901" H 3000 1900 50  0000 C CNN
F 1 "LED RED" H 3000 1700 50  0000 C CNN
F 2 "RMC:LED-0805_RED" H 3000 1800 60  0000 C CNN
F 3 "" H 3000 1800 60  0001 C CNN
	1    3000 1800
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-mainboard R905
U 1 1 523E601D
P 3000 1300
F 0 "R905" V 3080 1300 50  0000 C CNN
F 1 "1k" V 3000 1300 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" H 3000 1300 60  0000 C CNN
F 3 "" H 3000 1300 60  0001 C CNN
	1    3000 1300
	1    0    0    -1  
$EndComp
Text GLabel 1450 2400 0    60   Input ~ 0
FET5_BUF
$Comp
L +12P #PWR0100
U 1 1 523E6026
P 3500 850
F 0 "#PWR0100" H 3500 820 30  0001 C CNN
F 1 "+12P" H 3500 950 30  0000 C CNN
F 2 "" H 3500 850 60  0000 C CNN
F 3 "" H 3500 850 60  0000 C CNN
	1    3500 850 
	1    0    0    -1  
$EndComp
Text Label 4000 2050 0    50   ~ 0
P_FET5
Connection ~ 3500 4200
Wire Wire Line
	3000 4200 3900 4200
Wire Wire Line
	3500 6400 3500 5800
Wire Wire Line
	3000 5250 4500 5250
Wire Wire Line
	3000 5250 3000 5200
Wire Wire Line
	3000 4800 3000 4750
Connection ~ 3500 5250
Wire Wire Line
	3500 4900 3500 5400
Wire Wire Line
	3000 4200 3000 4250
Wire Wire Line
	4500 5050 3900 5050
Wire Wire Line
	3900 5050 3900 4200
Wire Wire Line
	3500 4050 3500 4500
$Comp
L MOS_N Q902
U 1 1 523E66A5
P 3400 5600
F 0 "Q902" H 3410 5770 60  0000 R CNN
F 1 "DMN2075U" H 4100 5450 60  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3400 5600 60  0000 C CNN
F 3 "" H 3400 5600 60  0001 C CNN
	1    3400 5600
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR0101
U 1 1 523E66AB
P 3500 6400
F 0 "#PWR0101" H 3500 6450 40  0001 C CNN
F 1 "GNDPWR" H 3500 6320 40  0000 C CNN
F 2 "" H 3500 6400 60  0001 C CNN
F 3 "" H 3500 6400 60  0001 C CNN
	1    3500 6400
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P902
U 1 1 523E66B1
P 4850 5150
F 0 "P902" V 4800 5150 40  0000 C CNN
F 1 "D2" V 4900 5150 40  0000 C CNN
F 2 "RMC:CONN_KK_2.54_2W" H 4850 5150 60  0000 C CNN
F 3 "" H 4850 5150 60  0001 C CNN
	1    4850 5150
	1    0    0    -1  
$EndComp
$Comp
L DIODE D904
U 1 1 523E66B7
P 3500 4700
F 0 "D904" H 3500 4800 40  0000 C CNN
F 1 "ES1F" H 3500 4600 40  0000 C CNN
F 2 "RMC:DO-214AC" H 3500 4700 60  0000 C CNN
F 3 "" H 3500 4700 60  0001 C CNN
	1    3500 4700
	0    -1   -1   0   
$EndComp
$Comp
L LED-RESCUE-mainboard D902
U 1 1 523E66BD
P 3000 5000
F 0 "D902" H 3000 5100 50  0000 C CNN
F 1 "LED RED" H 3000 4900 50  0000 C CNN
F 2 "RMC:LED-0805_RED" H 3000 5000 60  0000 C CNN
F 3 "" H 3000 5000 60  0001 C CNN
	1    3000 5000
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-mainboard R906
U 1 1 523E66C3
P 3000 4500
F 0 "R906" V 3080 4500 50  0000 C CNN
F 1 "1k" V 3000 4500 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" H 3000 4500 60  0000 C CNN
F 3 "" H 3000 4500 60  0001 C CNN
	1    3000 4500
	1    0    0    -1  
$EndComp
Text GLabel 1450 5600 0    60   Input ~ 0
FET6_BUF
$Comp
L +12P #PWR0102
U 1 1 523E66CA
P 3500 4050
F 0 "#PWR0102" H 3500 4020 30  0001 C CNN
F 1 "+12P" H 3500 4150 30  0000 C CNN
F 2 "" H 3500 4050 60  0000 C CNN
F 3 "" H 3500 4050 60  0000 C CNN
	1    3500 4050
	1    0    0    -1  
$EndComp
Text Label 4000 5250 0    50   ~ 0
P_FET6
$Comp
L R-RESCUE-mainboard R902
U 1 1 52C42B15
P 2150 2400
F 0 "R902" V 2230 2400 40  0000 C CNN
F 1 "220R" V 2157 2401 40  0000 C CNN
F 2 "opendous:SM0805_Opendous" V 2080 2400 30  0000 C CNN
F 3 "~" H 2150 2400 30  0000 C CNN
	1    2150 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 2400 1450 2400
Wire Wire Line
	2400 2400 3200 2400
$Comp
L R-RESCUE-mainboard R901
U 1 1 52C42B98
P 2100 5600
F 0 "R901" V 2180 5600 40  0000 C CNN
F 1 "220R" V 2107 5601 40  0000 C CNN
F 2 "opendous:SM0805_Opendous" V 2030 5600 30  0000 C CNN
F 3 "~" H 2100 5600 30  0000 C CNN
	1    2100 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 5600 1450 5600
Wire Wire Line
	2350 5600 3200 5600
$EndSCHEMATC
