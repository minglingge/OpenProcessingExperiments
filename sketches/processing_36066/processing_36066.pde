
int [] LN = {
  100, 0, 100, 200, 100, 400
};
int [] LN2 = {
  600, 0, 600, 200, 600, 400
};


int a = 100;
int b = 0;
int c = 100;
int d = 200;
int e = 100;
int f = 400;

void setup()
{
  size(700, 400);
  background (255);
  stroke(0, 0, 0, 100);
}
void draw()
{

  line(LN[0], LN[1], LN[2], LN[3]);
  line(LN[2], LN[3], LN[4], LN[5]);
  //line(LN2[0], LN2[1], LN2[2], LN2[3]);
  //line(LN2[2], LN2[3], LN2[4], LN2[5]);
}

void mousePressed()
{
  LN[2] = mouseX;
  LN[3] = mouseY;
  LN2[2] = mouseX;
  LN2[3] = mouseY;

  stroke (random(0, 255), random(0, 255), random(0, 255), random(20, 100));
}

void mouseDragged()
{
  LN[2] = mouseX;
  LN[3] = mouseY;
  LN2[2] = mouseX;
  LN2[3] = mouseY;
  
  strokeWeight(random(0.5,3));

}








