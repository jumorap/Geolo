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
Sheet 8 8
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
	8600 6550 8400 6550
$Comp
L DC-DC-DSUN DS0
U 1 1 58DC101F
P 1850 1500
F 0 "DS0" H 1850 1750 60  0000 C CNN
F 1 "DC-DC-DSUN" H 1850 1500 60  0000 C CNN
F 2 "gmas:D-SUN_DC-DC" H 1800 1250 60  0001 C CNN
F 3 "" H 1350 650 60  0001 C CNN
	1    1850 1500
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 58DC118C
P 2700 1500
F 0 "C3" H 2725 1600 50  0000 L CNN
F 1 "47u" H 2725 1400 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_5x5.3" H 2738 1350 50  0001 C CNN
F 3 "" H 2700 1500 50  0000 C CNN
	1    2700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1250 3050 1250
Wire Wire Line
	2700 1350 2700 1250
Connection ~ 2700 1250
Wire Wire Line
	2450 1750 3050 1750
Wire Wire Line
	2700 1650 2700 1750
Connection ~ 2700 1750
$Comp
L IXDI604 O1
U 1 1 58DCA0C2
P 5700 1600
F 0 "O1" H 5700 1200 60  0000 C CNN
F 1 "IXDI604" H 5700 1950 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5600 1550 60  0001 C CNN
F 3 "" H 5600 1550 60  0001 C CNN
	1    5700 1600
	1    0    0    -1  
$EndComp
Text GLabel 5200 1550 0    60   Input ~ 0
D37
Wire Wire Line
	6950 1650 6950 1400
Text GLabel 5200 1850 0    60   Input ~ 0
A1
Text GLabel 6200 1550 2    60   Input ~ 0
A1
$Comp
L IXDI604 O2
U 1 1 58DD607F
P 5750 3800
F 0 "O2" H 5750 3400 60  0000 C CNN
F 1 "IXDI604" H 5750 4150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5650 3750 60  0001 C CNN
F 3 "" H 5650 3750 60  0001 C CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
$Comp
L IRF4905 QM1
U 1 1 58DD629F
P 7150 3500
F 0 "QM1" H 7400 3575 50  0000 L CNN
F 1 "IRF9530" H 7400 3500 50  0000 L CNN
F 2 "RMC:TO220_V_RMC" H 7400 3425 50  0001 L CIN
F 3 "" H 7150 3500 50  0001 L CNN
	1    7150 3500
	1    0    0    1   
$EndComp
Text GLabel 5250 4050 0    60   Input ~ 0
PWM7
Text GLabel 1550 4900 0    60   Input ~ 0
PWM2
Text GLabel 6250 3750 2    60   Input ~ 0
O2A
Text GLabel 6250 4050 2    60   Input ~ 0
O2B
Text GLabel 6950 3500 0    60   Input ~ 0
O2A
$Comp
L 1N5819 Dm1
U 1 1 58DD7BA1
P 7250 4000
F 0 "Dm1" H 7250 4100 50  0000 C CNN
F 1 "1N5819" H 7250 3900 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" H 7250 3825 50  0001 C CNN
F 3 "" H 7250 4000 50  0001 C CNN
	1    7250 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 4150 7250 4350
Wire Wire Line
	7250 3700 7250 3850
$Comp
L CONN_2 FCNT1
U 1 1 58DD80E4
P 8100 4000
F 0 "FCNT1" V 8050 4000 40  0000 C CNN
F 1 "FAN-CAM" V 8150 4000 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 8100 4000 60  0001 C CNN
F 3 "" H 8100 4000 60  0000 C CNN
	1    8100 4000
	1    0    0    1   
$EndComp
Wire Wire Line
	7650 3900 7650 3800
Wire Wire Line
	7650 3800 6850 3800
Connection ~ 7250 3800
Wire Wire Line
	7650 4100 7650 4200
Wire Wire Line
	7650 4200 6850 4200
Connection ~ 7250 4200
$Comp
L C C100
U 1 1 58DD83E9
P 6850 4000
F 0 "C100" H 6875 4100 50  0000 L CNN
F 1 "220n" H 6875 3900 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 6888 3850 50  0001 C CNN
F 3 "" H 6850 4000 50  0001 C CNN
	1    6850 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3800 6850 3850
