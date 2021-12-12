class Spaceship extends Floater
{
 public Spaceship(double n) {
  myPointDirection=1;
  myColor=color(255, 20, 147);
  myYspeed=3;
  myXspeed=3;
  myCenterY=300+n;
  myCenterX=300+n;
  corners=16;
  xCorners=new int[corners];
  yCorners= new int [corners];
  xCorners[0]= -9;
  yCorners[0]= 7;
  xCorners[1]= -4;
  yCorners[1]= 3;
  xCorners[2]= -2;
  yCorners[2]= 4;
  xCorners[3]= 7;
  yCorners[3]= 4;
  xCorners[4]= 11;
  yCorners[4]= 0;
  xCorners[5]= 7;
  yCorners[5]= -4;
  xCorners[6]= -2;
  yCorners[6]= -4;
  xCorners[7]= -4;
  yCorners[7]= -7;
  xCorners[8]= -9;
  yCorners[8]= -7;
  xCorners[9]= -7;
  yCorners[9]= -4;
  xCorners[10]= -7;
  yCorners[10]= -2;
  xCorners[11]= -12;
  yCorners[11]= -1;
  xCorners[12]= 7;
  yCorners[12]= 0;
  xCorners[13]= -12;
  yCorners[13]= 1;
  xCorners[14]= -7;
  yCorners[14]= -2;
  xCorners[15]= -7;
  yCorners[15]= 4;
}

 public Spaceship() {
  myPointDirection=1;
  myColor=color(255, 20, 147);
  myYspeed=3;
  myXspeed=3;
  myCenterY=295;
  myCenterX=295;
  corners=16;
  xCorners=new int[corners];
  yCorners= new int [corners];
  xCorners[0]= -9;
  yCorners[0]= 7;
  xCorners[1]= -4;
  yCorners[1]= 3;
  xCorners[2]= -2;
  yCorners[2]= 4;
  xCorners[3]= 7;
  yCorners[3]= 4;
  xCorners[4]= 11;
  yCorners[4]= 0;
  xCorners[5]= 7;
  yCorners[5]= -4;
  xCorners[6]= -2;
  yCorners[6]= -4;
  xCorners[7]= -4;
  yCorners[7]= -7;
  xCorners[8]= -9;
  yCorners[8]= -7;
  xCorners[9]= -7;
  yCorners[9]= -4;
  xCorners[10]= -7;
  yCorners[10]= -2;
  xCorners[11]= -12;
  yCorners[11]= -1;
  xCorners[12]= 7;
  yCorners[12]= 0;
  xCorners[13]= -12;
  yCorners[13]= 1;
  xCorners[14]= -7;
  yCorners[14]= -2;
  xCorners[15]= -7;
  yCorners[15]= 4;
}


  public void setXspeed(double x){
    myXspeed=x;
}
  public void setYspeed(double y){
    myYspeed=y;
  }
  public void setCenterX (double cenX){
    myCenterX=cenX;
  }
  public void setCenterY (double cenY){
    myCenterY=cenY;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
 
  public double getPointDirection(){
    return myPointDirection;
  }
  public double getXspeed(){
    return myXspeed;
  }
}
