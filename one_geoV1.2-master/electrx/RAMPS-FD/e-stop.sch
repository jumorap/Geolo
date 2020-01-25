EESchema Schematic File Version 2
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
LIBS:opendous
LIBS:arduino_shieldsNCL
LIBS:DIP28
LIBS:DIP30
LIBS:ds3231n
LIBS:FE
LIBS:jmp
LIBS:LPC11xx_HVQFN33
LIBS:lpcxpresso_1769_header
LIBS:m-bed
LIBS:mcp230xx
LIBS:pca9685
LIBS:RMC_connectors
LIBS:stepper_drivers
LIBS:STM32F100_48
LIBS:STM32F429 LQFP144
LIBS:w_analog
LIBS:w_connectors
LIBS:w_device
LIBS:w_logic
LIBS:w_microcontrollers
LIBS:w_opto
LIBS:w_rtx
LIBS:con-molex
LIBS:m-pad-2.1
LIBS:RAMPS-FD-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 10
Title "RAMPS-FD (RAMPS for Arduino Due)"
Date "22 apr 2016"
Rev "v2.1"
Comp ""
Comment1 "Derived from RAMPS 1.4 reprap.org/wiki/RAMPS1.4"
Comment2 "GPL v3"
Comment3 "Bob Cousins 2013"
Comment4 ""
$EndDescr
$Comp
L VCC #PWR047
U 1 1 523A3B4A
P 6200 1200
F 0 "#PWR047" H 6200 1300 30  0001 C CNN
F 1 "VCC" H 6200 1300 30  0000 C CNN
F 2 "" H 6200 1200 60  0001 C CNN
F 3 "" H 6200 1200 60  0001 C CNN
	1    6200 1200
	1    0    0    -1  
$EndComp
$Comp
L R_PACK4 RP1
U 1 1 523A3B30
P 6450 6900
F 0 "RP1" H 6450 7350 40  0000 C CNN
F 1 "10k" H 6450 6850 40  0000 C CNN
F 2 "w_smd_resistors:r_cat16-4" H 6450 6900 60  0001 C CNN
F 3 "" H 6450 6900 60  0001 C CNN
	1    6450 6900
	0    -1   -1   0   
$EndComp
$Comp
L R_PACK4 RP3
U 1 1 523A3B2E
P 7250 1700
F 0 "RP3" H 7250 2150 40  0000 C CNN
F 1 "10k" H 7250 1650 40  0000 C CNN
F 2 "w_smd_resistors:r_cat16-4" H 7250 1700 60  0001 C CNN
F 3 "" H 7250 1700 60  0001 C CNN
	1    7250 1700
	0    -1   -1   0   
$EndComp
$Comp
L R_PACK4 RP2
U 1 1 523A3B27
P 6550 1700
F 0 "RP2" H 6550 2150 40  0000 C CNN
F 1 "10k" H 6550 1650 40  0000 C CNN
F 2 "w_smd_resistors:r_cat16-4" H 6550 1700 60  0001 C CNN
F 3 "" H 6550 1700 60  0001 C CNN
	1    6550 1700
	0    -1   -1   0   
$EndComp
Text Notes 750  650  0    60   ~ 0
Emergency Stop switch (Normally Closed type)\nuse jumper if not present\n\n
Text GLabel 7650 5100 2    60   Output ~ 0
FET4_BUF
Text GLabel 7650 4350 2    60   Output ~ 0
D10_BUF
$Comp
L GND-RESCUE-RAMPS-FD #PWR048
U 1 1 523A374A
P 3700 7600
F 0 "#PWR048" H 3700 7600 30  0001 C CNN
F 1 "GND" H 3700 7530 30  0001 C CNN
F 2 "" H 3700 7600 60  0001 C CNN
F 3 "" H 3700 7600 60  0001 C CNN
	1    3700 7600
	1    0    0    -1  
$EndComp
Text GLabel 3050 5100 0    60   Input ~ 0
D11-FET4
Text GLabel 3000 4350 0    60   Input ~ 0
D10
$Comp
L 74LS125 U1
U 1 1 523A36ED
P 4850 6450
F 0 "U1" H 4850 6550 50  0000 L BNN
F 1 "74ACT125" H 4900 6300 40  0000 L TNN
F 2 "w_smd_dil:SO-14" H 4850 6450 60  0001 C CNN
F 3 "" H 4850 6450 60  0001 C CNN
	1    4850 6450
	1    0    0    1   
