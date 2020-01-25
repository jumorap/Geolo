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
LIBS:gmas
LIBS:mainboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
Title "OneGeo Controller Shield"
Date "2017-05-11"
Rev "v1"
Comp "Gmas+"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3200 4700 3200 5650
Wire Wire Line
	7400 3950 7400 3850
Wire Wire Line
	5800 5150 6300 5150
Wire Wire Line
	6300 4750 5800 4750
Wire Wire Line
	7550 5350 7200 5350
Wire Wire Line
	7550 4950 7200 4950
Wire Wire Line
	6750 6250 6750 6000
Wire Wire Line
	7550 4550 7200 4550
Wire Wire Line
	6750 4100 6750 3850
Wire Wire Line
	7200 4750 7550 4750
Wire Wire Line
	7200 5150 7550 5150
Wire Wire Line
	7200 5550 7550 5550
Wire Wire Line
	5800 4550 6300 4550
Wire Wire Line
	7400 3450 7400 3350
Wire Wire Line
	4250 4900 5800 4900
$Comp
L +V_LOGIC #PWR064
U 1 1 517866F1
P 6750 3850
F 0 "#PWR064" H 6750 3820 30  0001 C CNN
F 1 "+V_LOGIC" H 6750 3950 30  0000 C CNN
F 2 "" H 6750 3850 60  0001 C CNN
F 3 "" H 6750 3850 60  0001 C CNN
	1    6750 3850
	1    0    0    -1  
$EndComp
$Comp
L +V_LOGIC #PWR065
U 1 1 517866E5
P 7400 3350
F 0 "#PWR065" H 7400 3320 30  0001 C CNN
F 1 "+V_LOGIC" H 7400 3450 30  0000 C CNN
F 2 "" H 7400 3350 60  0001 C CNN
F 3 "" H 7400 3350 60  0001 C CNN
	1    7400 3350
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-mainboard #PWR066
U 1 1 510D87E0
P 7400 3950
F 0 "#PWR066" H 7400 3950 30  0001 C CNN
F 1 "GND" H 7400 3880 30  0001 C CNN
F 2 "" H 7400 3950 60  0001 C CNN
F 3 "" H 7400 3950 60  0001 C CNN
	1    7400 3950
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-mainboard C305
U 1 1 510D87AD
P 7400 3650
AR Path="/510D87AD" Ref="C305"  Part="1" 
AR Path="/50FC37D4/510D87AD" Ref="C305"  Part="1" 
F 0 "C305" H 7450 3750 50  0000 L CNN
F 1 "100n" H 7450 3550 50  0000 L CNN
F 2 "opendous:SM0805_Opendous" H 7400 3650 60  0001 C CNN
F 3 "" H 7400 3650 60  0001 C CNN
	1    7400 3650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR067
U 1 1 50FF1A76
P 3300 2950
F 0 "#PWR067" H 3300 3040 20  0001 C CNN
F 1 "+5V" H 3300 3040 30  0000 C CNN
F 2 "" H 3300 2950 60  0001 C CNN
F 3 "" H 3300 2950 60  0001 C CNN
	1    3300 2950
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-mainboard #PWR068
U 1 1 50FF1A09
P 6750 6250
F 0 "#PWR068" H 6750 6250 30  0001 C CNN
F 1 "GND" H 6750 6180 30  0001 C CNN
F 2 "" H 6750 6250 60  0001 C CNN
F 3 "" H 6750 6250 60  0001 C CNN
	1    6750 6250
	1    0    0    -1  
$EndComp
Text Notes 6100 2350 0    50   ~ 0
Endstop inputs are 5V tolerant
Text Notes 5550 1900 2    80   ~ 16
Endstops
Text GLabel 7550 4550 2    50   Output ~ 0
Z-MAX
Text GLabel 7550 4750 2    50   Output ~ 0
Z-MIN
Text GLabel 7550 5150 2    50   Output ~ 0
Y-MIN
Text GLabel 7550 4950 2    50   Output ~ 0
Y-MAX
Text GLabel 7550 5350 2    50   Output ~ 0
X-MAX
Text GLabel 7550 5550 2    50   Output ~ 0
X-MIN
$Comp
L GND-RESCUE-mainboard #PWR069
U 1 1 50FC388F
P 3200 5650
F 0 "#PWR069" H 3200 5650 30  0001 C CNN
F 1 "GND" H 3200 5580 30  0001 C CNN
F 2 "" H 3200 5650 60  0001 C CNN
F 3 "" H 3200 5650 60  0001 C CNN
	1    3200 5650
	1    0    0    -1  
$EndComp
$Comp
L 4050_RMC U801
U 1 1 5244B8CC
P 6950 4300
F 0 "U801" H 6950 2750 60  0000 C CNN
F 1 "4050_RMC" H 7100 2650 60  0000 C CNN
F 2 "w_smd_dil:so-16" H 6950 4300 60  0001 C CNN
F 3 "~" H 6950 4300 60  0000 C CNN
	1    6950 4300
	1    0    0    -1  
