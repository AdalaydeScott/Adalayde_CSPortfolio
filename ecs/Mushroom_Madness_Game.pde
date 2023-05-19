//ADALAYDE SCOTT | April 25 2023 | Collision Game
boolean play;
Troll bartholomew;
PImage bg;
int score;

void setup() {
  size(1000,800);
  bartholomew = new Troll();
  bg = loadImage("background.jpeg");
  score = 0;
}

void draw() {
  background(128);
  drawBackground();
  infoPanel();
  bartholomew.display();
  //startScreen();
}

void keyPressed() {
  if(key == 'w') {
    bartholomew.move('w');
  } else if(key == 'a') {
    bartholomew.move('a');
  } else if(key == 's') {
    bartholomew.move('s');
  } else if(key == 'd') {
    bartholomew.move('d');
  }
}

void drawBackground() {
  image(bg,0,0);
  bg.resize(1920,1082);
}

void startScreen() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Mushroom Madness", width/2,300);
  text("By Adalayde Scott", width/2,340);
  text("Press any key to start", width/2,380);
}

void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Game Over", width/2,300);
  text("Score:" + score, width/2,340);
}

void infoPanel() {
  fill(128,128);
  rect(0,0,width,50);
  fill(255);
  text("Score:"+ score,50,40);
}