$EndComp
$Comp
L 74LS125 U1
U 4 1 523A36EC
P 4900 5700
F 0 "U1" H 4900 5800 50  0000 L BNN
F 1 "74ACT125" H 4950 5550 40  0000 L TNN
F 2 "w_smd_dil:SO-14" H 4900 5700 60  0001 C CNN
F 3 "" H 4900 5700 60  0001 C CNN
	4    4900 5700
	1    0    0    1   
$EndComp
$Comp
L 74LS125 U1
U 3 1 523A36E7
P 4900 5100
F 0 "U1" H 4900 5200 50  0000 L BNN
F 1 "74ACT125" H 4950 4950 40  0000 L TNN
F 2 "w_smd_dil:SO-14" H 4900 5100 60  0001 C CNN
F 3 "" H 4900 5100 60  0001 C CNN
	3    4900 5100
	1    0    0    1   
$EndComp
$Comp
L 74LS125 U1
U 2 1 523A36E3
P 4900 4350
F 0 "U1" H 4900 4450 50  0000 L BNN
F 1 "74ACT125" H 4950 4200 40  0000 L TNN
F 2 "w_smd_dil:SO-14" H 4900 4350 60  0001 C CNN
F 3 "" H 4900 4350 60  0001 C CNN
	2    4900 4350
	1    0    0    1   
$EndComp
$Comp
L 74LS244 U2
U 1 1 523A33CC
P 5100 2800
F 0 "U2" H 5150 2600 60  0000 C CNN
F 1 "74ACT244" H 5200 2400 60  0000 C CNN
F 2 "w_smd_dil:soic-20" H 5100 2800 60  0001 C CNN
F 3 "" H 5100 2800 60  0001 C CNN
	1    5100 2800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR049
U 1 1 51E4F650
P 10650 900
F 0 "#PWR049" H 10650 1000 30  0001 C CNN
F 1 "VCC" H 10650 1000 30  0000 C CNN
F 2 "" H 10650 900 60  0001 C CNN
F 3 "" H 10650 900 60  0001 C CNN
	1    10650 900 
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-RAMPS-FD #PWR050
U 1 1 51E4F64F
P 10650 1700
F 0 "#PWR050" H 10650 1700 30  0001 C CNN
F 1 "GND" H 10650 1630 30  0001 C CNN
F 2 "" H 10650 1700 60  0001 C CNN
F 3 "" H 10650 1700 60  0001 C CNN
	1    10650 1700
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-RAMPS-FD C2
U 1 1 51E4F64E
P 10650 1300
F 0 "C2" H 10700 1400 50  0000 L CNN
F 1 "100n" H 10700 1200 50  0000 L CNN
F 2 "opendous:SM0805_Opendous" H 10650 1300 60  0001 C CNN
F 3 "" H 10650 1300 60  0001 C CNN
	1    10650 1300
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-RAMPS-FD C1
U 1 1 51E4F640
P 10100 1300
F 0 "C1" H 10150 1400 50  0000 L CNN
F 1 "100n" H 10150 1200 50  0000 L CNN
F 2 "opendous:SM0805_Opendous" H 10100 1300 60  0001 C CNN
F 3 "" H 10100 1300 60  0001 C CNN
	1    10100 1300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-RAMPS-FD #PWR051
U 1 1 51E4F630
P 10100 1700
F 0 "#PWR051" H 10100 1700 30  0001 C CNN
F 1 "GND" H 10100 1630 30  0001 C CNN
F 2 "" H 10100 1700 60  0001 C CNN
F 3 "" H 10100 1700 60  0001 C CNN
	1    10100 1700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR052
U 1 1 51E4F62B
P 10100 900
F 0 "#PWR052" H 10100 1000 30  0001 C CNN
F 1 "VCC" H 10100 1000 30  0000 C CNN
F 2 "" H 10100 900 60  0001 C CNN
F 3 "" H 10100 900 60  0001 C CNN
	1    10100 900 
	1    0    0    -1  
