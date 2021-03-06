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
Sheet 6 8
Title "OneGeo Controller Shield"
Date "2017-05-11"
Rev "v1"
Comp "Gmas+"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 9400 2150 2    50   Input ~ 0
AD15
Text GLabel 8100 2150 0    50   Input ~ 0
AD14
$Comp
L CONN_4 P2
U 1 1 523B6020
P 5800 4550
F 0 "P2" V 5750 4550 50  0000 C CNN
F 1 "I2C-1" V 5850 4550 50  0000 C CNN
F 2 "w_pin_strip:pin_strip_4" H 5800 4550 60  0001 C CNN
F 3 "" H 5800 4550 60  0001 C CNN
	1    5800 4550
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-mainboard R2
U 1 1 523B601F
P 4800 4200
F 0 "R2" V 4880 4200 50  0000 C CNN
F 1 "1.5k" V 4800 4200 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" H 4800 4200 60  0001 C CNN
F 3 "" H 4800 4200 60  0001 C CNN
	1    4800 4200
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-mainboard R1
U 1 1 523B601E
P 4450 4200
F 0 "R1" V 4530 4200 50  0000 C CNN
F 1 "1.5k" V 4450 4200 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" H 4450 4200 60  0001 C CNN
F 3 "" H 4450 4200 60  0001 C CNN
	1    4450 4200
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-mainboard #PWR050
U 1 1 523B601D
P 5250 4800
F 0 "#PWR050" H 5250 4800 30  0001 C CNN
F 1 "GND" H 5250 4730 30  0001 C CNN
F 2 "" H 5250 4800 60  0001 C CNN
F 3 "" H 5250 4800 60  0001 C CNN
	1    5250 4800
	1    0    0    -1  
$EndComp
Text GLabel 4250 4600 0    60   Input ~ 0
SDA1
Text GLabel 4250 4700 0    60   Input ~ 0
SCL1
$Comp
L +V_LOGIC #PWR051
U 1 1 523B601C
P 4450 3800
F 0 "#PWR051" H 4450 3770 30  0001 C CNN
F 1 "+V_LOGIC" H 4450 3900 30  0000 C CNN
F 2 "" H 4450 3800 60  0001 C CNN
F 3 "" H 4450 3800 60  0001 C CNN
	1    4450 3800
	1    0    0    -1  
$EndComp
Text GLabel 1850 3100 0    50   Output ~ 0
UART1_RX_LV
Text GLabel 1850 3200 0    50   Input ~ 0
UART1_TX_LV
$Comp
L CONN_6 P1
U 1 1 523B5AB8
P 2800 3050
F 0 "P1" V 2750 3050 60  0000 C CNN
F 1 "SERIAL1" V 2850 3050 60  0000 C CNN
F 2 "w_pin_strip:pin_strip_6" H 2800 3050 60  0001 C CNN
F 3 "" H 2800 3050 60  0001 C CNN
	1    2800 3050
	1    0    0    -1  
$EndComp
NoConn ~ 2450 2900
NoConn ~ 2450 3000
NoConn ~ 2450 3300
Text Notes 2100 1300 0    60   ~ 0
Serial
NoConn ~ 2450 2050
NoConn ~ 2450 1750
NoConn ~ 2450 1650
$Comp
L CONN_6 P216
U 1 1 51F17B03
P 2800 1800
F 0 "P216" V 2750 1800 60  0000 C CNN
F 1 "SERIAL0" V 2850 1800 60  0000 C CNN
F 2 "w_pin_strip:pin_strip_6" H 2800 1800 60  0001 C CNN
F 3 "" H 2800 1800 60  0001 C CNN
	1    2800 1800
	1    0    0    -1  
$EndComp
Text Notes 550  1950 0    50   ~ 0
UART-TTL
Text GLabel 8100 2050 0    50   Input ~ 0
A6
Text GLabel 9400 2050 2    50   Input ~ 0
A7
Text GLabel 9400 1950 2    50   Input ~ 0
A5
Text GLabel 8100 1950 0    50   Input ~ 0
A4
$Comp
L +V_LOGIC #PWR052
U 1 1 517867DD
P 7950 1750
F 0 "#PWR052" H 7950 1720 30  0001 C CNN
F 1 "+V_LOGIC" H 7950 1850 30  0000 C CNN
F 2 "" H 7950 1750 60  0001 C CNN
F 3 "" H 7950 1750 60  0001 C CNN
	1    7950 1750
	1    0    0    -1  
