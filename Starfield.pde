Particle [] bob;
void setup()
{
	background(255);
	size(800,800);
	
	bob = new Particle[1000]; 
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
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		myX = 400;
		myY = 400;
	}
	public void move()
	{
		myY = myY + Math.sin(myAngle) * mySpeed;
		myX = myX + Math.cos(myAngle) * mySpeed;
	}

	public void show()
	{
		fill(myColor);
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
	double myX,myY;
	int myColor;
	OddballParticle()
	{
		myX = 400;
		myY = 400;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256)); 
	}
	void move()
	{
		myX = myX + (int)((Math.random() * 21) - 10);
		myY = myY + (int)((Math.random() * 21) - 10);
	}

	void show()
	{
		fill(myColor);
		rect((float)myX,(float)myY,20,20);
	}
}
class JumboParticle extends NormalParticle
{
	void show()
	{
		fill(myColor);
		ellipse(myX,myY,20,20);
	}
}

