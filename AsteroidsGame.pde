Spaceship jimmy;
Star[] stars;
ArrayList<Asteroid> tom;
int score;
int lives;
int rounds;
ArrayList<Bullet> toby;
//your variable declarations here
public void setup() 
{
  //your code here
  size(500,500);
  score = 0;
  lives = 3;
  rounds = 1;
  jimmy = new Spaceship();
  toby = new ArrayList<Bullet>();
  stars = new Star[500];
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
  	if(dist((float)jimmy.getX(), (float)jimmy.getY(),(float)tom.get(i).getX(),(float)tom.get(i).getY())<25)
  	{
  		tom.remove(i);
  		lives--;
  	}
  }
  for (int i = 0; i< toby.size(); i++)
  {
  	toby.get(i).show();
  	toby.get(i).move();
  	for(int n = 0; n < tom.size(); n++)
    {
  		if(dist((float)toby.get(i).getX(), (float)toby.get(i).getY(),(float)tom.get(n).getX(),(float)tom.get(n).getY())<20)
  		{
  			tom.remove(n);
  			score++;
  			toby.remove(i);
  			break;
  		}
  	}  
  }
  fill(255,255,0);
  textSize(10);
  text("Score: " + score, 430, 480);
  text("Lives: " + lives, 370, 480);
  text("Round: " + rounds, 300, 480);
  
  if(rounds >= 4)
  {
  	background(0);
  	textSize(70);
  	fill(0,255,0);
  	text("YOU WON!", 75,265);
  }
  else if (lives <= 0)
  {
  	background(0);
  	textSize(70);
  	fill(255,0,0);
  	text("YOU LOST!", 65, 265);
  }
  else if (tom.size()==0)
  {
  	rounds++;
  	lives = 3;
  	for (int i = 0; i< 15; i++)
  	{
  		tom.add(new Asteroid());
  	}
  } 
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

	if (key == ' ')
	{
		toby.add(new Bullet(jimmy));

	}
}

