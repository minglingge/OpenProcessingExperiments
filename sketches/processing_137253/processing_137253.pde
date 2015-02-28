
/*
Just an idea from giff, to spend with greative way my time at the boat. 
Igoumeninja -> Corfu 29 - 03 - 2012
Aris Bezas
*/

MyCircle kykloi[];
int numKykloi = 24;
color[] myColors = {#FFCC00, #B92424, #30622D, #2D624F, #2D4462, #622D61};

void setup()  {
  size(400,400);
  smooth();
  noStroke();
  kykloi = new MyCircle[numKykloi];
  for (int i = 0; i < numKykloi; i++)  {
    kykloi[i] = new MyCircle((i+1)/random(8,10), (i+1)*random(10,20), myColors[i%myColors.length]);
  }
}

void draw()  {
  fill(0,3);
  rect(-10,-10, width+20, height +20);
  for (int i = 0; i < numKykloi; i++)  {
    kykloi[i].draw();
  }
}

class MyCircle  {
  float speed, trans;
  color myColor;

  MyCircle(float speedVar, float transVar, color myColorVar) {
    speed = speedVar;
    trans = transVar;
    myColor = myColorVar;
  }
  
  void draw()  {
    fill(myColor,20);
    ellipse(width/2,height/2, ((speed*frameCount)%width - trans), ((speed*frameCount)%width- trans));
  }
}













