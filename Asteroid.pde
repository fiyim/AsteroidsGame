class Asteroid extends Floater 
{
	public void setX (int x) {myCenterX = x;}
	public int getX() {return (int)myCenterX;}

	public void setY (int y) {myCenterY = y;}
	public int getY() {return (int)myCenterY;}

	public Asteroid()
	{
		corners = 48;
		int[] xCoors = {-18,-18,-15,-15,-12,-12,-9,-9,-12,-12,-9,-9,-6,-6,3,3,6,6,9,9,6,6,9,9,12,12,15,15,12,12,9,9,6,6,0,0,6,6,-9,-9,-3,-3,-9,-9,-12,-12,-15,-15};
		int[] yCoors = {9,0,0,-3,-3,-6,-6,-9,-9,-12,-12,-9,-9,-6,-6,-9,-9,-12,-12,-9,-9,-6,-6,-3,-3,0,0,9,9,3,3,9,9,12,12,9,9,6,6,9,9,12,12,9,9,3,3,9};
		xCorners = xCoors;
		yCorners = yCoors;
		myCenterX = (int)(Math.random()*500); 
		myCenterY = (int)(Math.random()*500);   
  	myDirectionX = (Math.random()*2)-1;
  	myDirectionY = (Math.random()*2)-1; 
  	myPointDirection = 0;
  	myColor = color(255,0,0); 
  }

  private int speed = (int)(Math.random()*10)-5;
	public void move()
	{ 
    	myPointDirection+=speed;
    	myCenterX += myDirectionX;    
   		myCenterY += myDirectionY;
   		if(myCenterX >width)
    	{     
      		myCenterX = 0;    
    	}    
    	else if (myCenterX<0)
    	{     
      		myCenterX = width;    
    	}    
    	if(myCenterY >height)
    	{    
      		myCenterY = 0;    
    	} 
    	else if (myCenterY < 0)
    	{     
      		myCenterY = height;    
    	}  
	}
}