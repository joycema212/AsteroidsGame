class Star //note that this class does NOT extend Floater
{
private int myX, myY, myColors;

public Star() 
{
  myColors = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  myX = (int)(Math.random()*1000);
  myY = (int)(Math.random()*1000);
}

public void show() {
  fill(myColors);
  ellipse(myX, myY, 3, 3);
}

}