$EndComp
$Comp
L +V_LOGIC #PWR053
U 1 1 517867D0
P 8250 6400
F 0 "#PWR053" H 8250 6370 30  0001 C CNN
F 1 "+V_LOGIC" H 8250 6500 30  0000 C CNN
F 2 "" H 8250 6400 60  0001 C CNN
F 3 "" H 8250 6400 60  0001 C CNN
	1    8250 6400
	1    0    0    -1  
$EndComp
$Comp
L +V_LOGIC #PWR054
U 1 1 517867C6
P 4450 1600
F 0 "#PWR054" H 4450 1570 30  0001 C CNN
F 1 "+V_LOGIC" H 4450 1700 30  0000 C CNN
F 2 "" H 4450 1600 60  0001 C CNN
F 3 "" H 4450 1600 60  0001 C CNN
	1    4450 1600
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-mainboard #PWR055
U 1 1 51084B2C
P 9100 6350
F 0 "#PWR055" H 9100 6350 30  0001 C CNN
F 1 "GND" H 9100 6280 30  0001 C CNN
F 2 "" H 9100 6350 60  0001 C CNN
F 3 "" H 9100 6350 60  0001 C CNN
	1    9100 6350
	1    0    0    -1  
$EndComp
Text GLabel 8950 6100 0    50   BiDi ~ 0
D47
Text GLabel 8950 6000 0    50   BiDi ~ 0
D45
Text GLabel 8950 5900 0    50   BiDi ~ 0
D43
Text GLabel 8950 5800 0    50   BiDi ~ 0
D41
Text GLabel 8950 5700 0    50   BiDi ~ 0
D39
Text GLabel 8950 5600 0    50   BiDi ~ 0
D37
Text GLabel 8950 5500 0    50   BiDi ~ 0
D35
Text GLabel 8950 5400 0    50   BiDi ~ 0
D33
Text GLabel 8950 5300 0    50   BiDi ~ 0
D31
Text GLabel 8950 5200 0    50   BiDi ~ 0
D29
Text GLabel 8950 5100 0    50   BiDi ~ 0
D27
Text GLabel 8950 5000 0    50   BiDi ~ 0
D25
Text GLabel 8950 4900 0    50   BiDi ~ 0
D23
$Comp
L CONN_18 P213
U 1 1 51084A74
P 9700 5500
F 0 "P213" V 9650 5500 60  0000 C CNN
F 1 "AUX-4" V 9750 5500 60  0000 C CNN
F 2 "w_pin_strip:pin_strip_18" H 9700 5500 60  0001 C CNN
F 3 "" H 9700 5500 60  0001 C CNN
	1    9700 5500
	1    0    0    1   
$EndComp
Text Notes 2200 7450 2    50   ~ 0
Need buffered outputs?
Text Notes 4000 3200 0    50   ~ 0
Must not have external pullups to 5V if IOREF = 3.3V
$Comp
L GND-RESCUE-mainboard #PWR056
U 1 1 51048839
P 10000 1900
F 0 "#PWR056" H 10000 1900 30  0001 C CNN
F 1 "GND" H 10000 1830 30  0001 C CNN
F 2 "" H 10000 1900 60  0001 C CNN
F 3 "" H 10000 1900 60  0001 C CNN
	1    10000 1900
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-mainboard #PWR057
U 1 1 5104861F
P 1950 1650
F 0 "#PWR057" H 1950 1650 30  0001 C CNN
F 1 "GND" H 1950 1580 30  0001 C CNN
F 2 "" H 1950 1650 60  0001 C CNN
F 3 "" H 1950 1650 60  0001 C CNN
	1    1950 1650
	1    0    0    -1  
