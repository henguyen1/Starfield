void setup()
{
	background(255);
	size(800,800);
}
void draw()
{
	NormalParticle bob = new NormalParticle(); 
	bob.move();
	bob.show();
}
class NormalParticle
{
	double myX, myY, myAngle, mySpeed;
	int myColor;
	NormalParticle()
	{
		mySpeed = (int)(Math.random()*11);
		myAngle = ((int)(Math.random()*3))* (Math.PI);
		myColor = (int)(Math.random()*256);
		myX = 400;
		myY = 400;
	}
	void move()
	{
		myX = myX + Math.cos(myAngle) * mySpeed;
		myY = myY + Math.sin(myAngle) * mySpeed;
		System.out.println(myX);
		System.out.println(myY);
	}

	void show()
	{
		fill(0,0,myColor);
		ellipse((float)myX,(float)myY,5,5);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

