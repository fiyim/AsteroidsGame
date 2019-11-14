Spaceship jimmy;
Star[] stars;
//your variable declarations here
public void setup() 
{
  //your code here
  size(500,500);
  jimmy = new Spaceship();
  stars = new Star[1000];
  for (int i = 0; i< stars.length; i++)
  {
  	stars[i] = new Star();
  }
}

public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i< stars.length; i++)
  {
  	stars[i].show();
  }
  jimmy.move();
  jimmy.show();
}

public void keyPressed() 
{
	if (key == 'w')
	{
		jimmy.accelerate(.2);
	}

	if (key == 's')
	{
		jimmy.accelerate(-.2);
	}

	if (key == 'q')
	{
		jimmy.setXDirection(0);
		jimmy.setYDirection(0);
	}

	if (key == 'd')
	{
		jimmy.turn(5);
	}

	if (key == 'a')
	{
		jimmy.turn(-5);
	}


	if (key == 'r')
	{
		jimmy.setX((int)(Math.random()*500));
		jimmy.setY((int)(Math.random()*500));

	}

}

