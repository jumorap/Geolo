//test Octobuffer

const int pin = 63; //A8 due
const int oe = 62;  //A9 due
// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(pin, OUTPUT);
  pinMode(oe, OUTPUT);
  pinMode(LED_BUILTIN, OUTPUT);
  
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(LED_BUILTIN, LOW);
  digitalWrite(oe, LOW);
  digitalWrite(pin, LOW);
  
}
