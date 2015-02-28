

PImage img;

void setup() {
  img = loadImage("flor.jpg");
  size(1000, 600);
  noStroke();
}

void draw() {
  //image(img, 0, 0);
  background(0);
    for (int a = 0; a < width; a=a+10) {
      for (int b = 0; b < height; b=b+10) {
        color elColor = img.get(a, b);
        float brillo = brightness(elColor);
        fill(elColor);
        ellipse(a, b, (255-brillo)/10,(255-brillo)/10);
      }
    }
}



