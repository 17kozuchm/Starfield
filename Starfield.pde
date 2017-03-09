Particle[] particle; 
void setup()
{
  //your code here
  
  size(500, 500);
  particle = new Particle[1000];
  for(int i = 0; i < particle.length; i++){
    particle[i] = new NormalParticle();
  }
    particle[0] = new OddballParticle();
    particle[1] = new JumboParticle();
}
void draw()
{
  //your code here
  background(0);
    for(int i = 0; i < particle.length; i++){
    particle[i].move();
    particle[i].show();
  }
}
class NormalParticle implements Particle
{
  double x, y, angle, speed;
  
  public NormalParticle(){
    x = 250;
    y = 250;
    angle = Math.random() * 2 * Math.PI;
    speed = Math.random() * 5.0 + 5;
  }
  public void move(){
    x += (Math.cos(angle) * speed);
    y += (Math.sin(angle) * speed);
  }
  public void show(){
    fill(185, 253, 255);
    ellipse((float)x,(float)y,5,5);
}
}
public interface Particle
{
  //your code here
  public void show();
  public void move();
  
}
class OddballParticle implements Particle //uses an interface
{
    double angle, x, y, speed;
    
   public OddballParticle(){
    x = 250;
    y = 250;
    angle = Math.random();
    speed = 20;
    }
  public void show(){
    fill(121, 130, 203);
    ellipse((float)x,(float)y,30,30);
  }
  public void move(){
    angle += 100;
    x += (Math.cos(angle) * speed);
    y += (Math.sin(angle) * speed);
  }//your code here
}
class JumboParticle extends NormalParticle //uses inheritance
{
    public void show(){
    fill(3, 30, 255);
    ellipse((float)x,(float)y,50,50);
  }
}