$EndComp
Text GLabel 1850 1950 0    50   Input ~ 0
UART0_TX_LV
Text GLabel 1850 1850 0    50   Output ~ 0
UART0_RX_LV
Text Notes 4200 3050 0    60   ~ 0
1k5 Pull ups on Due
Text Notes 8700 4550 0    60   ~ 0
Aux4 - general IO
Text Notes 8600 2850 0    60   ~ 0
Aux3 - SPI
Text Notes 8750 1500 0    60   ~ 0
Aux2
Text Notes 8400 1200 0    60   ~ 0
Aux connectors
Text Notes 1350 7300 0    60   ~ 0
Servos
$Comp
L CONN_5X2 P214
U 1 1 510481EC
P 8850 2050
F 0 "P214" H 8850 2350 60  0000 C CNN
F 1 "AUX-2" V 8850 2050 50  0000 C CNN
F 2 "w_pin_strip:pin_strip_5x2" H 8850 2050 60  0001 C CNN
F 3 "" H 8850 2050 60  0001 C CNN
	1    8850 2050
	1    0    0    -1  
$EndComp
Text Notes 4850 1250 0    60   ~ 0
I2C
Text GLabel 4250 2500 0    60   Input ~ 0
SCL
Text GLabel 4250 2400 0    60   Input ~ 0
SDA
$Comp
L GND-RESCUE-mainboard #PWR058
U 1 1 51047413
P 5250 2600
F 0 "#PWR058" H 5250 2600 30  0001 C CNN
F 1 "GND" H 5250 2530 30  0001 C CNN
F 2 "" H 5250 2600 60  0001 C CNN
F 3 "" H 5250 2600 60  0001 C CNN
	1    5250 2600
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-mainboard R211
U 1 1 510473D0
P 4450 2000
F 0 "R211" V 4530 2000 50  0000 C CNN
F 1 "1.5k" V 4450 2000 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" H 4450 2000 60  0001 C CNN
F 3 "" H 4450 2000 60  0001 C CNN
	1    4450 2000
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-mainboard R212
U 1 1 510473CD
P 4800 2000
F 0 "R212" V 4880 2000 50  0000 C CNN
F 1 "1.5k" V 4800 2000 50  0000 C CNN
F 2 "opendous:SM0805_Opendous" H 4800 2600 60  0001 C CNN
F 3 "" H 4800 2000 60  0001 C CNN
	1    4800 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P211
U 1 1 51047175
P 5800 2350
F 0 "P211" V 5750 2350 50  0000 C CNN
F 1 "I2C-0" V 5850 2350 50  0000 C CNN
F 2 "w_pin_strip:pin_strip_4" H 5800 2350 60  0001 C CNN
F 3 "" H 5800 2350 60  0001 C CNN
	1    5800 2350
	1    0    0    -1  
$EndComp
Text Notes 4100 900  0    79   ~ 16
NB: On Arduino Due: IOs on this page are not 5V tolerant. Do not exceed 3.3V.
Text Notes 550  1600 0    50   ~ 0
Note: this serial port is shared with\nUSB programming port
Text GLabel 8950 4800 0    50   Output ~ 0
UART2_RX_LV
Text GLabel 8950 4700 0    50   Input ~ 0
UART2_TX_LV
Text GLabel 8100 2250 0    50   Input ~ 0
UART3_TX_LV
Text GLabel 9400 2250 2    50   Input ~ 0
UART3_RX_LV
Text Notes 7200 5950 0    50   ~ 0
These are shared with E1 \nand E2 stepper signals
Text Notes 8500 4050 0    50   ~ 0
Mega: same signals as \nMISO, MOSI & SCK
Text GLabel 8950 6200 0    50   BiDi ~ 0
D49
Text Notes 6650 3200 0    60   ~ 12
NB This pin is always 5V
Text Notes 7450 5100 0    60   ~ 0
These are free \nfor LCD panel etc
Text Notes 10100 3150 0    60   ~ 0
Note: Some addon boards \nconnect this pin to GND.
$Comp
L 24C512 U601
U 1 1 52B23647
P 4400 6250
F 0 "U601" H 4550 6600 60  0000 C CNN
F 1 "24C512" H 4600 5900 60  0000 C CNN
F 2 "w_smd_dil:so-8" H 4400 6250 60  0001 C CNN
F 3 "" H 4400 6250 60  0000 C CNN
	1    4400 6250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-mainboard #PWR059
U 1 1 52B23654
P 4400 6900
F 0 "#PWR059" H 4400 6900 30  0001 C CNN
F 1 "GND" H 4400 6830 30  0001 C CNN
F 2 "" H 4400 6900 60  0001 C CNN
F 3 "" H 4400 6900 60  0001 C CNN
	1    4400 6900
	1    0    0    -1  