$EndComp
Text GLabel 7600 3000 2    60   Output ~ 0
D9_BUF
Text GLabel 7600 2900 2    60   Output ~ 0
D8_BUF
Text GLabel 3150 3000 0    60   Input ~ 0
D9
Text GLabel 3150 2900 0    60   Input ~ 0
D8
$Comp
L DIODE-RESCUE-RAMPS-FD D301
U 1 1 51B65AB0
P 1900 1600
AR Path="/51B65AB0" Ref="D301"  Part="1" 
AR Path="/5239FA54/51B65AB0" Ref="D301"  Part="1" 
F 0 "D301" H 1900 1700 40  0000 C CNN
F 1 "1N4148" H 1900 1500 40  0000 C CNN
F 2 "w_smd_diode:SOD323" H 1900 1600 60  0001 C CNN
F 3 "" H 1900 1600 60  0001 C CNN
	1    1900 1600
	1    0    0    1   
$EndComp
$Comp
L R-RESCUE-RAMPS-FD R305
U 1 1 51B4ECD2
P 1300 2050
F 0 "R305" V 1380 2050 50  0000 C CNN
F 1 "4k7" V 1300 2050 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" H 1300 2050 60  0001 C CNN
F 3 "" H 1300 2050 60  0001 C CNN
	1    1300 2050
	-1   0    0    -1  
$EndComp
$Comp
L +V_LOGIC #PWR053
U 1 1 51B4EC55
P 1550 1000
F 0 "#PWR053" H 1550 970 30  0001 C CNN
F 1 "+V_LOGIC" H 1550 1100 30  0000 C CNN
F 2 "" H 1550 1000 60  0001 C CNN
F 3 "" H 1550 1000 60  0001 C CNN
	1    1550 1000
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P302
U 1 1 51B4EBF7
P 800 1700
F 0 "P302" V 750 1700 40  0000 C CNN
F 1 "ESTOP" V 850 1700 40  0000 C CNN
F 2 "RMC:CONN_KK_2.54_2W" H 800 1700 60  0001 C CNN
F 3 "" H 800 1700 60  0001 C CNN
	1    800  1700
	-1   0    0    -1  
$EndComp
$Comp
L R-RESCUE-RAMPS-FD R304
U 1 1 51B4EBD5
P 1550 1250
F 0 "R304" V 1630 1250 50  0000 C CNN
F 1 "100k" V 1550 1250 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" H 1550 1250 60  0001 C CNN
F 3 "" H 1550 1250 60  0001 C CNN
	1    1550 1250
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-RAMPS-FD #PWR054
U 1 1 51B4EBC7
P 1300 2350
F 0 "#PWR054" H 1300 2350 30  0001 C CNN
F 1 "GND" H 1300 2280 30  0001 C CNN
F 2 "" H 1300 2350 60  0001 C CNN
F 3 "" H 1300 2350 60  0001 C CNN
	1    1300 2350
	-1   0    0    -1  
$EndComp
Text GLabel 7600 2300 2    60   Output ~ 0
/X_EN_BUF
Text GLabel 7600 2400 2    60   Output ~ 0
/Y_EN_BUF
Text GLabel 7600 2500 2    60   Output ~ 0
/Z_EN_BUF
Text GLabel 7600 2700 2    60   Output ~ 0
/E1_EN_BUF
Text GLabel 7600 2600 2    60   Output ~ 0
/E0_EN_BUF
Text GLabel 7600 2800 2    60   Output ~ 0
/E2_EN_BUF
Text GLabel 2300 1600 2    50   Output ~ 0
ESTOP
Text GLabel 3150 2800 0    60   Input ~ 0
E2_EN
Text GLabel 3150 2600 0    60   Input ~ 0
E0_EN
Text GLabel 3150 2700 0    60   Input ~ 0
E1_EN
Text GLabel 3100 2500 0    60   Input ~ 0
Z_EN
Text GLabel 3100 2400 0    60   Input ~ 0
Y_EN
Text GLabel 3100 2300 0    60   Input ~ 0
X_EN
Text Notes 1750 1900 0    50   ~ 0
Or any small signal diode
Text GLabel 3000 5700 0    50   Input ~ 0
D12-FET5
Text GLabel 2950 6450 0    50   Input ~ 0
D2-FET6
Text GLabel 7600 5700 2    50   Output ~ 0
FET5_BUF
Text GLabel 7600 6450 2    50   Output ~ 0
FET6_BUF
Text Notes 8700 2550 0    80   ~ 0
Active low
Text Notes 8750 4800 0    80   ~ 0
Active high
$Comp
L R-RESCUE-RAMPS-FD R401
U 1 1 52B0D0FC
P 3400 3650
F 0 "R401" V 3480 3650 50  0000 C CNN
F 1 "10k" V 3400 3650 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" H 3400 3650 60  0001 C CNN
F 3 "" H 3400 3650 60  0001 C CNN
	1    3400 3650
	-1   0    0    -1  