Wire Wire Line
	6850 4200 6850 4150
$Comp
L IRF4905 QM2
U 1 1 58DD8D81
P 8850 3500
F 0 "QM2" H 9100 3575 50  0000 L CNN
F 1 "IRF9530" H 9100 3500 50  0000 L CNN
F 2 "RMC:TO220_V_RMC" H 9100 3425 50  0001 L CIN
F 3 "" H 8850 3500 50  0001 L CNN
	1    8850 3500
	1    0    0    1   
$EndComp
Text GLabel 8650 3500 0    60   Input ~ 0
O2B
$Comp
L 1N5819 Dm2
U 1 1 58DD8D89
P 8950 4000
F 0 "Dm2" H 8950 4100 50  0000 C CNN
F 1 "1N5819" H 8950 3900 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" H 8950 3825 50  0001 C CNN
F 3 "" H 8950 4000 50  0001 C CNN
	1    8950 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 4150 8950 4350
Wire Wire Line
	8950 3700 8950 3850
$Comp
L CONN_2 FCNT2
U 1 1 58DD8D92
P 9800 4000
F 0 "FCNT2" V 9750 4000 40  0000 C CNN
F 1 "FAN-LGH" V 9850 4000 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 9800 4000 60  0001 C CNN
F 3 "" H 9800 4000 60  0000 C CNN
	1    9800 4000
	1    0    0    1   
$EndComp
Wire Wire Line
	9450 3900 9350 3900
Wire Wire Line
	9350 3900 9350 3800
Wire Wire Line
	9350 3800 8550 3800
Connection ~ 8950 3800
Wire Wire Line
	9450 4100 9350 4100
Wire Wire Line
	9350 4100 9350 4200
Wire Wire Line
	9350 4200 8550 4200
Connection ~ 8950 4200
$Comp
L C C200
U 1 1 58DD8DA0
P 8550 4000
F 0 "C200" H 8575 4100 50  0000 L CNN
F 1 "220n" H 8575 3900 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 8588 3850 50  0001 C CNN
F 3 "" H 8550 4000 50  0001 C CNN
	1    8550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3800 8550 3850
Wire Wire Line
	8550 4200 8550 4150
$Comp
L +V_LOGIC #PWR071
U 1 1 58DD9DF6
P 7250 6100
F 0 "#PWR071" H 7250 6070 30  0001 C CNN
F 1 "+V_LOGIC" H 7250 6200 30  0000 C CNN
F 2 "" H 7250 6100 60  0000 C CNN
F 3 "" H 7250 6100 60  0000 C CNN
	1    7250 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR072
U 1 1 58DD9E2E
P 7050 5550
F 0 "#PWR072" H 7050 5300 50  0001 C CNN
F 1 "GND" H 7050 5400 50  0000 C CNN
F 2 "" H 7050 5550 50  0001 C CNN
F 3 "" H 7050 5550 50  0001 C CNN
	1    7050 5550
	1    0    0    -1  
$EndComp
Text GLabel 7450 5650 0    60   Input ~ 0
D33
$Comp
L R RD25
U 1 1 58DDA1A9
P 7550 5900
F 0 "RD25" V 7450 5900 50  0000 C CNN
F 1 "2k" V 7550 5900 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" V 7480 5900 50  0001 C CNN
F 3 "" H 7550 5900 50  0000 C CNN
	1    7550 5900
	-1   0    0    -1  
$EndComp
$Comp
L +V_LOGIC #PWR073
U 1 1 58DDA515
P 8300 5400
F 0 "#PWR073" H 8300 5370 30  0001 C CNN
F 1 "+V_LOGIC" H 8300 5500 30  0000 C CNN
F 2 "" H 8300 5400 60  0000 C CNN
F 3 "" H 8300 5400 60  0000 C CNN
	1    8300 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR074
U 1 1 58DDA51B
P 8700 5550
F 0 "#PWR074" H 8700 5300 50  0001 C CNN
F 1 "GND" H 8700 5400 50  0000 C CNN
F 2 "" H 8700 5550 50  0001 C CNN
F 3 "" H 8700 5550 50  0001 C CNN
	1    8700 5550
	1    0    0    -1  
