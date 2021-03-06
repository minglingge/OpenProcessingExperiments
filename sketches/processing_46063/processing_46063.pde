
/*
 Author: Anita Chen
 Purpose: in class exercise "moving clouds"
 
 */
float xstart, xnoise, ystart, ynoise;
float xstartNoise, ystartNoise;
void setup() {
  size(300, 300);
  smooth();
  background(0);
  frameRate(24);
  xstartNoise=random(20);
  ystartNoise=random(20);
  xstart = random(10);
  ynoise = random(10);
}
void draw() {
  background(0);
  xstartNoise+=0.01;
  ystartNoise+=0.01;
  xstart +=(noise(xstartNoise)*0.2)-0.1;
  ystart +=(noise(ystartNoise)*0.2)-0.1;
  xnoise = xstart;
  ynoise = ystart;
  for (int y = 0; y <= height; y += 2) {
    ynoise += 0.1;
    xnoise = xstart;
    for (int x = 0; x <= width; x +=2) {
      xnoise += 0.1;
      drawPoint(x, y, noise(xnoise, ynoise));
    }
  }
}
void keyPressed() {
  saveFrame("Ghost.jpg");
}
void drawPoint(float x, float y, float noiseFactor) {
  int alph= int(130*noiseFactor)+20;
  int w= int (3*noiseFactor);
  float len = 10 * noiseFactor;
  color strokeCol=color(130*noiseFactor, 255*noiseFactor, random(255)*noiseFactor);
  pushMatrix();
  translate(x, y);
  //rotate(noiseFactor * radians(500));
  stroke(strokeCol, alph);
  strokeWeight(w);
  fill(255, alph);
  rect(x, y, len, len);
  popMatrix();
}




