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
Sheet 2 8
Title "OneGeo Controller Shield"
Date "2017-05-11"
Rev "v1"
Comp "Gmas+"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	8950 2350 2900 2350
Wire Wire Line
	3250 5650 3250 5450
Connection ~ 7500 3500
Wire Wire Line
	8000 3500 8000 3600
Wire Wire Line
	5250 3500 8000 3500
Wire Wire Line
	5100 2050 9050 2050
Wire Wire Line
	9050 2050 9050 2150
Wire Wire Line
	8300 2050 8300 2150
Connection ~ 7950 2850
Wire Wire Line
	6000 2850 7950 2850
Wire Notes Line
	4600 2950 3800 2950
Wire Notes Line
	4600 1950 3750 1950
Wire Wire Line
	5700 1850 5100 1850
Wire Wire Line
	6850 1650 6850 1850
Wire Wire Line
	6450 2850 6450 2900
Wire Wire Line
	7500 3500 7500 3350
Connection ~ 6950 2850
Wire Wire Line
	7500 2850 7500 2950
Connection ~ 6450 2850
Wire Wire Line
	5250 3500 5250 3050
Wire Wire Line
	6100 7300 6300 7300
Wire Wire Line
	5700 2850 5100 2850
Wire Wire Line
	5250 3050 5100 3050
Connection ~ 6450 3500
Wire Wire Line
	6450 3400 6450 3500
Wire Wire Line
	6950 2850 6950 2950
Wire Wire Line
	6950 3500 6950 3350
Connection ~ 6950 3500
Connection ~ 7500 2850
Wire Wire Line
	7750 2650 7750 2850
Connection ~ 6850 1850
Wire Wire Line
	6000 1850 7000 1850
Connection ~ 7750 2850
Connection ~ 8300 2050
Wire Wire Line
	1300 5650 3850 5650
Wire Notes Line
	8950 1450 2900 1450
Text Notes 7600 4200 0    50   ~ 0
JP102 - VSEL - Select voltage\n1-2 = POWER_IN = 24 V (or > 15V)\n2-3 = POWER_IN = 12 V (or < 15V)
Text Notes 9000 5050 0    60   ~ 0
Low power MOSFETS (fans etc)\nalso input to Due/Mega\nand gate voltage
Text Notes 5250 4700 0    60   ~ 0
Aux Power output
$Comp
L VCC #PWR09
U 1 1 51B4F503
P 3250 5450
F 0 "#PWR09" H 3250 5550 30  0001 C CNN
F 1 "VCC" H 3250 5550 30  0000 C CNN
F 2 "" H 3250 5450 60  0001 C CNN
F 3 "" H 3250 5450 60  0001 C CNN
	1    3250 5450
	1    0    0    -1  
$EndComp
Text Notes 1250 5900 0    50   ~ 0
VSEL - Select logic voltage\n1-2 = Autoselect by IOREF\n2-3 = 5V
$Comp
L GND-RESCUE-mainboard #PWR010
U 1 1 51AE537B
P 9050 2150
F 0 "#PWR010" H 9050 2150 30  0001 C CNN
F 1 "GND" H 9050 2080 30  0001 C CNN
F 2 "" H 9050 2150 60  0001 C CNN
F 3 "" H 9050 2150 60  0001 C CNN
	1    9050 2150
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR011
U 1 1 51AE535E
P 8300 2150
F 0 "#PWR011" H 8300 2200 40  0001 C CNN
F 1 "GNDPWR" H 8300 2070 40  0000 C CNN
F 2 "" H 8300 2150 60  0001 C CNN
F 3 "" H 8300 2150 60  0001 C CNN
	1    8300 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P108
U 1 1 51AA108A
P 4750 2950
F 0 "P108" V 4700 2950 40  0000 C CNN
F 1 "POWER_IN" V 4800 2950 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 4750 2950 60  0001 C CNN
F 3 "" H 4750 2950 60  0001 C CNN
	1    4750 2950
	-1   0    0    1   
$EndComp
Text Label 5200 1850 0    50   ~ 0
MOT_IN
$Comp
L GNDPWR #PWR012
U 1 1 51A9FFA1
P 8000 3600
F 0 "#PWR012" H 8000 3650 40  0001 C CNN
F 1 "GNDPWR" H 8000 3520 40  0000 C CNN
F 2 "" H 8000 3600 60  0001 C CNN
F 3 "" H 8000 3600 60  0001 C CNN
	1    8000 3600
	1    0    0    -1  
