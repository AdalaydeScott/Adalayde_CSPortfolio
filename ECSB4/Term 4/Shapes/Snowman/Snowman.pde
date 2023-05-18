//Adalayde Scott | March 23 2023 | Drawing

void setup() {
  size(1000, 1000);
}
void draw() {
  background(#BEE3E8);
  drawCreature(mouseX, mouseY);
  //drawCreature(200,500);
  //drawCreature(random(width),random(height));
}
void drawCreature(float x, float y) {
  fill(#FFFFFF);
  ellipse(x, y, 100, 100); //Draws the Head
  fill(255);
  fill(#11808E);
  ellipse(x-20, y-20, 15, 15); //Draws the left eye
  ellipse(x+20, y-20, 15, 15); //Draws the right eye
  line(x-20, y+20, x+20, y+20); //Draws the mouth
  fill(#FFFFFF);
  ellipse(x,y+100, 125, 125); //Draws the body section of snowman
  fill(#010203);
  ellipse(x,y+60,15,15);
  ellipse(x,y+100,15,15); //Draws a button
  ellipse(x,y+120,15,15); //Draws a button
  fill(#FFFFFF);
  ellipse(x,y+200, 150, 150); //Draws the leg section of snowman
  fill(#010203);
  ellipse(x,y+200,15,15); //Draws a button
  ellipse(x,y+160,15,15); //Draws a button
  ellipse(x,y+240,15,15); //Draws final button
}
