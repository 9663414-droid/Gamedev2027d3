class Laser {
  // Member Variable
  int x, y, w, h, speed; //,damage,xp,currency;
  boolean isHit;

  // Constructor
  Laser(int x, int y) {
    this.x = x;
    this.y = y;
    w = 8;
    h = 12;
    // make proportional to player health
    speed = int(random(1, 9));
    isHit = false;
  }

  // Member Methods
  void display() {
    fill(255, 0, 0);
    rect(x, y, w, h);
  }

  void move() {
    y = y - speed;
  }

  boolean reachedTop() {
    if (y<-20) {
      return true;
    } else {
      return false;
    }
  }
}
