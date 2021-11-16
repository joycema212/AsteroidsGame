class Floater
{
  int mySize;
  protected double myCenterX, myCenterY; //center coord
  protected double myXspeed, myYspeed; // speed of travel
  protected int corners; 
  protected double myPointDirection; //current direction floater is pioing
  protected int[] xCorners; 
  protected int[] yCorners; //coords of corners. Center = 0,0. myPointDirection  = 0;
  protected int myColor;
  
  Floater(){
  }
  
   double getCenterX(){
    return myCenterX;
  }
  
  double getCenterY(){
    return myCenterY;
  }
  
  double getXspeed() {
    return myXspeed;
  }
 
 double getYspeed() {
    return myYspeed;
  }
  
  int getCorners() {
    return corners;
  }
  
  double getPointDirection(){
    return myPointDirection;
  }
  
  int[] getCorners() {
    return xCorners;
  }
  
  int[] getCorners() {
    return yCorners;
  }
  
  void show(){
  }
  
  void move(){
  }
  
  void turn(){
  }
}

class Spaceship extends Floater
{
  public Spaceship(){
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[coroners];
    xCorners[0] = ;
    yCorners[0] = ;
    xCorners[1] = ;
    yCorners[1] = ;
    xCorners[2] = ;
    yCorners[2] = ;
    xCorners[3] = ;
    yCorners[3] = ;
    xCorners[4] = ;
    yCorners[4] = ;



