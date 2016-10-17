
Particle [] space;
void setup()
{
	size(800,800);
	space = new Particle [100];
	for (int i = 0; i < space.length; i++)
	{
		if(i%23 == 0)
		{
			space[i] = new OddballParticle();
		}
		else if(i%21 == 0) 
		{
			space[i] = new JumboParticle();
		}
		else
		{
			space[i] = new NormalParticle();
		}
	}
}
void draw()
{
	background(2,4,54);
	space[1].move();
	space[1].move();
	for(int i=0; i<space.length; i++)
 	{
 		space[i].move();
 		space[i].show();
 	}
}
class NormalParticle implements Particle
{
	double pX, pY, pAngle, pSpeed;
	int pColor;
	NormalParticle()
	{
		pX = 400;
		pY = 400;
		pAngle = Math.PI*2*Math.random();
		pSpeed = 4*Math.random()+1;
		pColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

	}
	public void move()
	{
		pX += Math.cos(pAngle)*pSpeed;
		pY += Math.sin(pAngle)*pSpeed;
		if (pX > 800)
		{
			pX = 400;
			pY = 400;
			pAngle = Math.PI*2*Math.random();
		}
		if (pX < 0)
		{
			pX = 400;
			pY = 400;
			pAngle = Math.PI*2*Math.random();
		}
		if (pY > 800)
		{
			pY = 400;
			pX = 400;
			pAngle = Math.PI*2*Math.random();
		}
		if (pY < 0)
		{
			pY = 400;
			pX = 400;
			pAngle = Math.PI*2*Math.random();
		}
	}
	public void show()
	{
		fill(pColor);
		ellipse((float)pX, (float)pY, 7,7);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	double oX,oY,oAngle,oSpeed;
	OddballParticle()
	{
		oX = 400;
		oY = 400;
		oAngle = Math.PI*2*Math.random();
		oSpeed = 3*Math.random();
	}
	public void move()
	{
		oX += Math.cos(oAngle)*oSpeed;
		oY += Math.sin(oAngle)*oSpeed;
		oAngle += 0.01;
	}
	public void show()
	{
		fill(255, 0, 255);
		rect((float)oX, (float)oY, 15, 15);
	}
}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		fill(pColor);
		ellipse((float)pX, (float)pY, 25,25);
	}
}

