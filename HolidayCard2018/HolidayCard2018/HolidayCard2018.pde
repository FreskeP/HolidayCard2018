PImage clause;
boolean movin=true;
Santa boi;
Gift box;
Snow[] s = new Snow[500];
boolean addWind= false;
boolean stop=false;
boolean re =false;
boolean outtaHere;
float x=0;
float y=0;
int savedTime;
int passedTime= millis() - savedTime;


void setup() {
  background(0);
  size(1000, 700);

  for(int i =0; i<s.length; i++){
   s[i]= new SnowFlake(); 
  }
  clause=loadImage("santa.png");
  clause.resize(100, 100);
  boi= new Santa();
  box= new Gift();
}


void draw() {
  image(clause, boi.x, boi.y);
  background(0);
  boi.display();
  boi.Xmove();
  boi.Ymove();
  boi.timer();
  
  fill(92,51,23);
  rect(75,480, 175,220);
  fill(245,222,179);
  rect(125,630, 45,70);
  fill(245,222,179);
  rect(125,550,25,40);
  fill(169,169,169);
   rect(205,450,20,30);
  
  
  fill(92,51,23);
  rect(425,480, 175,220);
  fill(245,222,179);
  rect(475,630, 45,70);
  fill(245,222,179);
  rect(475,550,25,40);
  fill(169,169,169);
   rect(555,450,20,30);
  
  
  fill(92,51,23);
  rect(750,480, 175,220);
  fill(245,222,179);
  rect(825,630, 45,70);
  fill(245,222,179);
  rect(815,550,25,40);
  fill(169,169,169);
   rect(885,450,20,30);
  


noStroke();
 
 fill(0,0,0);
 
 
 if(stop){
  pileUp(); 
 }


 for(int i=0; i<s.length; i++){
  s[i].move();
  s[i].show();
  if(s[i].getSpeed()>10){
   stop=true;
  }
}
 
}
 void mousePressed(){
   
  addWind=true;
 }
 
 void pileUp(){
   fill(255,255,255);
   
   x+=4.6;
   y+=4.6;
   ellipse(1300,1300,x,y);
}
