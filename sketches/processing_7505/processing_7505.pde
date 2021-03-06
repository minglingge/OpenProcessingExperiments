
class Particle
{
  PVector position;
  PVector velocity;
  Particle()
  {
    position = new PVector(random(0,width),random(0,height));
    velocity = new PVector(random(-1,1),random(-1,1));
  }
  void react(Particle p)
  {
    float d = PVector.dist(position,p.position);
    // natural separation: 100 units
    // force on a spring: F=kx
    // x = displacement from equilibrium position
    float x = d - 100.0;
    // apply force *along* the spring:
    PVector dir = PVector.sub(p.position,position);
    dir.normalize();
    // F=ma should apply:
    // here we adjust the velocity according to the current force
    dir.mult(x/1000.0);
    velocity.add(dir);
    // bounce of the sides:
    bounce();
    // friction: dampen any movement:
    velocity.mult(0.999);
  }
  void move()
  {
    position.add(velocity);
  }
  void draw()
  {
    noStroke();
    fill(255);
    ellipse(position.x,position.y,25,25);
  } 
  void bounce()
  {
    if (position.x < 0 && velocity.x < 0)
      velocity.x -= velocity.x;
    if (position.y < 0 && velocity.y < 0)
      velocity.y = -velocity.y;
    if (position.x > width && velocity.x > 0)
      velocity.x = -velocity.x;
    if (position.y > height && velocity.y > 0)
      velocity.y = -velocity.y;
  }
}



