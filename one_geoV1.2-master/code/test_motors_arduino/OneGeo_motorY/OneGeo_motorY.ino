const int pin = 46; //D46 due enable
const int oe = 40;  //D40 due //ESTOP
const int stepPin = 65; //A11
const int dirPin = 64; //A8
//int customDelay, customDelayMapped;
int customDelayMapped = 250;

void setup(){
  pinMode(pin, OUTPUT);
  pinMode(oe, OUTPUT);
  pinMode(stepPin, OUTPUT);
  pinMode(dirPin, OUTPUT);
  //pinMode(LED_BUILTIN, OUTPUT);
  
  
  }

  void loop(){
  digitalWrite(dirPin, LOW);
  //digitalWrite(LED_BUILTIN, LOW);
  digitalWrite(oe, LOW);
  digitalWrite(pin, LOW);
//  customDelayMapped = speedUp();
  digitalWrite(stepPin, HIGH);
      delayMicroseconds(customDelayMapped);
      digitalWrite(stepPin, LOW);
      delayMicroseconds(customDelayMapped);
  }