$EndComp
$Comp
L +V_LOGIC #PWR060
U 1 1 52B2384C
P 4400 5600
F 0 "#PWR060" H 4400 5570 30  0001 C CNN
F 1 "+V_LOGIC" H 4400 5700 30  0000 C CNN
F 2 "" H 4400 5600 60  0001 C CNN
F 3 "" H 4400 5600 60  0001 C CNN
	1    4400 5600
	1    0    0    -1  
$EndComp
Text GLabel 5400 6350 2    50   Input ~ 0
SCL
Text GLabel 5400 6450 2    50   Input ~ 0
SDA
Text Notes 4200 7350 0    60   ~ 0
EEPROM
$Comp
L C-RESCUE-mainboard C601
U 1 1 52B22339
P 6050 6250
AR Path="/52B22339" Ref="C601"  Part="1" 
AR Path="/5176EFAC/52B22339" Ref="C601"  Part="1" 
F 0 "C601" H 6050 6350 40  0000 L CNN
F 1 "100n" H 6056 6165 40  0000 L CNN
F 2 "opendous:SM0805_Opendous" H 6088 6100 30  0001 C CNN
F 3 "~" H 6050 6250 60  0000 C CNN
	1    6050 6250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-mainboard #PWR061
U 1 1 52B22346
P 6050 6600
F 0 "#PWR061" H 6050 6600 30  0001 C CNN
F 1 "GND" H 6050 6530 30  0001 C CNN
F 2 "" H 6050 6600 60  0001 C CNN
F 3 "" H 6050 6600 60  0001 C CNN
	1    6050 6600
	1    0    0    -1  
$EndComp
$Comp
L +V_LOGIC #PWR062
U 1 1 52B2234D
P 6050 5900
F 0 "#PWR062" H 6050 5870 30  0001 C CNN
F 1 "+V_LOGIC" H 6050 6000 30  0000 C CNN
F 2 "" H 6050 5900 60  0001 C CNN
F 3 "" H 6050 5900 60  0001 C CNN
	1    6050 5900
	1    0    0    -1  
$EndComp
Text Notes 2900 5800 0    60   Italic 0
Might want to \nallow other addresses
Text Notes 8050 6250 0    60   ~ 0
SENSORES\nHALL
Wire Wire Line
	8950 6200 9350 6200
Wire Wire Line
	8950 6000 9350 6000
Wire Wire Line
	8950 5800 9350 5800
Wire Wire Line
	8950 5600 9350 5600
Wire Wire Line
	8950 5400 9350 5400
Wire Wire Line
	8950 5200 9350 5200
Wire Wire Line
	8950 5000 9350 5000
Wire Wire Line
	8950 4800 9350 4800
Wire Wire Line
	9100 6350 9100 6300
Wire Wire Line
	9100 6300 9350 6300
Wire Wire Line
	9400 2150 9250 2150
Wire Wire Line
	9400 1950 9250 1950
Wire Wire Line
	8450 2150 8100 2150
Wire Wire Line
	8100 1950 8450 1950
Wire Wire Line
	9250 1850 10000 1850
Wire Wire Line
	2450 1850 1850 1850
Connection ~ 4800 2400
Wire Wire Line
	4800 2250 4800 2400
Connection ~ 4450 2500
Wire Wire Line
	4450 2250 4450 2500
Wire Wire Line
	4250 2400 5450 2400
Connection ~ 4800 1650
Wire Wire Line
	4800 1750 4800 1650
Wire Wire Line
	4450 1650 5250 1650
Wire Wire Line
	5250 1650 5250 2200
Wire Wire Line
	5250 2200 5450 2200
Wire Wire Line
	4450 1600 4450 1750
Connection ~ 4450 1650
Wire Wire Line
	5450 2300 5250 2300
Wire Wire Line
	5250 2300 5250 2600
Wire Wire Line
	4250 2500 5450 2500
Wire Wire Line
	1950 1550 2450 1550
Wire Wire Line
	1850 1950 2450 1950
Wire Wire Line
	7950 1750 7950 1850
Wire Wire Line
	7950 1850 8450 1850
Wire Wire Line
	10000 1850 10000 1900
Wire Wire Line
	8100 2050 8450 2050
