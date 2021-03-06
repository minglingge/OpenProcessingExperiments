
Circle myCircle = new Circle(50, 50, 10);
Circle myCircle2 = new Circle(150, 150, 20);
Circle myCircle3 = new Circle(250, 250, 30);


void setup () {

  size (400, 400);
  smooth ();
}

void draw () {
  background (0);
  myCircle.update();
  myCircle2.update();
  myCircle3.update();

  myCircle.checkCollision();  
  myCircle2.checkCollision();
  myCircle3.checkCollision();


  myCircle.drawCircle ();
  myCircle2.drawCircle ();
  myCircle3.drawCircle ();
}

class Circle {

  float x;
  float y;
  float xSpeed;
  float ySpeed;

  float circleSize;

  Circle(float xpos, float ypos, float csize) {
    x = xpos;
    y = ypos;
    circleSize = csize;

    xSpeed = 7;
    ySpeed = 4;
  }

  void update () {

    x += xSpeed;
    y += ySpeed;
  }
  void checkCollision () {
    if ( (x<0) || (x>width)) {
      xSpeed = -xSpeed;
    }

    if (( y<0) || (y>height)) {
      ySpeed = -ySpeed;
    }
  }

    void drawCircle () {
      fill (225);
      ellipse (x, y, circleSize, circleSize);
    }
  }


                
                                
