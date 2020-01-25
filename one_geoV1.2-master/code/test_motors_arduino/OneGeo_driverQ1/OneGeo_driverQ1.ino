
//autor Anderson--->arduino due test driver IXD1604
const int d37 = 37;

void setup() {
  pinMode(d37,OUTPUT);

}

void loop() {
  //pwm digital de periodo 1s con 20% ciclo util
  digitalWrite(d37,HIGH);
  delay(200);
  digitalWrite(d37,LOW);
  delay(800);

}
