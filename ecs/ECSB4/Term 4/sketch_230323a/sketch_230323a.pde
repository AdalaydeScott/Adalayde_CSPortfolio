//ADALAYDE SCOTT | Mrch 23 2023 | Drawing Assignment

void setup() {
  size(1000,1000);
}

void draw() {
  background(#E3EBF0);
  drawCreature(mouseX,mouseY);
  //drawCreature(200,500);
  //drawCreature(random(width),random(height));
 
}

void drawCreature(float x, float y) {
  //ellipse(x,y,100,100);//Draws the head
  //ellipse(x-20, y-20,15,15);//Draws the left eye
  //ellipse(x+20, y-20,15,15);//Draws the right eye
  //line(x-20,y+20, x+20,y+20);//Draws the mouth
  rect(0,700,1000,500);
  fill(#F2C72A);
  ellipse(-30, 0, 220, 220);
  fill(#4E7446);
  ellipse(300,300,200,200);//bird head
  triangle(300, 500, 300, 400, 400, 300);//bird beak
  //ellipse();//bird eye
  //ellipse();//bird body
  //triangle();//bird wings
  //line();//bird leg #1
  //line();//bird leg #2
  //line();//bird talon
  //line();//bird talon
  //line();//bird talon
  //line();//bird talon
  //line();//bird talon
  //line();//bird talon

  
}
