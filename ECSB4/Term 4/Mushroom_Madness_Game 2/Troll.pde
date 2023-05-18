class Troll {
  int x, y;
  PImage troll;

  Troll() {
    x = width/2;
    y = height-100;
    troll = loadImage("troll.png");
  }

  void display() {
    imageMode(CENTER);
    troll.resize(100,100);
    image(troll, x, y);
  }

  void move(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }
}