$EndComp
$Comp
L R-RESCUE-RAMPS-FD R402
U 1 1 52B0D109
P 3700 3650
F 0 "R402" V 3780 3650 50  0000 C CNN
F 1 "10k" V 3700 3650 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" H 3700 3650 60  0001 C CNN
F 3 "" H 3700 3650 60  0001 C CNN
	1    3700 3650
	-1   0    0    -1  
$EndComp
$Comp
L GND-RESCUE-RAMPS-FD #PWR055
U 1 1 52B0D127
P 3700 4150
F 0 "#PWR055" H 3700 4150 30  0001 C CNN
F 1 "GND" H 3700 4080 30  0001 C CNN
F 2 "" H 3700 4150 60  0001 C CNN
F 3 "" H 3700 4150 60  0001 C CNN
	1    3700 4150
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-RAMPS-FD #PWR056
U 1 1 52B224D5
P 7500 1550
F 0 "#PWR056" H 7500 1550 30  0001 C CNN
F 1 "GND" H 7500 1480 30  0001 C CNN
F 2 "" H 7500 1550 60  0001 C CNN
F 3 "" H 7500 1550 60  0001 C CNN
	1    7500 1550
	1    0    0    -1  
$EndComp
$Comp
L R_PACK4 RP401
U 1 1 52B22857
P 3850 6950
F 0 "RP401" H 3850 7400 40  0000 C CNN
F 1 "10k" H 3850 6900 40  0000 C CNN
F 2 "w_smd_resistors:r_cat16-4" H 3850 6950 60  0001 C CNN
F 3 "" H 3850 6950 60  0001 C CNN
	1    3850 6950
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-RAMPS-FD #PWR057
U 1 1 52B22A39
P 6300 7550
F 0 "#PWR057" H 6300 7550 30  0001 C CNN
F 1 "GND" H 6300 7480 30  0001 C CNN
F 2 "" H 6300 7550 60  0001 C CNN
F 3 "" H 6300 7550 60  0001 C CNN
	1    6300 7550
	1    0    0    -1  
$EndComp
Text Notes 10200 2200 0    60   ~ 0
VCC = 5V 
Text Notes 9500 2950 0    60   ~ 12
Must use ACT (or HCT) type buffers. \nInputs are compatible with \n3.3V or 5V logic
Wire Wire Line
	5350 5100 7650 5100
Connection ~ 7200 3000
Wire Wire Line
	5800 3000 7600 3000
Wire Wire Line
	7200 3000 7200 1900
Connection ~ 7000 2800
Wire Wire Line
	7000 1900 7000 2800
Connection ~ 6500 2600
Wire Wire Line
	6500 1900 6500 2600
Connection ~ 6300 2400
Wire Wire Line
	6300 1900 6300 2400
Wire Wire Line
	6200 1350 7000 1350
Connection ~ 6900 1350
Wire Wire Line
	7000 1350 7000 1500
Connection ~ 6400 1350
Wire Wire Line
	6500 1350 6500 1500
Connection ~ 6200 1350
Wire Wire Line
	6300 1500 6300 1350
Wire Wire Line
	3000 5700 4450 5700
Connection ~ 4150 5400
Wire Wire Line
	4150 6150 4850 6150
Wire Wire Line
	4150 3200 4150 6150
Connection ~ 4150 4050
Wire Wire Line
	4150 4800 4900 4800
Wire Wire Line
	4450 4350 3000 4350
Wire Wire Line
	1550 3300 4400 3300
Wire Wire Line
	3150 2900 4400 2900
Wire Wire Line
	10650 1700 10650 1500
Wire Wire Line
	10100 900  10100 1100
Wire Wire Line
	2100 1600 2300 1600
Wire Wire Line
	5800 2700 7600 2700
Wire Wire Line
	5800 2500 7600 2500
Wire Wire Line
	5800 2300 7600 2300
Wire Wire Line
	3150 2800 4400 2800
Wire Wire Line
	4400 2600 3150 2600
Wire Wire Line
	3100 2400 4400 2400
