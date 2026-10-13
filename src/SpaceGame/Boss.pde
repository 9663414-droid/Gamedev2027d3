class Boss {
  int x, y, w, h, duration, health, speed, lvl;
  boolean isHit;
  PImage b1;

  // Constructor
  Boss(int x, int y, int lvl) {
    this.x = x;
    this.y = y;
    this.lvl = lvl;
    w = 200;
    w = 400;
    duration = 90000;
    health = 10000;
    speed = 5;
    isHit = false;
    if (lvl == 1) {
      b1 = loadImage("lvl1Boss.png");
    } else if (lvl == 2) {
      b1 = loadImage("lvl2Boss.png");
    } else if (lvl == 3) {
      b1 = loadImage("lvl3Boss.png");
    }
  }
  // Display
  void display() {
  }
}