$EndComp
$Comp
L R_PACK4 RP801
U 1 1 524E0304
P 5050 3200
F 0 "RP801" H 5050 3650 40  0000 C CNN
F 1 "10k" H 5050 3150 40  0000 C CNN
F 2 "w_smd_resistors:r_cat16-4" H 5050 3200 60  0001 C CNN
F 3 "~" H 5050 3200 60  0000 C CNN
	1    5050 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 3000 4700 2800
Wire Wire Line
	4700 2800 5650 2800
Wire Wire Line
	5350 2800 5350 3000
Wire Wire Line
	5450 2800 5450 3000
Connection ~ 5350 2800
Wire Wire Line
	5000 3000 5000 2800
Connection ~ 5000 2800
Wire Wire Line
	4900 3000 4900 2800
Connection ~ 4900 2800
Wire Wire Line
	4800 3000 4800 2800
Connection ~ 4800 2800
$Comp
L R_PACK4 RP802
U 1 1 524E0589
P 5700 3200
F 0 "RP802" H 5700 3650 40  0000 C CNN
F 1 "10k" H 5700 3150 40  0000 C CNN
F 2 "w_smd_resistors:r_cat16-4" H 5700 3200 60  0001 C CNN
F 3 "~" H 5700 3200 60  0000 C CNN
	1    5700 3200
	0    -1   -1   0   
$EndComp
NoConn ~ 5650 3400
NoConn ~ 4700 3400
$Comp
L +5V #PWR070
U 1 1 524E05B1
P 4600 2250
F 0 "#PWR070" H 4600 2340 20  0001 C CNN
F 1 "+5V" H 4600 2340 30  0000 C CNN
F 2 "" H 4600 2250 60  0001 C CNN
F 3 "" H 4600 2250 60  0001 C CNN
	1    4600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2500 5150 2500
Wire Wire Line
	5150 2500 5150 2800
Connection ~ 5150 2800
Wire Wire Line
	4600 2250 4600 2500
Wire Wire Line
	5000 3400 5000 4700
Connection ~ 5000 4700
Wire Wire Line
	4900 3400 4900 4800
Connection ~ 4900 4800
Wire Wire Line
	4800 3400 4800 4900
Connection ~ 4800 4900
Wire Wire Line
	5550 2800 5550 3000
Connection ~ 5450 2800
Wire Wire Line
	5650 2800 5650 3000
Connection ~ 5550 2800
$Comp
L CONN_6X2 P802
U 1 1 52B20629
P 3850 4950
F 0 "P802" H 3850 5300 60  0000 C CNN
F 1 "CONN_6X2" V 3850 4950 60  0000 C CNN
F 2 "w_pin_strip:pin_strip_6x2" H 3850 4950 60  0001 C CNN
F 3 "" H 3850 4950 60  0000 C CNN
	1    3850 4950
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P801
U 1 1 52B20647
P 3850 3700
F 0 "P801" V 3800 3700 60  0000 C CNN
F 1 "CONN_6" V 3900 3700 60  0000 C CNN
F 2 "w_pin_strip:pin_strip_6" H 3850 3700 60  0001 C CNN
F 3 "" H 3850 3700 60  0000 C CNN
	1    3850 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5200 3200 5200
Wire Wire Line
	3200 5100 3450 5100
Connection ~ 3200 5200
Wire Wire Line
	3450 5000 3200 5000
Connection ~ 3200 5100
Wire Wire Line
	3450 4900 3200 4900
Connection ~ 3200 5000
Wire Wire Line
	3450 4800 3200 4800
Connection ~ 3200 4900
Wire Wire Line
	3450 4700 3200 4700
Connection ~ 3200 4800
Wire Wire Line
	4250 4800 5800 4800
Wire Wire Line
	5800 4800 5800 4750
Wire Wire Line
	4250 4700 5800 4700
Wire Wire Line
	5800 4700 5800 4550
Wire Wire Line
	5800 4900 5800 4950
Wire Wire Line
	5800 4950 6300 4950
Wire Wire Line
	5800 5000 5800 5150
Wire Wire Line
	4250 5000 5800 5000
Wire Wire Line
	4250 5100 5600 5100
Wire Wire Line
	5600 5100 5600 5350
Wire Wire Line
	5600 5350 6300 5350
Wire Wire Line
	6300 5550 5450 5550
Wire Wire Line
	5450 5550 5450 5200
Wire Wire Line
	5450 5200 4250 5200
Wire Wire Line
	5350 3400 5350 5200
Connection ~ 5350 5200
Wire Wire Line
	5450 3400 5450 5100
Connection ~ 5450 5100
Wire Wire Line
	5550 3400 5550 5000
Connection ~ 5550 5000
Wire Wire Line
	3500 3450 3300 3450
Wire Wire Line
	3300 2950 3300 3950
Wire Wire Line
	3300 3550 3500 3550
Connection ~ 3300 3450
Wire Wire Line
	3300 3650 3500 3650
Connection ~ 3300 3550
Wire Wire Line
	3300 3750 3500 3750
Connection ~ 3300 3650
Wire Wire Line
	3300 3850 3500 3850
Connection ~ 3300 3750
Wire Wire Line
	3300 3950 3500 3950
Connection ~ 3300 3850
Text Notes 6100 2600 0    60   ~ 12
JP801 should be used to enable pullups \nfor switch type endstops; \nremove for active types (e.g opto)
$EndSCHEMATC
