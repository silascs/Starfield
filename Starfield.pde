//your code here
void setup()
{
	size(400,400);
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double pX, pY, pAngle, pSpeed;
	int pColor;
	NormalParticle()
	{
		pX = 200;
		pY = 200;
		pAngle = Math.PI*2*Math.random();
		pSpeed = 10*Math.random();
		pColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

	}
	void move()
	{
		pX += Math.cos(pAngle)*pSpeed;
		pY += Math.sin(pAngle)*pSpeed;
	}
	void show()
	{
		fill(pColor);
		ellipse((float)pX, (float)pY, 15,15);
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

