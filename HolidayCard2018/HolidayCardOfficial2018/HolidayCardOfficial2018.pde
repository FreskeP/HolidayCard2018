PImage clause;
int r;
int g;
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
int timer=0;
int savedTime;
int passedTime= millis() - savedTime;


void setup() {
 
  background(5,3,35);
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
  background(5,3,35);
  
  boi.display();
  boi.Xmove();
  boi.Ymove();
  boi.timer();
  timer++;
  if(timer>10) {
  flashAttack();
  timer=0;
  }

  fill(240,196,32);
ellipse(850,100, 100,100);
fill(5,3,35);
ellipse(875,100,100,100);
  fill(92,100,145);
  rect(75,480, 175,220);
  fill(92,51,23);
  rect(125,630, 45,70);
  fill(192,192,192);
  ellipse(160,665,10,10);
  fill(255,246,0);
  rect(125,550,25,40);
  fill(169,169,169);
  rect(205,450,20,30);
  fill(r,g,0);
  ellipse(87,492,13,13);
  fill(r,g,0);
  ellipse(125,499,13,13);
  fill(r,g,0);
  ellipse(163,499,13,13);
  fill(r,g,0);
  ellipse(201,499,13,13);
  fill(r,g,0);
  ellipse(239,492,13,13);
  
  
  fill(39,133,134);
  rect(425,480, 175,220);
  fill(56,42,6);
  rect(475,630, 45,70);
  fill(51,53,146);
  rect(475,540,95,50);
  fill(169,169,169);
   rect(555,450,20,30); 
   fill(169,169,169);
  ellipse(510,665,10,10);
    fill(r,g,0);
  ellipse(437,492,13,13);
  fill(r,g,0);
  ellipse(475,499,13,13);
  fill(r,g,0);
  ellipse(513,499,13,13);
  fill(r,g,0);
  ellipse(551,499,13,13);
  fill(r,g,0);
  ellipse(589,492,13,13);
  
  
  fill(92,51,23);
  rect(750,480, 175,220);
  fill(245,222,179);
  rect(825,630, 45,70);
  fill(135,128,85);
  rect(855,550,35,40);
  fill(169,169,169);
   rect(765,450,20,30);  
    fill(169,169,169);
  ellipse(860,665,10,10);
     fill(r,g,0);
  ellipse(762,492,13,13);
  fill(r,g,0);
  ellipse(800,499,13,13);
  fill(r,g,0);
  ellipse(838,499,13,13);
  fill(r,g,0);
  ellipse(876,499,13,13);
  fill(r,g,0);
  ellipse(914,492,13,13);
  

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
void flashAttack() {
  int b=(int)(Math.random()*12)+1;
  if(b==1||b==2||b==3||b==4||b==5||b==6) {
     r=255;
     g=0;
  }
 
  if(b==7||b==8||b==9||b==10||b==11||b==12){
    r=0;
    g=255;
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
