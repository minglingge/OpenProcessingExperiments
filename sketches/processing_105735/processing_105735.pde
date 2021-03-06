
void setup() {
  size(600, 500);  
  background(0);
  frameRate(60);
}

int dx = 2;
int dy = 3;

int x = 50;
int y = 50;

void draw() {

  if (mousePressed) {
    x= mouseX;
    y= mouseY; //when mouse is pressed, the ball resets to position of mouse
  }
  fill(255);
  ellipse(x, y, 25, 25);

  x = x + dx;
  y = y + dy;

  if ( x< 0 || x > 475) {
    dx = -1 * dx;
  }

  if ( y < 0 || y > 475) {
    dy = -1 * dy;
  }
}
