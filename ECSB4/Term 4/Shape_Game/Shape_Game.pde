//Adalayde Scott | 4/11/23 | Shape Game

int x, y, score, tarX, tarY;
float dist;

void setup() {
  size(500, 500);
  x = 20;
  y = 20;
  score = 0;
  tarX = int(random(width));
  tarY = int(random(height));
  dist=0;
}

void draw() {
  dist = dist(x, y, tarX, tarY);
  println(dist);
  background(#F5E1E1);
  ellipse(x, y, 20, 20);
  rect(tarX, tarY, 20, 20);
  target();
  score();
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      y = y - 3;
    } else if (key == 's' || key == 'S') {
      y = y + 3;
    } else if (key == 'a' || key == 'A') {
      x = x - 3;
    } else if (key == 'd' || key == 'D') {
      x = x + 3;
    } else if (key == 'q' || key == 'Q') {
      y = y - 3;
      x = x - 3;
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y = y - 3;
    } else if (keyCode == DOWN) {
      y = y+3;
    } else if (keyCode == LEFT) {
      x = x - 3;
    } else if (keyCode == RIGHT) {
      x+=3;
    }
  }
}

void score() {
  fill(255, 128);
  rect(0, 0, width, 30);
  fill(0);
  text("Score: " + score, 10, 25);
}

void target() {
  if (dist<20) {
    tarX = int(random(width));
    tarY = int(random(height));
    if (tarY<60) {
      tarY=60;
      
      score = score +100;
      //tarSize=100;
    }
  }
}
