Star [] Sue;
Spaceship Bob = new Spaceship();
Particles[] Right;
public void setup() {
  frameRate(80);
  size(1000, 1000);
  Sue = new Star[100];
  for (int i = 0; i<Sue.length; i++) {
    Sue[i] = new Star();
  }
  //  Particles(int myCenterX, int myCenterY, double dRadians, double secondAngle) {

  Right = new Particles[50];
  for (int j=0; j<20; j++) {
    if (j%5==0) {
      for (int i = 0; i<Right.length; i++) {
        Right[i]=new Particles(0.3);
      }
    }
  }
}

public void draw()
{
  background(0);
  for (int i = 0; i<Sue.length; i++) {
    Sue[i].show();
  }






  if (keyPressed) { //key pressed boolean funtion
     if (key == 'h') {
          Bob.setXspeed(0); //hyperspace
          Bob.setYspeed(0);
          Bob.setCenterX((int)(Math.random()*1000));
          Bob.setCenterY((int)(Math.random()*1000));
        }
    if (key == 'a') { //turn
      Bob.turn(-10);
      //for (int j=0; j<10; j++) {
      //  if (j%2==0) {
      //    for (int i=0; i<Right.length; i++) {
      //      Right[i].setX(Bob.getCenterX()); //SET PARTICLE CENTER TO BOB'S CENTER
      //      Right[i].setY(Bob.getCenterY());
      //      Right[i].show();
      //      Right[i].move();
      //    }
      //  }
      //}
    }
    if (key == ' ') {
          Bob.accelerate(0.1); //accelerate
          for (int j=0; j<10; j++) {
            if (j%2==0) {
              for (int i=0; i<Right.length; i++) {
                Right[i].setX(Bob.getCenterX()); //SET PARTICLE CENTER TO BOB'S CENTER
                Right[i].setY(Bob.getCenterY());
                
                //Right[i].setAngle(Bob.getRadians()*Math.PI-Bob.getRadians());
                //how to get the updated centerX. The issue of adding just these two lines
                //is that it would keep getting updated, so mySpeed couldn't do its effect
                //and make it move back, so it doesn't shoot back
                //myX=Bob.getCenterX();
                //myY=Bob.getCenterY();
              }
            }
          }
        
        
        if (key == ' ') {
          Bob.accelerate(0.1); //accelerate
          for (int j=0; j<10; j++) {
            if (j%2==0) {
              for (int i=0; i<Right.length; i++) {
                Right[i].show();
                Right[i].move();
                //how to get the updated centerX. The issue of adding just these two lines
                //is that it would keep getting updated, so mySpeed couldn't do its effect
                //and make it move back, so it doesn't shoot back
                //myX=Bob.getCenterX();
                //myY=Bob.getCenterY();
              }
            }
          }
        }
  }
  }
  Bob.move();
  Bob.show();
}
