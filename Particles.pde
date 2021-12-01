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
    //how to get the updated centerX. The issue of adding just these two lines
    //is that it would keep getting updated, so mySpeed couldn't do its effect
    //and make it move back, so appears in an angle but doesnt move back.
    //myX=Bob.getCenterX();
    //myY=Bob.getCenterY();
    for(int i=0; i<20; i++){
    myX=myX-Math.cos(myAngle)*0.5*mySpeed;
    myY=myY-Math.sin(myAngle)*0.5*mySpeed;
    }
  }

  void show() {
    noStroke();
    fill(myColor);
    rect((float)myX,(float)myY, 8, 5);
  }
 
  public void setX(double n){
    myX=n;
  }
 
  public void setY(double nn){
    myY=nn;
  }
 
   public void setSpeed(double s){
    mySpeed+=s;
  }
  public void setAngle(double a){
    myAngle=a;
  }
}