$EndComp
Text GLabel 6450 2050 0    50   UnSpc ~ 0
MOT_GND
Text Notes 650  4500 0    50   ~ 0
Note: On R3 compatible Arduinos, IOREF \nwill supply 3.3V (Due), or 5V (Mega).\n\nIf IOREF is not provided (non-R3) then it \nmust be a 5V Arduino so set VSEL to 5V.
Text GLabel 6100 7300 0    50   Input ~ 0
PS-ON
Text Notes 2250 2850 0    60   ~ 0
Medium power MOSFETS \n(extruder heaters, fans)
Text Notes 2700 2000 0    60   ~ 0
Motors only,  12-24V
Text Label 5200 2850 0    60   ~ 0
P_IN
$Comp
L FUSE F103
U 1 1 5176EAAB
P 5850 1850
AR Path="/5176EAAB" Ref="F103"  Part="1" 
AR Path="/5239FE5C/5176EAAB" Ref="F103"  Part="1" 
F 0 "F103" H 5750 1800 40  0000 C CNN
F 1 "FUSE 10A" H 5800 2000 40  0000 C CNN
F 2 "gmas:Fuse_Holder_bayoneta" H 5850 1850 60  0001 C CNN
F 3 "" H 5850 1850 60  0001 C CNN
	1    5850 1850
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG013
U 1 1 5176EA8B
P 7000 1850
F 0 "#FLG013" H 7000 1945 30  0001 C CNN
F 1 "PWR_FLAG" H 7000 2030 30  0000 C CNN
F 2 "" H 7000 1850 60  0001 C CNN
F 3 "" H 7000 1850 60  0001 C CNN
	1    7000 1850
	1    0    0    -1  
$EndComp
$Comp
L +V_MOTOR #PWR014
U 1 1 5176EA85
P 6850 1650
F 0 "#PWR014" H 6850 1620 30  0001 C CNN
F 1 "+V_MOTOR" H 6850 1750 30  0000 C CNN
F 2 "" H 6850 1650 60  0001 C CNN
F 3 "" H 6850 1650 60  0001 C CNN
	1    6850 1650
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P107
U 1 1 5176E748
P 4750 1950
F 0 "P107" V 4700 1950 40  0000 C CNN
F 1 "MOT_IN" V 4800 1950 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 4750 1950 60  0001 C CNN
F 3 "" H 4750 1950 60  0001 C CNN
	1    4750 1950
	-1   0    0    1   
$EndComp
$Comp
L CONN_1 P103
U 1 1 50FC3104
P 6450 7300
F 0 "P103" H 6530 7300 40  0000 L CNN
F 1 "PS-ON" H 6450 7355 30  0000 C CNN
F 2 "w_pin_strip:pin_strip_1" H 6450 7300 60  0001 C CNN
F 3 "" H 6450 7300 60  0001 C CNN
	1    6450 7300
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P105
U 1 1 50FC30EF
P 4700 5300
F 0 "P105" V 4650 5300 40  0000 C CNN
F 1 "V3-AUX" V 4750 5300 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 4700 5300 60  0001 C CNN
F 3 "" H 4700 5300 60  0001 C CNN
	1    4700 5300
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG015
U 1 1 50FC2F70
P 7950 2850
F 0 "#FLG015" H 7950 2945 30  0001 C CNN
F 1 "PWR_FLAG" H 7950 3030 30  0000 C CNN
F 2 "" H 7950 2850 60  0001 C CNN
F 3 "" H 7950 2850 60  0001 C CNN
	1    7950 2850
	1    0    0    -1  
$EndComp
Text Notes 5650 750  0    100  ~ 20
Power
$Comp
L C-RESCUE-mainboard C102
U 1 1 50FC27BF
P 7500 3150
AR Path="/50FC27BF" Ref="C102"  Part="1" 
AR Path="/5239FE5C/50FC27BF" Ref="C102"  Part="1" 
F 0 "C102" H 7550 3250 50  0000 L CNN
F 1 "100n 35V" H 7550 3050 50  0000 L CNN
F 2 "opendous:SM0805_Opendous" H 7500 3150 60  0001 C CNN
F 3 "" H 7500 3150 60  0001 C CNN
	1    7500 3150
	1    0    0    -1  
