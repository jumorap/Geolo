const int pin = 39; //D39 due enable
const int oe = 40;  //D40 due //ESTOP
const int stepPin = 43; //D43
const int dirPin = 41; //D41
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
