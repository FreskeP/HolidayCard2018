public class Santa {
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
  void move() {
x++;
y++;
    
    if (y>=width) {
      x+=Math.cos(angle)*speed;
      y--;
      angle+=.25;
    }
  }

  void display() {
    image(clause, x, y);
  }
}
