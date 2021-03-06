
int numFrames = 8;
float timer = 0.0;
float stop = -1000;
PImage[] images = new PImage[numFrames];
PImage haggarrun;
PImage haggardriver;
int xMove = 0;
int backgroundIndex = 0;

void setup(){
  size(400,400);
  background(255);
  frameRate(30);
  
  images[0] = requestImage("background1.jpg");
  images[1] = requestImage("background2.jpg");
  images[2] = requestImage("background3.jpg");
  images[3] = requestImage("background4.jpg");
  images[4] = requestImage("background5.jpg");
  images[5] = requestImage("background6.jpg");
  images[6] = requestImage("background7.jpg");
  images[7] = requestImage("background8.jpg");
  images[8] = requestImage("background9.jpg");
  images[9] = requestImage("background10.jpg");
  
  haggarrun = loadImage ("haggarrun.gif");
  haggardriver = loadImage ("haggardriver.gif");
  
  }
   
void draw(){
  timer= timer+(1.0/30.0);
  println(timer);
  if (timer > 3)
  {
    backgroundIndex += 1;
    timer = 0;
  }
  if (backgroundIndex < 0 || backgroundIndex >= images.length)
  {
    backgroundIndex = 0;
  }
  image(images[backgroundIndex],0,0,width,height);
   
  if (timer > 0)
  {
    xMove = xMove + 4;
    if (backgroundIndex == 0 || backgroundIndex <= 5)
    {
      image(haggarrun, xMove, 200);
    }
    if (backgroundIndex >= 6)
    {
      image(haggardriver, xMove, 200);
    }
  }
   
  if (xMove > width)
    {
      xMove = 0;
    }
}
   
void keyReleased()
{
  if (key == 'p')
  {
    timer = stop;
  }
  if (key == 's')
  {
    timer = 0;
  }
}


