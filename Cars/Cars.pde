// Reserve the memory for the car
Car myCar;
Car myCar2;
Car myCar3;
Car[] myCars;

void setup() {
  size(200, 200);
  myCar = new Car(color(0, 100, 255), 0, 100, 2);
  myCar2 = new Car(color(170, 29, 29), 0, 50, 1);
  myCar3 = new Car(color(170, 29, 29), 0, 150, 3);
  myCars = new Car[100];
  for (int i=0; i<myCars.length; i++) {
    myCars[i] = new Car(color(random(255), random(255), random(255)), random(width), random(height), random(8));
  }
}

void draw() {
  background(0);
  myCar.display();
  myCar.drive();
  myCar2.display();
  myCar2.drive();
  myCar3.display();
  myCar3.drive();

  for (int i=0; i<myCars.length; i++) {
    myCars[i].display();
    myCars[i].drive();
  }
}