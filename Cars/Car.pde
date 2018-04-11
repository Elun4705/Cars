class Car {
  // Member Variable
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // Constructor
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  void display () {
    rectMode(CENTER);
    rect(xpos-5, ypos, 5, 14);
    rect(xpos+6, ypos, 5, 14);
    fill(c);
    rect(xpos, ypos, 20, 10);
    rect(xpos-2, ypos, 6, 10);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}