
//Lama Kaddura
//Creative Computing Final
//Fall 2012
//Benjamin Norskov


float a = 0;
float b = 0;
float co = 0;

void setup() {
  background(0);
  colorMode(HSB, 100);
  size(500, 400);
  smooth();
  strokeWeight(3);
}

void draw() {
  stroke (co, 80, 80, 50);
  
  float x0 = map(sin(a), -1, 1, 20, width-20);
  float y0 = map(cos(a), -1, 1, 20, height-20);
  
  float x1 = map(sin(b), -1, 1, 20, width - 20);
  float y1 = map (cos(b), -1, 1, 20, height - 20);
  
  line(x0, y0, x1, y1);
  
  a = a + 0.03;
  b = b + 0.05;
  
  co = co + 1;
  if (co > 100);
  co = 0;
}
