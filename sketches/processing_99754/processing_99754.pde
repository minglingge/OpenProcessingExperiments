
float x[] = new float [500];
float y[] = new float [500];
float x1[] = new float [500];
float y1[] = new float [500];
boolean xover = false;
boolean yover = false;
float line[] = new float [100];
int radians = 680;
float [] cos_vals = new float [radians];
float [] sin_vals = new float [radians];
float r = random (30,40);
float angulo=45;
int i=0;
void setup()
{
  size(400,400);
  background(255);
  stroke(100,0,0,100);
  smooth();
}
void draw()
{
  if (mouseX <= 400 && mouseY <= 400)
  {
    xover = true;
    yover = true;
  }
  if (mousePressed)
  {
    i++;
    if(i>= 200)
      i =0;
    //line(mouseX, mouseY, r*cos(i), r * sin (i));
    //ecuacion de circulo;
    x1[i] = mouseX + (100* cos(angulo));
    y1[i] = mouseY +(100* sin(angulo));
    angulo=angulo+0.01;
    fill(random(40),random(255), random(10));
    ellipse(mouseX, mouseY, x1[i], y1[i]);
  }
  else
  {
    background (0);
 
  }
 
}