$EndComp
Text GLabel 8300 5650 2    60   Input ~ 0
D32
$Comp
L R RD23
U 1 1 58DDA522
P 8200 5900
F 0 "RD23" V 8100 5900 50  0000 C CNN
F 1 "2k" V 8200 5900 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" V 8130 5900 50  0001 C CNN
F 3 "" H 8200 5900 50  0000 C CNN
	1    8200 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 6100 8200 6050
$Comp
L A4990 MD0
U 1 1 58E2A0D8
P 2100 5000
F 0 "MD0" H 2100 4375 60  0000 C CNN
F 1 "A4990" H 2100 5675 60  0000 C CNN
F 2 "RMC:POLOLU" H 1975 5075 60  0001 C CNN
F 3 "" H 1975 5075 60  0001 C CNN
	1    2100 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR076
U 1 1 58E2A58C
P 1550 5500
F 0 "#PWR076" H 1550 5250 50  0001 C CNN
F 1 "GND" H 1550 5350 50  0000 C CNN
F 2 "" H 1550 5500 50  0001 C CNN
F 3 "" H 1550 5500 50  0001 C CNN
	1    1550 5500
	1    0    0    -1  
$EndComp
Text GLabel 1550 5050 0    60   Input ~ 0
PWM3
Text GLabel 1550 5200 0    60   Input ~ 0
PWM4
$Comp
L CONN_01X02 JM2
U 1 1 58E2B67C
P 2350 6150
F 0 "JM2" H 2350 6300 50  0000 C CNN
F 1 "CONN_01X02" H 2350 6000 50  0000 C CNN
F 2 "w_pin_strip:pin_strip_2" H 2350 6150 50  0001 C CNN
F 3 "" H 2350 6150 50  0001 C CNN
	1    2350 6150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 JM3
U 1 1 58E2B78D
P 2350 6750
F 0 "JM3" H 2350 6900 50  0000 C CNN
F 1 "CONN_01X02" H 2350 6600 50  0000 C CNN
F 2 "w_pin_strip:pin_strip_2" H 2350 6750 50  0001 C CNN
F 3 "" H 2350 6750 50  0001 C CNN
	1    2350 6750
	1    0    0    -1  
$EndComp
Text GLabel 1550 5350 0    60   Input ~ 0
PWM5
Text GLabel 5250 3750 0    60   Input ~ 0
PWM6
$Comp
L IRLZ44N QG1
U 1 1 58E524E3
P 6850 1850
F 0 "QG1" H 7100 1925 50  0000 L CNN
F 1 "IRLZ44N" H 7100 1850 50  0000 L CNN
F 2 "RMC:TO220_V_RMC" H 7100 1775 50  0001 L CIN
F 3 "" H 6850 1850 50  0001 L CNN
	1    6850 1850
	1    0    0    -1  
$EndComp
NoConn ~ 1550 4450
NoConn ~ 1550 4600
NoConn ~ 2700 5050
NoConn ~ 2700 5200
Text Notes 7500 5100 0    60   ~ 0
Sensores efecto hall
Text Notes 1850 4100 0    60   ~ 0
Driver motor DC
Wire Notes Line
	800  3950 800  5850
Wire Notes Line
	800  5850 3550 5850
Wire Notes Line
	3550 5850 3550 3950
Wire Notes Line
	3550 3950 800  3950
Text Notes 1750 950  0    60   ~ 0
Conversor DC-DC
Wire Notes Line
	800  700  800  3350
Wire Notes Line
	800  3350 3500 3350
Wire Notes Line
	3500 3350 3500 700 
Wire Notes Line
	3500 700  800  700 
Wire Notes Line
	4700 2450 4700 800 
Wire Notes Line
	4600 2750 4600 4750
Wire Notes Line
	4600 4750 10200 4750
Wire Notes Line
	10200 4750 10200 2750
Wire Notes Line
	10200 2750 4600 2750
Wire Wire Line
	2450 1350 2600 1350
Wire Wire Line
	2600 1350 2600 1250
Connection ~ 2600 1250
Wire Wire Line
	2450 1650 2600 1650
Wire Wire Line
	2600 1650 2600 1950
Connection ~ 2600 1750
Wire Wire Line
	950  1250 1250 1250
