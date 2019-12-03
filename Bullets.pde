class Bullet extends Floater
{
	public void setX (int x) {myCenterX = x;}
	public int getX() {return (int)myCenterX;}

	public void setY (int y) {myCenterY = y;}
	public int getY() {return (int)myCenterY;}

	public Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getX();
    	myCenterY = theShip.getY();
    	myPointDirection = theShip.getDirection();
    	double dRadians =myPointDirection*(Math.PI/180);
    	myDirectionX = 5 * Math.cos(dRadians) + theShip.getXDirection();
    	myDirectionY = 5 * Math.sin(dRadians) + theShip.getYDirection();
  		myColor = color(255,0,0);
	}

	public void show()
	{
		ellipse((float)myCenterX, (float)myCenterY, 4.00, 4.00);
	}

	public void move()
	{
		myCenterX += myDirectionX;    
    	myCenterY += myDirectionY; 
	}

}