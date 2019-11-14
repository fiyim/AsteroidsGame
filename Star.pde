class Star //note that this class does NOT extend Floater
{
  //your code here
  int size, colors, xCorr, yCorr;
  public Star()
  {
  	size = (int)(Math.random()*3);
  	colors = (int)(Math.random()*35)+220;
  	xCorr = (int)(Math.random()*500);
  	yCorr = (int)(Math.random()*500);
  }

  private void show ()
  {
  	fill(colors);
  	noStroke();
  	ellipse(xCorr, yCorr, size, size);
  }
}
