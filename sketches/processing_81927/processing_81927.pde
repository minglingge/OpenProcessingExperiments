
PImage img;
int pointillize = 1;
 
void setup() {
  size(275,289);
  img = loadImage("christmas.png");
  background(255);
  smooth();
  frameRate(10000);
}
 
void draw() {
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
   
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
   

   
  // Draw an ellipse at that location with that color
  fill(r,g,b);
  ellipse(x,y,pointillize,pointillize);
}