Wire Wire Line
	1200 1350 1250 1350
Wire Wire Line
	1200 1350 1200 1250
Connection ~ 1200 1250
Wire Wire Line
	1250 1650 1200 1650
Wire Wire Line
	1200 1650 1200 1950
Wire Wire Line
	1000 1750 1250 1750
Connection ~ 1200 1750
Text GLabel 2150 6100 0    60   Input ~ 0
DCM11
Text GLabel 2700 4450 2    60   Input ~ 0
DCM11
Text GLabel 2700 4600 2    60   Input ~ 0
DCM12
Text GLabel 2150 6200 0    60   Input ~ 0
DCM12
Text GLabel 2700 4750 2    60   Input ~ 0
DCM21
Text GLabel 2150 6700 0    60   Input ~ 0
DCM21
Text GLabel 2700 4900 2    60   Input ~ 0
DCM22
Text GLabel 2150 6800 0    60   Input ~ 0
DCM22
$Comp
L CONN_02X03 J11
U 1 1 58E6817D
P 7900 5550
F 0 "J11" H 7900 5750 50  0000 C CNN
F 1 "CONN_02X03" H 7900 5850 50  0000 C CNN
F 2 "w_pin_strip:pin_socket_3x2" H 7900 4350 50  0001 C CNN
F 3 "" H 7900 4350 50  0001 C CNN
	1    7900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5400 8300 5450
Wire Wire Line
	8300 5450 8150 5450
$Comp
L +V_LOGIC #PWR077
U 1 1 58E68454
P 7500 5400
F 0 "#PWR077" H 7500 5370 30  0001 C CNN
F 1 "+V_LOGIC" H 7500 5500 30  0000 C CNN
F 2 "" H 7500 5400 60  0000 C CNN
F 3 "" H 7500 5400 60  0000 C CNN
	1    7500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5400 7500 5450
Wire Wire Line
	7500 5450 7650 5450
Wire Wire Line
	7050 5550 7650 5550
Wire Wire Line
	8150 5550 8700 5550
Wire Wire Line
	8150 5650 8300 5650
$Comp
L +V_LOGIC #PWR078
U 1 1 58E68AA7
P 8450 6100
F 0 "#PWR078" H 8450 6070 30  0001 C CNN
F 1 "+V_LOGIC" H 8450 6200 30  0000 C CNN
F 2 "" H 8450 6100 60  0000 C CNN
F 3 "" H 8450 6100 60  0000 C CNN
	1    8450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 6100 8450 6100
Wire Wire Line
	7550 6050 7550 6100
Wire Wire Line
	7550 6100 7250 6100
Wire Wire Line
	7450 5650 7650 5650
Wire Wire Line
	7550 5750 7550 5650
Connection ~ 7550 5650
Wire Wire Line
	8200 5750 8200 5650
Connection ~ 8200 5650
$Comp
L +V_2 #PWR079
U 1 1 58EBF452
P 950 1250
F 0 "#PWR079" H 950 1220 30  0001 C CNN
F 1 "+V_2" H 950 1350 30  0000 C CNN
F 2 "" H 950 1250 60  0000 C CNN
F 3 "" H 950 1250 60  0000 C CNN
	1    950  1250
	1    0    0    -1  
$EndComp
$Comp
L +V_3 #PWR080
U 1 1 58EBF494
P 3050 1250
F 0 "#PWR080" H 3050 1220 30  0001 C CNN
F 1 "+V_3" H 3050 1350 30  0000 C CNN
F 2 "" H 3050 1250 60  0000 C CNN
F 3 "" H 3050 1250 60  0000 C CNN
	1    3050 1250
	1    0    0    -1  
$EndComp
$Comp
L GND_3 #PWR081
U 1 1 58EBF993
P 3050 1750
F 0 "#PWR081" H 3050 1850 40  0001 C CNN
F 1 "GND_3" H 3050 1575 40  0000 C CNN
F 2 "" H 3050 1750 60  0000 C CNN
F 3 "" H 3050 1750 60  0000 C CNN
	1    3050 1750
	1    0    0    -1  
