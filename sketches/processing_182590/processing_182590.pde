
void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  if (mousePressed) {
    fill(0, 0, 255);
  } else {
    fill(0, 0, 255, 60);
  }
  ellipse(mouseX, mouseY, 80, 80);
}



