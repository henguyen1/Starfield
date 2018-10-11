NormalParticle [] bob;
void setup()
{
	background(255);
	size(800,800);
	frameRate(12);
	bob = new NormalParticle[1000]; 
	for (int i = 0; i < bob.length; i++)
	{
		bob[i] = new NormalParticle();
	}
	bob[0] = new OddballParticle();
}
void draw()
{
	background(255);
	
	for (int i = 0;i < bob.length; i++)
	{
		bob[i].move();
		bob[i].show();
	}
	
}
class NormalParticle implements Particle
{
	double myX, myY, myAngle, mySpeed;
	int myColor;
	NormalParticle()
	{
		mySpeed = (Math.random()*11);
		myAngle = (Math.random() * 11) * (Math.PI);
		myColor = (int)(Math.random()*256);
		myX = 400;
		myY = 400;
	}
	void move()
	{
		myY = myY + Math.sin(myAngle) * mySpeed;
		myX = myX + Math.cos(myAngle) * mySpeed;
	}

	void show()
	{
		fill(0,0,myColor);
		ellipse((float)myX,(float)myY,5,5);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	rect(myX,myY,20,20);
}
class JumboParticle implements Particle
{
	//your code here
}