Wire Wire Line
	3100 2300 4400 2300
Wire Wire Line
	3100 2500 4400 2500
Wire Wire Line
	4400 2700 3150 2700
Wire Wire Line
	5800 2400 7600 2400
Wire Wire Line
	5800 2600 7600 2600
Wire Wire Line
	5800 2800 7600 2800
Wire Wire Line
	3150 3000 4400 3000
Wire Wire Line
	1300 2350 1300 2300
Wire Wire Line
	1150 1600 1700 1600
Wire Wire Line
	5800 2900 7600 2900
Wire Wire Line
	10100 1500 10100 1700
Wire Wire Line
	10650 1100 10650 900 
Wire Wire Line
	4150 3200 4400 3200
Wire Wire Line
	3050 5100 4450 5100
Wire Wire Line
	4150 4050 4900 4050
Connection ~ 4150 3300
Wire Wire Line
	4150 5400 4900 5400
Connection ~ 4150 4800
Wire Wire Line
	2950 6450 4400 6450
Wire Wire Line
	6200 1200 6200 1500
Wire Wire Line
	6400 1350 6400 1500
Connection ~ 6300 1350
Wire Wire Line
	6900 1350 6900 1500
Connection ~ 6500 1350
Connection ~ 7000 1350
Wire Wire Line
	6200 1900 6200 2300
Connection ~ 6200 2300
Wire Wire Line
	6400 1900 6400 2500
Connection ~ 6400 2500
Wire Wire Line
	6900 1900 6900 2700
Connection ~ 6900 2700
Wire Wire Line
	7100 1900 7100 2900
Connection ~ 7100 2900
Wire Wire Line
	5350 4350 7650 4350
Wire Wire Line
	1150 1800 1300 1800
Wire Wire Line
	1550 1500 1550 3300
Connection ~ 1550 1600
Wire Wire Line
	3700 7150 3700 7600
Wire Wire Line
	5300 6450 7600 6450
Wire Wire Line
	5350 5700 7600 5700
Wire Notes Line
	8400 2250 8600 2250
Wire Notes Line
	8600 2900 8600 6550
Wire Notes Line
	8600 6550 8400 6550
Wire Wire Line
	3700 3900 3700 4150
Wire Wire Line
	3400 3900 3400 4050
Wire Wire Line
	3400 4050 3700 4050
Connection ~ 3700 4050
Wire Notes Line
	8400 2800 8600 2800
Wire Notes Line
	8600 2800 8600 2250
Wire Notes Line
	8400 2900 8600 2900
Connection ~ 7200 1350
Wire Wire Line
	7100 1350 7100 1500
Wire Wire Line
	7200 1350 7200 1500
Connection ~ 7100 1350
Wire Wire Line
	7100 1350 7500 1350
Wire Wire Line
	7500 1350 7500 1550
Wire Wire Line
	6300 6700 6300 5100
Connection ~ 6300 5100
Wire Wire Line
	6400 6700 6400 4350
Connection ~ 6400 4350
Wire Wire Line
	3600 7150 3600 7300
Wire Wire Line
	3500 7300 3800 7300
Connection ~ 3700 7300
Wire Wire Line
	3500 7150 3500 7300
Connection ~ 3600 7300
Wire Wire Line
	3800 7300 3800 7150
Wire Wire Line
	3600 6750 3600 5100
Connection ~ 3600 5100
Wire Wire Line
	3500 6750 3500 4350
Connection ~ 3500 4350
Wire Wire Line
	6300 7100 6300 7550
Wire Wire Line
	6200 7100 6200 7250
Wire Wire Line
	6100 7250 6400 7250
Connection ~ 6300 7250
Wire Wire Line
	6100 7100 6100 7250
Connection ~ 6200 7250
Wire Wire Line
	6400 7250 6400 7100
Wire Wire Line
	3700 3400 3700 3000
Connection ~ 3700 3000
Wire Wire Line
	3400 3400 3400 2900
Connection ~ 3400 2900
Connection ~ 3700 5700
Connection ~ 3800 6450
Wire Wire Line
	3700 6750 3700 5700
Wire Wire Line
	3800 6450 3800 6750
Connection ~ 6200 5700
Connection ~ 6100 6450
Wire Wire Line
	6100 6700 6100 6450
Wire Wire Line
	6200 6700 6200 5700
$EndSCHEMATC
