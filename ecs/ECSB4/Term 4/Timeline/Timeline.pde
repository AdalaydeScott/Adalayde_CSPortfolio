// Adalayde Scott | April 6th, 2023 | Timeline

void setup() {
  size(950, 400);
}

void draw() {
  background(#84A584);
  drawRef();
  histEvent(130, 200, "1760", true, "Swiss Geologist Saussure incentivizes people to reach summits.");
  histEvent(260, 200, "1865", true, "Race to summit Whymper creates new technical equiptment.");
  histEvent(380,300, "1900", false, "first climbs on gear done in the Dolomites");
  histEvent(490,300, "1949", false, "Harold Goodro leads the hardest route in the USA");
  histEvent(560,200, "1953", true, "Bouldering rises in popularity in Fontainbleau");
  histEvent(670,200, "1999",true, "The first bouldering world cup is held");
  histEvent(760,300, "2016", false, "Climbing announced to make an Olympic debut");
  histEvent(870,300, "2021", false, "Climbing makes Olympic debut");
}

void drawRef() {
  textAlign(CENTER);
  textSize(35);
  fill(#FFFFFF);
  text("Important Events in Climbing Timeline", width/2, 100);
  textSize(20);
  text("By Adalayde Scott", width/2, 120);
  strokeWeight(2);
  line(50, 250, 900, 250);
  line(50, 245, 50, 255);
  line(900, 245, 900, 255);
  text("1755", 50, 270);
  text("Present", 900, 270);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x-20, y+50);
    line(x, y, x-20, y+50);
    line(x, y, x-20, y+50);
  } else {
    line(x, y, x-20, y-50);
    line(x, y, x-20, y-50);
    line(x, y, x-20, y-50);
    line(x, y, x-20, y-50);
  }
  rectMode(CENTER);
  fill(222);
  strokeWeight(2);
  rect(x, y, 100, 30, 7);
  fill(0);
  text(title, x, y+5);
  if(mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
    text(detail,width/2,150);
  }
}
