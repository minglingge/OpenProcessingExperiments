
particle p[] = new particle[100];
float g= 0.2;


void setup()
{
  size(1000, 500);
  for (int i =0 ; i<p.length ; i++)
    p[i] = new particle(
    width/2+random(-5, 5), height+random(-5, 5), 
    random(-5, 5), random(-5, 10)
      );
}

void draw ()
{
  background(200);
  for (particle n : p)
  {
    n.move();
    n.draw();
  }
}

class particle 
{
  float x,y;
  float v_x, v_y;
  
  particle(float initx, float inity, float initv_x, float initv_y)
  {
    x =initx;      y = inity;
    v_x = initv_x; v_y = initv_y;
  }
  
  void draw() {
    ellipse(x,y,10,10);
  }
  
  void move()
  {
    x +=v_x;      y +=v_y;
    v_y+= g;
    
    if( y>height ) { y=height; v_y *= -0.7; }
    if( y<0      ) { y=0;      v_y *= -0.7; }
    if( x>width  ) {x=width;   v_x *= -0.7; }
    if( x<0      ) {x=0;       v_x *= -0.7; }
  }
}


