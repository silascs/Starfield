NormalParticle test;
NormalParticle [] space;
void setup()
{
	size(400,400);
	test = new NormalParticle();
	space = new NormalParticle [100];
	for (int i = 0; i < space.length; i++)
	{
		space[i] = new NormalParticle();
	}
}
void draw()
{
	background(2,4,54);
	test.move();
	test.show();
	for(int i=0; i<space.length; i++)
 	{
 		space[i].move();
 		space[i].show();
 	}
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
		ellipse((float)pX, (float)pY, 7,7);
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

