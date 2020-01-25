
const int d34 = 34;

 int valor = 0;
void setup() {
  Serial.begin(9600);
  pinMode(d34,INPUT);
  

}

void loop() {
  valor=digitalRead(d34);
  if(valor == HIGH) {
      Serial.println("Encendido");
  }
  else {
      Serial.println("Apagado");
  }
  delay(10000);

}
