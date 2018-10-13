PImage neutral;
PImage angry;
PImage what;
Particle[] friends = new Particle[300];
void setup()
{
	size(500,500);
  neutral = loadImage("https://cdn.shopify.com/s/files/1/1061/1924/products/Neutral_Emoji_icon_9f1cc93a-f984-4b6c-896e-d24a643e4c28_large.png?v=1513249393");
  angry = loadImage("https://cdn.shopify.com/s/files/1/1061/1924/products/Ghost_Emoji_2_large.png?v=1513251036");
  what = loadImage("https://cdn.shopify.com/s/files/1/1061/1924/products/Emoji_icon_without_Mouth_large.png?v=1513251034");
  for(int a = 0; a < friends.length; a++){
    friends[a] = a%15 == 0? new JumboParticle() : new NormalParticle();
  }
  friends[0] = new OddballParticle();
  friends[299] = new OddballParticle();
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
  public double x, y,speed,angle;
	NormalParticle(){
		x = 250;
		y = 250;
    angle = Math.random()*2*Math.PI;
    speed = Math.random()*10;
	}

	public void show(){
		image(neutral, (float)x,(float)y,width/30,height/30);
	}
	public void move(){
    x+= Math.sin(angle)*speed;
    y+= Math.cos(angle)*speed;
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
  int x, y, xDir, yDir,xSpeed,ySpeed;
   OddballParticle(){
     x = 250;
     y = 250;
     xDir = Math.random()*2 < 1 ? -1:1;
     yDir = Math.random()*2 < 1 ? -1:1;
     xSpeed = (int)(Math.random()*6);
     ySpeed = (int)(Math.random()*6);
   }
	public void move(){
    x+= xSpeed*xDir;
    y+= ySpeed*yDir;
    if(x < 0 || x > 500){
      xDir *= -1;
      xSpeed = (int)(Math.random()*6);
    }
    if(y < 0 || y > 500){
      yDir *= -1;
      ySpeed = (int)(Math.random()*6);
    }
	}
	public void show(){
		image(angry, x, y, width/17, height/17);
	}
}
class JumboParticle extends NormalParticle
{
	public void show(){
    image(what, (float)x, (float)y, width/13,height/13);
  }
}
