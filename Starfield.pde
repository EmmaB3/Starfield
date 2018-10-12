PImage neutral;
PImage angry;
PImage what;
Particle[] friends = new Particle[200];
void setup()
{
	size(500,500);
  neutral = loadImage("bob.png");
  angry = loadImage("mad.png");
  what = loadImage("watching.png");
  for(int a = 0; a < friends.length; a++){
    friends[a] = a%25 == 0? new JumboParticle() : new NormalParticle();
  }
  friends[0] = new OddballParticle();
  imageMode(CENTER);
}
void draw()
{
	background(6, 3, 45);
  for(int a = 0; a < friends.length; a++){
    friends[a].move();
    friends[a].show();
  }
}
class NormalParticle implements Particle
{
  public int x, y;
	NormalParticle(){
		x = 250;
		y = 250;
	}

	public void show(){
		image(neutral, x,y,width/15,height/15);
	}
	public void move(){
    x+= (int)(Math.random()*21) - 10;
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
  int x, y;
   OddballParticle(){
     x = 250;
     y = 250;
   }
	public void move(){
    x+= (int)(Math.random()*11) - 5;
	}
	public void show(){
		image(angry, x, y, width/15, height/15);
	}
}
class JumboParticle extends NormalParticle
{
	public void show(){
    image(what, x, y, width/10,height/10);
  }
}
