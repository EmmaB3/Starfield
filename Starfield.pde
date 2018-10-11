//your code here
void setup()
{
	size(500,500);
}
void draw()
{
	background(0);
}
class NormalParticle
{
  public int r, x, y, c;
	NormalParticle(){
		x = 250;
		y = 250;
		r = 1;
		c = 225;
	}

	void show(){
		fill(c);
		ellipse(x,y,r,r);
	}
	void move(){

	}
}
interface Particle
{
	
}
class OddballParticle implements Particle
{
	//your code here
}
class JumboParticle extends NormalParticle
{
	//your code here
}
