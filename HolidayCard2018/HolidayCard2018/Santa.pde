public class Santa implements Sleighstuff {
  private double speed, angle;
  private int x, y;
  public Santa() {
    this.x=0;
    this.y=0;
    angle=Math.PI;
    speed=1.6;
  }
  public int getX() {
    return x;
  }
  public int getY() {
    return y;
  }
  void Xmove() {
    if (movin==true) {
      x++;
      if(movin==false) {
        x-=speed;
      }
    }
  }

  void Ymove() {
    if (movin==true &&outtaHere==false) {
      y++;

      if (y==410 && outtaHere==false) {
        movin=false;
      }
    }
    if(outtaHere==true) {
   fill(255,0,0);
textSize(75);
text("Gifts have",0,300); 
fill(0,255,0);
textSize(75);
text("been given boi", 375,300);
        y--;
      }
    
  }
  

void timer() {
  passedTime++;
  if(y==410 && passedTime>500) {
    savedTime=millis();
    outtaHere=true;
    movin=true;
  }
}
void givingGift() {
  if(y==410) {
    
  }
}
  void display() {
    image(clause, x, y);
  }
}