$EndComp
$Comp
L CP1-RESCUE-mainboard C101
U 1 1 50FC27BA
P 6950 3150
F 0 "C101" H 7000 3250 50  0000 L CNN
F 1 "100u 35V" H 7000 3050 50  0000 L CNN
F 2 "w_smd_cap:c_elec_6.3x7.7" H 6950 3150 60  0001 C CNN
F 3 "" H 6950 3150 60  0001 C CNN
	1    6950 3150
	1    0    0    -1  
$EndComp
$Comp
L FUSE F102
U 1 1 50FC26C8
P 5850 2850
AR Path="/50FC26C8" Ref="F102"  Part="1" 
AR Path="/5239FE5C/50FC26C8" Ref="F102"  Part="1" 
F 0 "F102" H 5750 2750 40  0000 C CNN
F 1 "FUSE 10A" H 5800 2950 40  0000 C CNN
F 2 "gmas:Fuse_Holder_bayoneta" H 5850 2850 60  0001 C CNN
F 3 "" H 5850 2850 60  0001 C CNN
	1    5850 2850
	1    0    0    -1  
$EndComp
Text Notes 8450 6150 0    50   ~ 0
JP1: Supply 12V to Arduino in standalone operation\nRemove if Arduino is powered by USB or other supply
Text Notes 9700 2300 0    60   ~ 0
Note: use thick traces for all\nhigh power connections
Wire Notes Line
	9300 3700 9650 3700
Wire Notes Line
	9650 3700 9650 750 
Wire Notes Line
	9650 750  9350 750 
Wire Notes Line
	9650 2450 11100 2450
Wire Notes Line
	11100 2450 11100 2100
Wire Notes Line
	11100 2100 9650 2100
Text Notes 2250 3200 0    60   ~ 0
12V or 24V input \n(ensure to set JP102 correctly!)
Wire Notes Line
	8500 5900 8500 6000
Wire Notes Line
	8400 6100 8400 6000
Wire Notes Line
	8400 6000 10600 6000
Wire Notes Line
	10600 6000 10600 6150
Wire Notes Line
	1750 5550 1750 5800
Wire Notes Line
	1200 5800 2450 5800
Wire Notes Line
	1200 5800 1200 5950
Wire Notes Line
	2450 5800 2450 5950
Wire Notes Line
	7050 4500 7450 4500
Wire Notes Line
	7450 4500 7450 4300
Wire Notes Line
	7450 4300 7550 4300
Wire Notes Line
	7550 4100 7550 4400
Wire Notes Line
	7750 4300 7900 4300
Wire Notes Line
	7550 4400 7700 4400
Wire Notes Line
	3700 1850 3750 1850
Wire Notes Line
	3750 1850 3750 2050
Wire Notes Line
	3750 2050 3700 2050
Wire Notes Line
	3700 2700 3800 2700
Wire Notes Line
	3800 2700 3800 3350
Wire Notes Line
	3800 3350 3700 3350
Wire Wire Line
	3500 5650 3500 5450
$Comp
L +5V #PWR016
U 1 1 52C43373
P 3500 5450
F 0 "#PWR016" H 3500 5540 20  0001 C CNN
F 1 "+5V" H 3500 5540 30  0000 C CNN
F 2 "" H 3500 5450 60  0001 C CNN
F 3 "" H 3500 5450 60  0001 C CNN
	1    3500 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7050 3300 7050
$Comp
L PWR_FLAG #FLG017
U 1 1 52C433EA
P 3850 5550
F 0 "#FLG017" H 3850 5645 30  0001 C CNN
F 1 "PWR_FLAG" H 3850 5730 30  0000 C CNN
F 2 "" H 3850 5550 60  0001 C CNN
F 3 "" H 3850 5550 60  0001 C CNN
	1    3850 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5650 3850 5550
Text GLabel 3300 7050 2    50   Output ~ 0
FD_5V
Connection ~ 3250 5650
Connection ~ 3500 5650
Text GLabel 1300 5650 0    50   Input ~ 0
FD_5V
$Comp
L CONN_2 P219
U 1 1 52C45876
P 1100 7150
F 0 "P219" V 1050 7150 40  0000 C CNN
F 1 "EXT_5V" V 1150 7150 40  0000 C CNN
F 2 "RMC:CONN_KK_2.54_2W" H 1100 7150 60  0001 C CNN
F 3 "" H 1100 7150 60  0001 C CNN
	1    1100 7150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1650 7250 1650 7350
