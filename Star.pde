class Star //note that this class does NOT extend Floater
{
private int myX, myY, myColored;

public Star() 
{
  myColored = color(250, 250, 250);
  myX = (int)(Math.random()*1000);
  myY = (int)(Math.random()*1000);
}

public void show() {
  stroke(myColored); //update paint brush color
  fill(myColored);
  ellipse(myX, myY, 3, 3);
}

}
