//your code here
void setup()
{
	size(500,500);
}
void draw()
{
	background(0);
}
class NormalParticle implements Particle
{
  public int r, x, y, c;
	NormalParticle(){
		x = 250;
		y = 250;
		r = 1;
		c = 225;
	}

	public void show(){
		fill(c);
		ellipse(x,y,r,r);
	}
	public void move(){

	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	public void move(){

	}
	public void show(){
		
	}
}
class JumboParticle extends NormalParticle
{
	r = 10;
}