$EndComp
$Comp
L GND_2 #PWR082
U 1 1 58EC016D
P 1000 1750
F 0 "#PWR082" H 1000 1850 40  0001 C CNN
F 1 "GND_2" H 1000 1575 40  0000 C CNN
F 2 "" H 1000 1750 60  0000 C CNN
F 3 "" H 1000 1750 60  0000 C CNN
	1    1000 1750
	1    0    0    -1  
$EndComp
$Comp
L GND_3 #PWR083
U 1 1 58EC17D2
P 4900 1700
F 0 "#PWR083" H 4900 1800 40  0001 C CNN
F 1 "GND_3" H 4900 1525 40  0000 C CNN
F 2 "" H 4900 1700 60  0000 C CNN
F 3 "" H 4900 1700 60  0000 C CNN
	1    4900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1700 4900 1700
$Comp
L +V_3 #PWR084
U 1 1 58EC18B0
P 6500 1700
F 0 "#PWR084" H 6500 1670 30  0001 C CNN
F 1 "+V_3" H 6500 1800 30  0000 C CNN
F 2 "" H 6500 1700 60  0000 C CNN
F 3 "" H 6500 1700 60  0000 C CNN
	1    6500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1700 6200 1700
$Comp
L GND_3 #PWR085
U 1 1 58EC19A6
P 6950 2050
F 0 "#PWR085" H 6950 2150 40  0001 C CNN
F 1 "GND_3" H 6950 1875 40  0000 C CNN
F 2 "" H 6950 2050 60  0000 C CNN
F 3 "" H 6950 2050 60  0000 C CNN
	1    6950 2050
	1    0    0    -1  
$EndComp
$Comp
L +V_3 #PWR086
U 1 1 58EC1A3D
P 7650 1500
F 0 "#PWR086" H 7650 1470 30  0001 C CNN
F 1 "+V_3" H 7650 1600 30  0000 C CNN
F 2 "" H 7650 1500 60  0000 C CNN
F 3 "" H 7650 1500 60  0000 C CNN
	1    7650 1500
	1    0    0    -1  
$EndComp
$Comp
L GND_3 #PWR087
U 1 1 58EC24FB
P 4750 3900
F 0 "#PWR087" H 4750 4000 40  0001 C CNN
F 1 "GND_3" H 4750 3725 40  0000 C CNN
F 2 "" H 4750 3900 60  0000 C CNN
F 3 "" H 4750 3900 60  0000 C CNN
	1    4750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3900 5250 3900
$Comp
L +V_3 #PWR088
U 1 1 58EC26D2
P 6600 3900
F 0 "#PWR088" H 6600 3870 30  0001 C CNN
F 1 "+V_3" H 6600 4000 30  0000 C CNN
F 2 "" H 6600 3900 60  0000 C CNN
F 3 "" H 6600 3900 60  0000 C CNN
	1    6600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3900 6250 3900
$Comp
L +V_3 #PWR089
U 1 1 58EC27B3
P 7250 3300
F 0 "#PWR089" H 7250 3270 30  0001 C CNN
F 1 "+V_3" H 7250 3400 30  0000 C CNN
F 2 "" H 7250 3300 60  0000 C CNN
F 3 "" H 7250 3300 60  0000 C CNN
	1    7250 3300
	1    0    0    -1  
$EndComp
$Comp
L +V_3 #PWR090
U 1 1 58EC281C
P 8950 3300
F 0 "#PWR090" H 8950 3270 30  0001 C CNN
F 1 "+V_3" H 8950 3400 30  0000 C CNN
F 2 "" H 8950 3300 60  0000 C CNN
F 3 "" H 8950 3300 60  0000 C CNN
	1    8950 3300
	1    0    0    -1  
$EndComp
$Comp
L GND_3 #PWR091
U 1 1 58EC2901
P 7250 4350
F 0 "#PWR091" H 7250 4450 40  0001 C CNN
F 1 "GND_3" H 7250 4175 40  0000 C CNN
F 2 "" H 7250 4350 60  0000 C CNN
F 3 "" H 7250 4350 60  0000 C CNN
	1    7250 4350
	1    0    0    -1  
