class Rock {
  // Member Variable
  int x, y, w, h, size, health, hitPoints, speed; //,damage,xp,currency;
  boolean isHit;
  PImage r1;
  char type;

  // Constructor
  Rock(int x, int y) {
    this.x = x;
    this.y = y;
    w = 50;
    h = 50;
    size = int(random(20, 100));
    speed = int(random(1, 4));
    //if (random(2)>1.0) {
      type = 'h';
      r1 = loadImage("rock01.png");
   // } else {
    //  type = 't';
      //r2 = loadImage("rock02.png");
   // }
  }
  // Member Methods
  void display() {
    fill(127);
    r1.resize(w, w);
    image(r1, x, y);
    //ellipse(x, y, w, h);
    textAlign(CENTER, CENTER);
    fill(225);
    text(health, x, y);
  }

  void move() {
    y = y + speed;
  }

  boolean isOffScreen() {
    if (y>height+50) {
      return true;
    } else {
      return false;
    }
  }
}
