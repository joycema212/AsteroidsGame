
Star [] Sue;
Spaceship [] Bob;
Particles[] Right;
Asteroid [] Tom;
StarAsteroid [] Sally;
HeartAsteroid [] Cathy;
public void setup() {
  frameRate(80);
  size(1000, 1000);
  Bob= new Spaceship[3];
  for(int i = 0; i< Bob.length; i++){
    Bob[i]= new Spaceship(20*i);
  }
  Sue = new Star[100];
  for (int i = 0; i<Sue.length; i++) {
    Sue[i] = new Star();
  }
  //  Particles(int myCenterX, int myCenterY, double dRadians, double secondAngle) {

  Right = new Particles[3];
  for (int j=0; j<20; j++) {
    if (j%5==0) {
      for (int i = 0; i<Right.length; i++) {
        Right[i]=new Particles(0.3);
      }
    }
  }
  
   Tom = new Asteroid[5];
        for(int w = 0; w<Tom.length; w++){
          Tom[w]=new Asteroid();
        }
        
   Sally = new StarAsteroid[3];
      for(int w = 0; w<Sally.length; w++){
        Sally[w]=new StarAsteroid();
      }
      
    Cathy = new HeartAsteroid[3];
    for(int w = 0; w<Cathy.length; w++){
      Cathy[w]=new HeartAsteroid();
    }
}

public void draw()
{
  background(0);
  for (int i = 0; i<Sue.length; i++) {
    Sue[i].show();
  }
  for(int i=0; i<Bob.length; i++){
  if (keyPressed) { //key pressed boolean funtion
     if (key == 'h') {
          Bob[i].setXspeed(0); //hyperspace
          Bob[i].setYspeed(0);
          Bob[0].setCenterX((int)(Math.random()*900));
          Bob[0].setCenterY((int)(Math.random()*900));
          for(int j = 1; j<Bob.length; j++){
            Bob[j].setCenterX(Bob[0].getCenterX() + 20*j);
            Bob[j].setCenterY(Bob[0].getCenterY() + 20*j);
          }
        }
    if (key == 'a') { //turn
      Bob[i].turn(-10);
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
          Bob[i].accelerate(0.1); //accelerate
          for (int j=0; j<10; j++) {
            if (j%2==0) {
              for (int nI=0; nI<Right.length; nI++) {
                Right[nI].setAngle(Bob[nI].getRadians());
                Right[nI].setX(Bob[nI].getCenterX()); //SET PARTICLE CENTER TO BOB'S CENTER
                Right[nI].setY(Bob[nI].getCenterY());
              
               
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
          Bob[i].accelerate(0.1); //accelerate
          for (int j=0; j<10; j++) {
            if (j%2==0) {
              for (int nI=0; nI<Right.length; nI++) {
                Right[nI].show();
                Right[nI].move();
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
          for(int w = 0; w<Tom.length; w++){
                  Tom[i].show();
                  Tom[i].move();
                }
                
           for(int w = 0; w<Sally.length; w++){
                  Sally[i].show();
                  Sally[i].move();
                }
            
            for(int w = 0; w<Cathy.length; w++){
                  Cathy[i].show();
                  Cathy[i].move();
                }
  
 
  Bob[i].move();
  Bob[i].show();
  ;
  }
}
