Particle ree[];
//your code here
void setup()
{
	size(400,400);
	//your code here
}
void draw()
{
	ree = new Particle[100];
	for (int i = 0; i< ree.length; i++ ){
		ree[i] = new NormalParticle();
	}
	//your code here
}
class NormalParticle
{
	double myX, myY, angle, speed;
	int Color;
	//your code here
	NormalParticle(){
		myX = 0;
    myY = 0;
	}
	public void move(){
    myX = myX + (Math.random()*18 - 9);
    myY = myY + (Math.random()*18 - 9);
	}
	public void show(){
    fill(255,200,255,40);
    ellipse(20.0,20.0,myX,myY);
	}
}
interface Particle
{
	public void move();
  public void show();
}
class OddballParticle implements Particle
{
	OddballParticle(){
  
}
}
class JumboParticle implements Particle
{
	JumboParticle(){
  
}
}
