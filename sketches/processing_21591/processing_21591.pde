
int num = 6;

Rectangle[] myRect = new Rectangle[num];
color[] Colors = new color[4];

void setup() {
  size(300,300);
  noStroke();
  smooth();

  Colors[0] = color(255,0,0,50);
  Colors[1] = color(0,255,0,50);
  Colors[2] = color(0,0,255,50);

  for(int i=0;i<myRect.length;i++) {
    myRect[i] = new Rectangle();
  }
}

void draw() {
  background(255);

  for(int i=0; i < myRect.length; i++) {
    myRect[i].update();
    myRect[i].draw();
  }
}

class Rectangle {
  float x = random(20,width - 20);
  float y = random(20,height -20);
  float Size = random(100);
  color colorPicker = Colors[floor(random(0,3))];


  Rectangle () {
  }

  void update() {
    Size++;
    if(this.Size > height) {
      this.Size = 0;
      x = random(0,width);
      y = random(0,height);
    }
  }

  void draw() {
    rectMode(CENTER);
    fill(colorPicker);
    rect(x,y,Size,Size);
  }
}


