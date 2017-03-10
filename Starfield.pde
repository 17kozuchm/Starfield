Particle[] particle; 
void setup()
{
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
  if (mousePressed && (mouseButton == LEFT)){
  background(0);
    for(int i = 0; i < particle.length; i++){
    particle[i].move();
    particle[i].show();
  }
}
  else if (mousePressed && (mouseButton == RIGHT)){
    background(0);
    for(int i = 0; i < particle.length; i++){
    particle[i].unMove();
    particle[i].show();
  }
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
  public void unMove(){
    x -= (Math.cos(angle) * speed);
    y -= (Math.sin(angle) * speed);
  }
  public void show(){
    fill(185, 253, 255);
    ellipse((float)x,(float)y,5,5);
}
}
public interface Particle
{
  public void show();
  public void move();
  public void unMove();
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
    angle += 1000;
    x += (Math.cos(angle) * speed);
    y += (Math.sin(angle) * speed);
  }
  public void unMove(){
    angle += 1000;
    x += (Math.cos(angle) * speed);
    y += (Math.sin(angle) * speed);
  }
}
class JumboParticle extends NormalParticle //uses inheritance
{
    public void show(){
    fill(3, 30, 255);
    ellipse((float)x,(float)y,50,50);
  }
}
