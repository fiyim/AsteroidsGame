Spaceship jimmy;
Star[] stars;
ArrayList<Asteroid> tom;
int score;
//your variable declarations here
public void setup() 
{
  //your code here
  size(500,500);
  score = 0;
  jimmy = new Spaceship();
  stars = new Star[1000];
  for (int i = 0; i< stars.length; i++)
  {
  	stars[i] = new Star();
  }
  tom = new ArrayList<Asteroid>();
  for (int i = 0; i< 15; i++)
  {
  	tom.add(new Asteroid());
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
  for (int i = 0; i< tom.size(); i++)
  {
  	tom.get(i).show();
  	tom.get(i).move();
  	if(dist((float)jimmy.getX(), (float)jimmy.getY(),(float)tom.get(i).getX(),(float)tom.get(i).getY())<15)
  	{
  		tom.remove(i);
  		score++;
  	}
  }
  fill(255);
  textSize(18);
  text("Score: " + score, 420, 480);
  
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

