Particle [] big;
//your code here
void setup()
{
  noStroke();
  background(0);
	size(600,600);
	big = new Particle[70];
  for (int i = 0; i< big.length; i++ ){
    big[i] = new NormalParticle();
    big[0] = new JumboParticle();
    big[1] = new OddballParticle();

  }
	//your code here
}
void draw()
{

	for (int i = 0; i< big.length; i++ ){
    big[i].move();
    big[i].show();

	}
	//your code here
}
interface Particle
{
  public void move();
  public void show();
}
class NormalParticle implements Particle
{
	public double myX, myY, angle, speed;
	int Color;
	//your code here
	NormalParticle(){
	  myX = width/2;
    myY = height/2;
    speed = Math.random()*6+0.2;
    angle = Math.PI*2* Math.random();
	}
	public void move(){
    myX = myX + Math.cos(angle) * speed;
    myY = myY + Math.sin(angle) * speed;
    angle+=.01;
	}
	public void show(){
    fill((int)(Math.random()*60+195),(int)(Math.random()*60+195),(int)(Math.random()*60+195));
    ellipse((float)myX,(float)myY,20.0,20.0);
	}
}
class OddballParticle implements Particle
{
    public double myX, myY, angle, speed;
  OddballParticle(){
      myX = width/2;
    myY = height/2;
    speed = Math.random()*6+0.2;
    angle = Math.PI*2* Math.random();
  }
  public void move(){
    myX = myX + Math.cos(angle) * speed;
    myY = myY + Math.sin(angle) * speed;
    angle+=.01;
  }
  public void show(){
    fill(200,0,200);
    ellipse((float)myX,(float)myY,50.0,50.0);
  }
 }
class JumboParticle implements Particle
{
    public double myX, myY, angle, speed;
  JumboParticle(){
    myX = width/2;
    myY = height/2;
    speed = Math.random()*6+0.2;
    angle = Math.PI*2* Math.random();
  }
  public void move(){
    myX = myX + Math.cos(angle) * speed;
    myY = myY + Math.sin(angle) * speed;
   angle+=.01;
  }
  public void show(){
        fill(200,200,0);
            ellipse((float)myX,(float)myY,70.0,70.0);
  }
 }
