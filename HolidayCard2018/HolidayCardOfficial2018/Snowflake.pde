class SnowFlake implements Snow{
  
  float xPos;
  float yPos;
  float speed;
  float size;
  float speedX;
  float vel;
  
  SnowFlake(){
    xPos=random(0,1000);
    yPos= random(-1000,-100);
    speed=random(2,8);
    size= random(1,5);
    speedX= random(-1.5,1.5);
    vel=.02;
  }
  
  
  
  void move(){
   if(addWind){
     speedX+=vel;
   }
  
    if(yPos>=1000){
     yPos=random(-100,0); 
    }
    if(xPos>=1000){
      xPos=random(-600,0);
    }
    yPos+=speed;
    xPos+=speedX;
   
  }
  
  void show(){
    fill(255,255,255);
    ellipse(xPos, yPos, size, size);
    
    
  }
  
  float getSpeed(){
   return speedX; 
  }
  
}