$Comp
L GND-RESCUE-mainboard #PWR018
U 1 1 52C458DB
P 1650 7350
F 0 "#PWR018" H 1650 7350 30  0001 C CNN
F 1 "GND" H 1650 7280 30  0001 C CNN
F 2 "" H 1650 7350 60  0001 C CNN
F 3 "" H 1650 7350 60  0001 C CNN
	1    1650 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 7250 1450 7250
Text Notes 5950 6850 0    60   ~ 0
ATX Power On
$Comp
L DIODE_DUAL_ANODE D102
U 1 1 52D040BC
P 6500 3200
F 0 "D102" H 6500 2900 60  0000 C CNN
F 1 "SS10Pxx" V 6900 3050 60  0000 C CNN
F 2 "RMC:TO277A_RMC" H 6500 3200 60  0001 C CNN
F 3 "" H 6500 3200 60  0000 C CNN
F 4 "If = 10 A" V 7000 3150 60  0000 C CNN "Note"
	1    6500 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 3350 6350 3400
Wire Wire Line
	6350 3400 6550 3400
Wire Wire Line
	6550 3400 6550 3350
Connection ~ 6450 3400
Text Notes 6050 3850 0    60   ~ 0
or equiv V10P
$Comp
L +V_2 #PWR019
U 1 1 59A864F9
P 7750 2650
F 0 "#PWR019" H 7750 2620 30  0001 C CNN
F 1 "+V_2" H 7750 2750 30  0000 C CNN
F 2 "" H 7750 2650 60  0000 C CNN
F 3 "" H 7750 2650 60  0000 C CNN
	1    7750 2650
	1    0    0    -1  
$EndComp
$Comp
L +V_3 #PWR020
U 1 1 59A86A3F
P 5300 5150
F 0 "#PWR020" H 5300 5120 30  0001 C CNN
F 1 "+V_3" H 5300 5250 30  0000 C CNN
F 2 "" H 5300 5150 60  0000 C CNN
F 3 "" H 5300 5150 60  0000 C CNN
	1    5300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5400 5200 5850
Wire Wire Line
	5200 5400 5050 5400
$Comp
L GNDPWR #PWR021
U 1 1 59A888C3
P 5200 5850
F 0 "#PWR021" H 5200 5900 40  0001 C CNN
F 1 "GNDPWR" H 5200 5770 40  0000 C CNN
F 2 "" H 5200 5850 60  0001 C CNN
F 3 "" H 5200 5850 60  0001 C CNN
	1    5200 5850
	1    0    0    -1  
$EndComp
Text Notes 6000 6200 0    60   ~ 0
or equiv V10P
$Comp
L PWR_FLAG #FLG022
U 1 1 59A888CA
P 5150 5150
F 0 "#FLG022" H 5150 5245 30  0001 C CNN
F 1 "PWR_FLAG" H 5150 5330 30  0000 C CNN
F 2 "" H 5150 5150 60  0001 C CNN
F 3 "" H 5150 5150 60  0001 C CNN
	1    5150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5150 5300 5200
Wire Wire Line
	5300 5200 5050 5200
Wire Wire Line
	5150 5150 5150 5200
Connection ~ 5150 5200
$Comp
L Jumper JPPI1
U 1 1 59B0732A
P 5900 2500
F 0 "JPPI1" H 5900 2650 50  0000 C CNN
F 1 "POWER-IN" H 5900 2420 50  0000 C CNN
F 2 "w_pin_strip:pin_socket_2" H 5900 2500 50  0001 C CNN
F 3 "" H 5900 2500 50  0001 C CNN
	1    5900 2500
	1    0    0    -1  
$EndComp
$Comp
L Jumper JPMT1
U 1 1 59B07431
P 5850 1500
F 0 "JPMT1" H 5850 1650 50  0000 C CNN
F 1 "MOT-IN" H 5850 1420 50  0000 C CNN
F 2 "w_pin_strip:pin_socket_2" H 5850 1500 50  0001 C CNN
F 3 "" H 5850 1500 50  0001 C CNN
	1    5850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1500 5550 1850
Connection ~ 5550 1850
Wire Wire Line
	6150 1500 6200 1500
Wire Wire Line
	6200 1500 6200 1850
Connection ~ 6200 1850
Wire Wire Line
	5600 2500 5600 2850
Connection ~ 5600 2850
Wire Wire Line
	6200 2500 6200 2850
Connection ~ 6200 2850
$EndSCHEMATC