$EndComp
$Comp
L GND_3 #PWR092
U 1 1 58EC2951
P 8950 4350
F 0 "#PWR092" H 8950 4450 40  0001 C CNN
F 1 "GND_3" H 8950 4175 40  0000 C CNN
F 2 "" H 8950 4350 60  0000 C CNN
F 3 "" H 8950 4350 60  0000 C CNN
	1    8950 4350
	1    0    0    -1  
$EndComp
$Comp
L +V_3 #PWR093
U 1 1 58EC3245
P 3000 5350
F 0 "#PWR093" H 3000 5320 30  0001 C CNN
F 1 "+V_3" H 3000 5450 30  0000 C CNN
F 2 "" H 3000 5350 60  0000 C CNN
F 3 "" H 3000 5350 60  0000 C CNN
	1    3000 5350
	1    0    0    -1  
$EndComp
$Comp
L GND_3 #PWR094
U 1 1 58EC3295
P 3000 5500
F 0 "#PWR094" H 3000 5600 40  0001 C CNN
F 1 "GND_3" H 3000 5325 40  0000 C CNN
F 2 "" H 3000 5500 60  0000 C CNN
F 3 "" H 3000 5500 60  0000 C CNN
	1    3000 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5350 2700 5350
Wire Wire Line
	2700 5500 3000 5500
Text Notes 6750 3000 0    60   ~ 0
Drivers ventiladores\n
Text Notes 6000 900  0    60   ~ 0
Driver Q1
$Comp
L IXDI604 OR2
U 1 1 597295F6
P 8800 1650
F 0 "OR2" H 8800 1250 60  0000 C CNN
F 1 "IXDI604" H 8800 2000 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 8700 1600 60  0001 C CNN
F 3 "" H 8700 1600 60  0001 C CNN
	1    8800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1350 9950 1700
Text GLabel 8300 1900 0    60   Input ~ 0
A2
Text GLabel 9300 1600 2    60   Input ~ 0
A2
$Comp
L IRLZ44N QG2
U 1 1 59729601
P 9850 1900
F 0 "QG2" H 10100 1975 50  0000 L CNN
F 1 "IRLZ44N" H 10100 1900 50  0000 L CNN
F 2 "RMC:TO220_V_RMC" H 10100 1825 50  0001 L CIN
F 3 "" H 9850 1900 50  0001 L CNN
	1    9850 1900
	1    0    0    -1  
$EndComp
$Comp
L GND_3 #PWR095
U 1 1 59729607
P 8000 1750
F 0 "#PWR095" H 8000 1850 40  0001 C CNN
F 1 "GND_3" H 8000 1575 40  0000 C CNN
F 2 "" H 8000 1750 60  0000 C CNN
F 3 "" H 8000 1750 60  0000 C CNN
	1    8000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1750 8000 1750
$Comp
L +V_3 #PWR096
U 1 1 5972960E
P 9600 1750
F 0 "#PWR096" H 9600 1720 30  0001 C CNN
F 1 "+V_3" H 9600 1850 30  0000 C CNN
F 2 "" H 9600 1750 60  0000 C CNN
F 3 "" H 9600 1750 60  0000 C CNN
	1    9600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1750 9300 1750
$Comp
L GND_3 #PWR097
U 1 1 59729615
P 9950 2100
F 0 "#PWR097" H 9950 2200 40  0001 C CNN
F 1 "GND_3" H 9950 1925 40  0000 C CNN
F 2 "" H 9950 2100 60  0000 C CNN
F 3 "" H 9950 2100 60  0000 C CNN
	1    9950 2100
	1    0    0    -1  
$EndComp
Text Notes 8900 900  0    60   ~ 0
Driver Luz Reflejada
Wire Wire Line
	9650 1900 9300 1900
Wire Wire Line
	6200 1850 6650 1850
Text GLabel 8300 1600 0    60   Input ~ 0
D23
Wire Wire Line
	1200 1950 2600 1950
$Comp
L GND #PWR098
U 1 1 597A6BA1
P 1200 1950
F 0 "#PWR098" H 1200 1700 50  0001 C CNN
F 1 "GND" H 1200 1800 50  0000 C CNN
F 2 "" H 1200 1950 50  0001 C CNN
F 3 "" H 1200 1950 50  0001 C CNN
	1    1200 1950
	1    0    0    -1  
