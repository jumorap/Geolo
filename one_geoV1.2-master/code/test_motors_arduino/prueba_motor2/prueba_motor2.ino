    /*     Simple Stepper Motor Control Exaple Code
     *      
     *  by Dejan Nedelkovski, www.HowToMechatronics.com
     *  
     */
     
    // Defines pins numbers
    const int stepPin = 62; //A9
    const int dirPin = 63;  //A8
    const int enb = 48;     //D48
    int customDelay,customDelayMapped; // Defines variables
     
    void setup() {
      // Sets the two pins as Outputs
      pinMode(enb, OUTPUT);
      pinMode(stepPin,OUTPUT);
      pinMode(dirPin,OUTPUT);
      pinMode(LED_BUILTIN, OUTPUT);
     
      digitalWrite(dirPin,HIGH); //Enables the motor to move in a particular direction
    }
    void loop() {
      digitalWrite(LED_BUILTIN, LOW);
      digitalWrite(enb, LOW);
      customDelayMapped = speedUp(); // Gets custom delay values from the custom speedUp function
      // Makes pules with custom delay, depending on the Potentiometer, from which the speed of the motor depends
      digitalWrite(stepPin, HIGH);
      delayMicroseconds(customDelayMapped);
      digitalWrite(stepPin, LOW);
      delayMicroseconds(customDelayMapped);
    }
    // Function for reading the Potentiometer
    int speedUp() {
      int customDelay = analogRead(A0); // Reads the potentiometer
      int newCustom = map(customDelay, 0, 1023, 300,4000); // Convrests the read values of the potentiometer from 0 to 1023 into desireded delay values (300 to 4000)
      return newCustom;  
    }
