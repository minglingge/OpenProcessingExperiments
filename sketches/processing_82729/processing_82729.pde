
int counter;
void setup() {
  size(400, 550);
  background(201, 186, 128);
  smooth();
}
void draw() {
  noStroke();
  fill(200, 165, 0);
  quad(85, 300, 300, 200, 335, 275, 120, 375);
  fill(66, 74, 121);
  curve(275, 300, 259, 270, 275, 275, 275, 275);
  triangle(100, 50, 275, 380, 115, 225);
  fill(0);
  quad(175, 145, 215, 120, 365, 420, 325, 450);
  quad(130, 345, 170, 345, 170, 386, 130, 386);

  ellipse(150, 365, 10, 10);

  line(180, 145, 360, 420);
}