$EndComp
$Comp
L C C400
U 1 1 597BDD68
P 7650 1650
F 0 "C400" H 7675 1750 50  0000 L CNN
F 1 "220n" H 7675 1550 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 7688 1500 50  0001 C CNN
F 3 "" H 7650 1650 50  0001 C CNN
	1    7650 1650
	1    0    0    -1  
$EndComp
$Comp
L GND_3 #PWR099
U 1 1 597BE312
P 7650 1800
F 0 "#PWR099" H 7650 1900 40  0001 C CNN
F 1 "GND_3" H 7650 1625 40  0000 C CNN
F 2 "" H 7650 1800 60  0000 C CNN
F 3 "" H 7650 1800 60  0000 C CNN
	1    7650 1800
	1    0    0    -1  
$EndComp
$Comp
L +V_3 #PWR0100
U 1 1 597BF278
P 10650 1700
F 0 "#PWR0100" H 10650 1670 30  0001 C CNN
F 1 "+V_3" H 10650 1800 30  0000 C CNN
F 2 "" H 10650 1700 60  0000 C CNN
F 3 "" H 10650 1700 60  0000 C CNN
	1    10650 1700
	1    0    0    -1  
$EndComp
$Comp
L C C500
U 1 1 597BF27E
P 10650 1850
F 0 "C500" H 10675 1950 50  0000 L CNN
F 1 "220n" H 10675 1750 50  0000 L CNN
F 2 "w_smd_cap:c_0805" H 10688 1700 50  0001 C CNN
F 3 "" H 10650 1850 50  0001 C CNN
	1    10650 1850
	1    0    0    -1  
$EndComp
$Comp
L GND_3 #PWR0101
U 1 1 597BF284
P 10650 2000
F 0 "#PWR0101" H 10650 2100 40  0001 C CNN
F 1 "GND_3" H 10650 1825 40  0000 C CNN
F 2 "" H 10650 2000 60  0000 C CNN
F 3 "" H 10650 2000 60  0000 C CNN
	1    10650 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 MSF2
U 1 1 597C0F22
P 10300 1250
F 0 "MSF2" V 10250 1250 40  0000 C CNN
F 1 "R. LIGHT" V 10350 1250 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 10300 1250 60  0001 C CNN
F 3 "" H 10300 1250 60  0000 C CNN
	1    10300 1250
	1    0    0    1   
$EndComp
NoConn ~ 9950 1150
$Comp
L CONN_2 MSF1
U 1 1 58DD4A16
P 7300 1300
F 0 "MSF1" V 7250 1300 40  0000 C CNN
F 1 "T. LIGHT" V 7350 1300 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 7300 1300 60  0001 C CNN
F 3 "" H 7300 1300 60  0000 C CNN
	1    7300 1300
	1    0    0    1   
$EndComp
Wire Wire Line
	7750 3900 7650 3900
Wire Wire Line
	7750 4100 7650 4100
$Comp
L CONN_2 LD1
U 1 1 59AD935D
P 5950 2350
F 0 "LD1" V 5900 2350 40  0000 C CNN
F 1 "L.DRV" V 6000 2350 40  0000 C CNN
F 2 "w_conn_screw:mors_2p" H 5950 2350 60  0001 C CNN
F 3 "" H 5950 2350 60  0000 C CNN
	1    5950 2350
	1    0    0    1   
$EndComp
$Comp
L GND_3 #PWR0102
U 1 1 59AD93E6
P 5600 2450
F 0 "#PWR0102" H 5600 2550 40  0001 C CNN
F 1 "GND_3" H 5600 2275 40  0000 C CNN
F 2 "" H 5600 2450 60  0000 C CNN
F 3 "" H 5600 2450 60  0000 C CNN
	1    5600 2450
	1    0    0    -1  
$EndComp
Text GLabel 6950 1200 0    60   Input ~ 0
LDRIV
Text GLabel 5600 2250 0    60   Input ~ 0
LDRIV
$Comp
L +V_LOGIC #PWR0103
U 1 1 59B2C3E7
P 4650 6100
F 0 "#PWR0103" H 4650 6070 30  0001 C CNN
F 1 "+V_LOGIC" H 4650 6200 30  0000 C CNN
F 2 "" H 4650 6100 60  0000 C CNN
F 3 "" H 4650 6100 60  0000 C CNN
	1    4650 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0104
