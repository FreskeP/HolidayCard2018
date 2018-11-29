PImage clause;
boolean flip;
Santa boi;

void setup() {
  background(0);
  size(1000, 700);
  clause=loadImage("santa.png");
  clause.resize(100, 100);
  boi= new Santa();
}


void draw() {
  image(clause, boi.getX(), boi.getY());
  background(0);
  boi.display();
  boi.move();
  
  fill(255);
  rect(700, 300, 300, 400);
}
void mousePressed() {
  flip=true;
}
