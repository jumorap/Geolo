
const int d37=37;

void setup() {
 pinMode(d37,OUTPUT);

}

void loop() {
//pwm digital con un periodo de 1ms y 40% de ciclo util
//frecuencia a 1kHz
//operada a 1 .18,18ms

digitalWrite(d37,HIGH);
delay(1);
digitalWrite(d37,LOW);
delay(2);

}  
