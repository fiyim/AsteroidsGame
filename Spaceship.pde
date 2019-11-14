class Spaceship extends Floater  
{   
	public void setX (int x) {myCenterX = x;}
	public int getX() {return (int)myCenterX;}

	public void setY (int y) {myCenterY = y;}
	public int getY() {return (int)myCenterY;}

	public void setXDirection (double xDirect) {myDirectionX = xDirect;}
	public double getXDirection() {return (double)myDirectionX;}

	public void setYDirection (double yDirect) {myDirectionY = yDirect;}
	public double getYDirection() {return (double)myDirectionY;}

	public void setDirection (double degrees) {myPointDirection = degrees;}
	public double getDirection() {return (double)myPointDirection;}

	public Spaceship()
	{
		corners = 20;
		int[] xCoors = {-12,-6,-6,0,0,6,6,18,18,6,6,0,0,-6,-6,-12,-12,-6,-6,-12};
		int[] yCoors = {9,9,15,15,9,9,3,3,-3,-3,-9,-9,-15,-15,-9,-9,-3,-3,3,3};
		xCorners = xCoors;
		yCorners = yCoors;
		myCenterX = 250; 
		myCenterY = 250;   
  		myDirectionX = 0;
  		myDirectionY = 0; 
  		myPointDirection = 0;
	}

	
 
}