class Ship {
  // Member Variable
  int x, y, w, h, health, turretCount;
  PImage ship01;

  // Constructor
  Ship(int x, int y) {
    this.x = x;
    this.y = y;
    x =width/2;
    y = height/2;
    turretCount = 1;
    ship01 = loadImage("SpaceShip.png");
  }

  // Member Methods
  void display() {
    //imageMode(CENTER);
    //image(ship01,x,y);
    fill(127);
    quad(x, y-50, x+25, y-15, x, y+40, x-25, y-15);
  }

  void move(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }
}
