class Particles extends Spaceship
{
   protected  double myX, myY, mySize, mySpeed, myAngle;
  protected int myColor, myOpacity;
  Particles(double angle) {
    myX=Bob.getCenterX(); //how to get the updated centerX
    myY=Bob.getCenterY();
    
    mySize=5;
    myColor=color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    mySpeed=(int)(Math.random()*10);
    myAngle=((Math.random()*angle))*Math.PI-Bob.getRadians();
    myOpacity=(int)(Math.random()*40)+60;
  }

  void move() {
    myX=myX-Math.cos(myAngle)*0.5*mySpeed;
    myY=myY-Math.sin(myAngle)*0.5*mySpeed;
  }

  void show() {
    noStroke();
    fill(myColor);
    rect((float)myX,(float)myY, 8, 5);
  }
}
