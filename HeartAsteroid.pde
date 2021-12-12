class HeartAsteroid extends Asteroid
{
  protected float [] xCorners;
  protected float [] yCorners;
 public HeartAsteroid(){
      corners = 8;
      myPointDirection=1;
      myColor=color (255, 87, 51);
      if(Math.random()>0.5){
         myYspeed=Math.random();
      }else {
        myYspeed=-Math.random();
      }
      if(Math.random()>0.5){
         myXspeed=Math.random();
      }else {
        myXspeed=-Math.random();
      }
      myCenterY=1000;
      myCenterX=1000;
      xCorners = new float[] {0, 6, 12, 12, 0, -12, -12, -6 };
      yCorners = new float[] {6,12,12,6,-6,6,12,12};
      if(Math.random()>=0.5){
        rotSpeed=Math.random()*1;
      } else {
        rotSpeed = Math.random()*-1;
      }
   }
   
   public void show(){
     stroke(myColor);
     noFill();
   
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()    
     dRadians = (float)(myPointDirection*(Math.PI/180));
   
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
   
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  
  public void move(){
     turn(rotSpeed);
     super.move();
 
   }
}
