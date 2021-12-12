class Asteroid extends Floater
{
   protected double rotSpeed;
   
   public Asteroid(){
      corners = 6;
      myPointDirection=1;
      myColor=color(0,191,255);
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
      myCenterY=0;
      myCenterX=0;
      xCorners = new int[] {7+ (int)(Math.random()*5), 13, 6+(int)(Math.random()*3), -11, -5 -(int)(Math.random()*4), -11};
      yCorners = new int[] {-8-(int)(Math.random()*4), 0, 10+ (int)(Math.random()*6), 8, 0-(int)(Math.random()*3), -8};
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
