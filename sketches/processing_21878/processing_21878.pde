
PImage img;
boolean state = true;
int parts = 400; // number of pixels
int p_width = 1;

Explode[][] boom = new Explode[parts][parts];

void setup() {
  img = loadImage("rainbow.jpg");
  size(350, 400, P2D);
  noStroke();
  for (int i=0; i<parts; i+=p_width) {
    for (int j=0; j<parts; j+=p_width) {
      boom[i][j] = new Explode(i, j, random(-1, 1), random(1, 3), p_width);
    }
  }
}

void draw() {
  background(50);
  for(int i=0; i<parts; i+=p_width) {
    for(int j=0; j<parts; j+=p_width) {
      color pix = img.get(i, j);
      fill(pix, 200);
      boom[i][j].display();
      if(state==false) {
        boom[i][j].move();
      }
    }
  }
}

class Explode {
  float x, y;
  float xMove, yMove;
  int w;

  Explode(float tempx, float tempy, float tempxMove, float tempyMove, int tempw) {
    x = tempx;
    y = tempy;
    xMove = tempxMove;
    yMove = tempyMove;
    w = tempw;
  }

  void display() {
    noStroke();
    rectMode(CENTER);
    rect(x, y, w, w);
  }

  void move() {
    x = x+xMove;
    y = y+yMove;

    if(y>height || y<0) {
      yMove = yMove * -1;
    }
    if(x>width || x<0) {
      xMove = xMove * -1;
    }
  }
}

void mousePressed() {
  if (state==false) {
    state=true;
  } 
  else {
    state=false;
  }
}


