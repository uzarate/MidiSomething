
const int drumSensor = A0;
const int drumSensor2 = A1;
const int drumSensor3 = A2;
const int drumSensor4 = A3;
const int threshold = 100;


int sensorReading = 0;
int sensorReading2 = 0;
int sensorReading3 = 0;
int sensorReading4 = 0;
void setup() {
  pinMode(9, OUTPUT);
  Serial.begin(9600);
}

void loop() {

  sensorReading = analogRead(drumSensor);

  if (sensorReading >= threshold) {

    digitalWrite(9, HIGH);
    delay(100);
    digitalWrite(9, LOW);
    Serial.println("Tsss");
  }

  //  _____________

  sensorReading2 = analogRead(drumSensor2);

  if (sensorReading2 >= threshold) {

    digitalWrite(9, HIGH);
    delay(100);
    digitalWrite(9, LOW);
    Serial.println("Bap");
  }
  //  _____________

  sensorReading3 = analogRead(drumSensor3);

  if (sensorReading3 >= threshold) {

    digitalWrite(9, HIGH);
    delay(100);
    digitalWrite(9, LOW);
    Serial.println("Brum");
  }
  ///_____________
  sensorReading4 = analogRead(drumSensor4);

  if (sensorReading4 >= threshold) {

    digitalWrite(9, HIGH);
    delay(100);
    digitalWrite(9, LOW);
    Serial.println("Boom");
  }

  delay(10);
}
