
float cloudX = 50;
float cloudY = 85;
float cloudX2 = 200;
float cloudY2 = 245;
int cloudXY_point= 45;
PImage myImage;
float back = -1;
boolean sun = false;

void setup()
{
  size (400, 400);
  myImage = loadImage ("paradise.jpg");
  //background (myImage);
}


void draw ()
{
  background (215, 146, 250);
  image (myImage, 0, 0, 400, 400);
  fill (255);
  noStroke();
  ellipseMode(CENTER);
  ellipse (cloudX, cloudXY_point, 100, 50);
  ellipse (cloudY, cloudXY_point, 100, 50);
  ellipse (cloudX2, cloudXY_point, 100, 50);
  ellipse (cloudY2, cloudXY_point, 100, 50);
  cloudX = cloudX + .1;
  cloudY = cloudY + .1;
  cloudX2 = cloudX2 + .1;
  cloudY2 = cloudY2 + .1;
  fill (39, 123, 229);
  rect (0,300, width, height);
  ellipse(0, 320, 150, 80);
  ellipse(120, 320, 130, 80);
  ellipse(220, 320, 130, 80);
  ellipse(320, 320, 130, 80);
  ellipse (420,320, 130, 80);
  
  if( mousePressed)
  {
    sun = true;
  }
  else
  {
    sun = false;
  }
  
  if (sun)
  {
    strokeWeight(3);
    stroke(240,242,31,mouseY);
    fill (242,250,25, mouseY);
    ellipseMode (CENTER);
    ellipse (10, 70, 180,180);
  }
  
}

void mousePressed()
{
 
  ellipseMode(CENTER);
  ellipse (cloudX, cloudXY_point, 100, 50);
  ellipse (cloudY, cloudXY_point, 100, 50);
  ellipse (cloudX2, cloudXY_point, 100, 50);
  ellipse (cloudY2, cloudXY_point, 100, 50);
  cloudX = cloudX + back;
  cloudY = cloudY + back;
  cloudX2 = cloudX2 + back;
  cloudY2 = cloudY2 + back;
  sun = true;
}
  



