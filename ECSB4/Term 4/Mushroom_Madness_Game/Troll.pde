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
    troll.resize(100, 100);
    image(troll, x, y);
  }

  void move(char dir) {
    if (dir == 'w') {
      y = y - 10;
    } else if (dir == 'a') {
      x = x - 10;
    } else if (dir == 's') {
      y = y + 10;
    } else if (dir == 'd') {
      x = x + 10;
    }
  }
}
