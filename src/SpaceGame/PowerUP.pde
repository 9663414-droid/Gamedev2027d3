class PowerUp {
  // Member Variable
  int x, y, size, speed;
  char type;
  PImage r1;

  // Constructor
  PowerUp(int x, int y) {
    this.x = x;
    this.y = y;
    size = int(random(20, 100));
    speed = int(random(1, 3));
    if(random(3)>2.0) {
      type = 'h';
      //pu1 = loadImage("powUp01.png")
      } else if(random(2)>1.0)
    r1 = loadImage("");
  }

  // Member Methods
  void display() {
    if (size < 50) {
      fill(22,55,222);
    } else {
      fill(222,43,22);
    }
    ellipse(x, y, size, size);
  }

  void move() {
    x = x + speed;
  }

  boolean reachedBottom() {
    return true;
  }
}