Wire Wire Line
	8100 2250 8450 2250
Wire Wire Line
	9250 2050 9400 2050
Wire Wire Line
	9250 2250 9400 2250
Wire Wire Line
	8950 4700 9350 4700
Wire Wire Line
	9350 4900 8950 4900
Wire Wire Line
	9350 5100 8950 5100
Wire Wire Line
	9350 5300 8950 5300
Wire Wire Line
	9350 5500 8950 5500
Wire Wire Line
	9350 5700 8950 5700
Wire Wire Line
	9350 5900 8950 5900
Wire Wire Line
	9350 6100 8950 6100
Wire Wire Line
	8250 6400 9350 6400
Wire Wire Line
	1850 3200 2450 3200
Wire Wire Line
	2450 2800 1950 2800
Wire Wire Line
	2450 3100 1850 3100
Wire Wire Line
	4250 4700 5450 4700
Wire Wire Line
	5250 4800 5250 4500
Wire Wire Line
	5250 4500 5450 4500
Connection ~ 4450 3850
Wire Wire Line
	4450 3800 4450 3950
Wire Wire Line
	5450 4400 5250 4400
Wire Wire Line
	5250 4400 5250 3850
Wire Wire Line
	5250 3850 4450 3850
Wire Wire Line
	4800 3950 4800 3850
Connection ~ 4800 3850
Wire Wire Line
	4250 4600 5450 4600
Wire Wire Line
	4450 4450 4450 4700
Connection ~ 4450 4700
Wire Wire Line
	4800 4450 4800 4600
Connection ~ 4800 4600
Wire Notes Line
	9450 5550 8100 5550
Wire Notes Line
	8350 4700 8300 4700
Wire Notes Line
	7800 3600 7750 3600
Wire Notes Line
	7750 3600 7750 4050
Wire Notes Line
	7800 3700 7750 3700
Wire Notes Line
	7750 4050 8450 4050
Wire Notes Line
	10000 3600 10050 3600
Wire Notes Line
	10050 3600 10050 4050
Wire Notes Line
	10050 4050 9450 4050
Wire Notes Line
	10050 3250 10450 3250
Wire Wire Line
	4400 6750 4400 6900
Wire Wire Line
	3650 6250 3700 6250
Wire Wire Line
	3650 6050 3650 6800
Wire Wire Line
	3650 6800 5200 6800
Connection ~ 4400 6800
Wire Wire Line
	3650 6150 3700 6150
Connection ~ 3650 6250
Wire Wire Line
	3700 6050 3650 6050
Connection ~ 3650 6150
Wire Wire Line
	4400 5750 4400 5600
Wire Wire Line
	5100 6150 5200 6150
Wire Wire Line
	5200 6150 5200 6800
Wire Wire Line
	5100 6450 5400 6450
Wire Wire Line
	5100 6350 5400 6350
Wire Wire Line
	6050 6450 6050 6600
Wire Wire Line
	6050 6050 6050 5900
Wire Notes Line
	8700 6100 8650 6100
Wire Notes Line
	8650 6100 8650 6200
Wire Notes Line
	8650 6200 8700 6200
Wire Notes Line
	8700 6000 8550 6000
Wire Notes Line
	8550 6000 8550 5700
Wire Notes Line
	8550 5700 8700 5700
Wire Notes Line
	8300 4700 8300 5500
Wire Notes Line
	8300 5500 8350 5500
Text Notes 7750 5650 0    60   ~ 0
Control QG1
Wire Notes Line
	8300 5600 8700 5600
Wire Wire Line
	1950 1550 1950 1650
$Comp
L GND-RESCUE-mainboard #PWR063
U 1 1 58F85D34
P 1950 2900
F 0 "#PWR063" H 1950 2900 30  0001 C CNN
F 1 "GND" H 1950 2830 30  0001 C CNN
F 2 "" H 1950 2900 60  0001 C CNN
F 3 "" H 1950 2900 60  0001 C CNN
	1    1950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2800 1950 2900
Wire Notes Line
	8700 5200 8600 5200
Wire Notes Line
	8600 5200 8600 5400
Wire Notes Line
	8600 5400 8700 5400
Text Notes 8350 5300 0    60   ~ 0
camera
Text Notes 8450 5150 0    60   ~ 0
Luz R
$EndSCHEMATC
