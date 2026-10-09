// Ethan Bui | 17 Sept 2026 | SpaceGame
import processing.sound.*;
SoundFile laser1;
Ship P;
ArrayList<Rock> rocks = new ArrayList<Rock>();
ArrayList<Laser> lasers = new ArrayList<Laser>();
ArrayList<PowerUp> powerups = new ArrayList<PowerUp>();
Ship ship01;
Boss boss01;
Timer rockDist, puDist;
int score, rockCount, rockOffScreen, laserSpeed, level;
boolean play;

void setup() {
  size(800,1000);
  boss01 = new Boss(-200,200,1);
  // rocks.add(new Rock(int(random(width)), -60));
  // powerUps.add(new PowerUp(int(random(width)), -60));
  P = new Ship(width/2, height-100);
  rocks.add(new Rock(int(random(width)), -60));
}

void draw () {
  background(30);

  for (Rock r : rocks) {
    r.move();
    r.display();
  }

  P.move(mouseX, mouseY);
  P.display();
}
