
// Based on
// http://funprogramming.org/77-A-3D-rotating-cloud-of-points.html

int amount = 5000;
float[] x = new float[amount];
float[] y = new float[amount];
float[] z = new float[amount];

foat u, v;

long rotationY = 1000;
boolean rotate = false;

void setup() {
  size(800, 600, P3D);
  background(0);
  noFill();
  stroke(255);
  strokeWeight(3);
  
  float tmp;
  for(int i = 0; i<amount; i++) {
    u = random(0, TWO_PI);
    v = random(-200, 200);
    tmp = 200 + (v/2)*cos(u/2)
    x[i] = tmp * cos(u);
    y[i] = tmp * sin(u);
    z[i] = (v/2) * sin(u/2);
  }
}


void draw() {
  background(0);
  
  translate(width/2, height/2);

  rotateY(rotationY / 50.0);

  if (rotate) {
    rotationY++;
  }
  
  for(int i = 0; i<amount; i++) {
    line(x[i], y[i], z[i], x[i]+1, y[i]+1, z[i]+1);
  }
}

void mousePressed() {
  rotate = true;
}
  
void mouseReleased() {
  rotate = false;
}