U 1 1 59B2C3ED
P 4450 5550
F 0 "#PWR0104" H 4450 5300 50  0001 C CNN
F 1 "GND" H 4450 5400 50  0000 C CNN
F 2 "" H 4450 5550 50  0001 C CNN
F 3 "" H 4450 5550 50  0001 C CNN
	1    4450 5550
	1    0    0    -1  
$EndComp
Text GLabel 4850 5650 0    60   Input ~ 0
D47
$Comp
L R RD24
U 1 1 59B2C3F4
P 4950 5900
F 0 "RD24" V 4850 5900 50  0000 C CNN
F 1 "2k" V 4950 5900 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" V 4880 5900 50  0001 C CNN
F 3 "" H 4950 5900 50  0000 C CNN
	1    4950 5900
	-1   0    0    -1  
$EndComp
$Comp
L +V_LOGIC #PWR0105
U 1 1 59B2C3FA
P 5700 5400
F 0 "#PWR0105" H 5700 5370 30  0001 C CNN
F 1 "+V_LOGIC" H 5700 5500 30  0000 C CNN
F 2 "" H 5700 5400 60  0000 C CNN
F 3 "" H 5700 5400 60  0000 C CNN
	1    5700 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0106
U 1 1 59B2C400
P 6100 5550
F 0 "#PWR0106" H 6100 5300 50  0001 C CNN
F 1 "GND" H 6100 5400 50  0000 C CNN
F 2 "" H 6100 5550 50  0001 C CNN
F 3 "" H 6100 5550 50  0001 C CNN
	1    6100 5550
	1    0    0    -1  
$EndComp
Text GLabel 5700 5650 2    60   Input ~ 0
D35
$Comp
L R RD26
U 1 1 59B2C407
P 5600 5900
F 0 "RD26" V 5500 5900 50  0000 C CNN
F 1 "2k" V 5600 5900 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" V 5530 5900 50  0001 C CNN
F 3 "" H 5600 5900 50  0000 C CNN
	1    5600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6100 5600 6050
Text Notes 4900 5100 0    60   ~ 0
Sensores efecto hall
$Comp
L CONN_02X03 J22
U 1 1 59B2C40F
P 5300 5550
F 0 "J22" H 5300 5750 50  0000 C CNN
F 1 "CONN_02X03" H 5300 5850 50  0000 C CNN
F 2 "w_pin_strip:pin_socket_3x2" H 5300 4350 50  0001 C CNN
F 3 "" H 5300 4350 50  0001 C CNN
	1    5300 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5400 5700 5450
Wire Wire Line
	5700 5450 5550 5450
$Comp
L +V_LOGIC #PWR0107
U 1 1 59B2C417
P 4900 5400
F 0 "#PWR0107" H 4900 5370 30  0001 C CNN
F 1 "+V_LOGIC" H 4900 5500 30  0000 C CNN
F 2 "" H 4900 5400 60  0000 C CNN
F 3 "" H 4900 5400 60  0000 C CNN
	1    4900 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5400 4900 5450
Wire Wire Line
	4900 5450 5050 5450
Wire Wire Line
	4450 5550 5050 5550
Wire Wire Line
	5550 5550 6100 5550
Wire Wire Line
	5550 5650 5700 5650
$Comp
L +V_LOGIC #PWR0108
U 1 1 59B2C422
P 5850 6100
F 0 "#PWR0108" H 5850 6070 30  0001 C CNN
F 1 "+V_LOGIC" H 5850 6200 30  0000 C CNN
F 2 "" H 5850 6100 60  0000 C CNN
F 3 "" H 5850 6100 60  0000 C CNN
	1    5850 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6100 5850 6100
Wire Wire Line
	4950 6050 4950 6100
Wire Wire Line
	4950 6100 4650 6100
Wire Wire Line
	4850 5650 5050 5650
Wire Wire Line
	4950 5750 4950 5650
Connection ~ 4950 5650
Wire Wire Line
	5600 5750 5600 5650
Connection ~ 5600 5650
Text GLabel 1550 4750 0    60   Input ~ 0
DCMEN
$EndSCHEMATC
