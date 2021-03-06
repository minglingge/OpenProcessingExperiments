
// Christian Murphy
// October 2013
// Open Processing GLP rights reserved

PImage img;
float offset = 0;
float easing = 0.05;

int NUM_THINGS = 7;
 
// creating an (empty) global array with a
// capacity of 10 elements of type Ball
Thing[] things = new Thing[NUM_THINGS];
 
void setup() 
{
  size(1200, 600); 
  smooth();
  
 img = loadImage("print1.png");
 
 frameRate(55);
 



 
  for (int i = 0; i < NUM_THINGS; i++) 
  {
    things[i] = new Thing();   // populating the array
 
    things[i].x = random(0, width);
    things[i].y = random(0, height);
    things[i].direction = random(0, 360);
  }
}
 
void draw() 





{ 
  //bg is not conceptually part of the class
 //background(250);
 
 tint(70, 20);
 image(img, 0, 0, 1200, 600);
 
  //call the method update everytime I draw
  for (int i = 0; i < NUM_THINGS; i++)
  {
    things[i].update();
  }
}

 
class Thing
{
  //parameters of my thing
  float myDiameter = 7;
  float x;
  float y;
  color col = #00FFFF;
  float speed = .5;
  float direction = 0;
 
  //Constructor function - same name as the class
  Thing()
  {
  /*
  like the setup in the main sketch the constructor function 
  is executed once as soon as the object is created
  */
  }
 
  //method(s) for my thing
  void update()
  {
    /*
    convert direction into radians
     break it down to the sinus and cosinus
     which are the vertical and horizontal component 
     of the angle then multiply for speed 
     (because in trigonometry you always work with a radius of 1)
     */
    float dX = cos(radians(direction))*speed;
    float dY = sin(radians(direction))*speed;
 
 //float dq = (mouseX-img.width/2) - offset;
 //offset += dX * easing;
    //the result are the steps in the vertical and horizontal direction
    x = x + dX;
    y = y + dY;
 
    //direction++;
 
    //managing borders
    if (x > width)
    {
      x = 0;
    }
 
    if (x < 0)
    {
      x = width;
    }
 
    if (y > height)
    {
      y = 0;
    }
 
    if (y < 0)
    {
      y = height;
    }
 
    //draw the thing  
    tint(255, 10);
    stroke(255, 231, 111, 43);
    strokeWeight(2);
    ellipse( x, y, myDiameter, myDiameter);
    rect(y, x, myDiameter, myDiameter);
    triangle(x, y, myDiameter, myDiameter, random(25) , 0);
    triangle(y, x, myDiameter, myDiameter, 0, random(25));
    fill(255, 231, 111, 100);
    ellipse(y, x, myDiameter, myDiameter);
    noFill();
    
    //user control
    tint(5, 70);
    fill(255, 255, 255, 7);
    ellipse(mouseX, mouseY, 89, 89);
    noStroke();
    strokeWeight(4);
    tint(255, 88);
    fill( 255, random(100, 255), random(70, 100)); 
    ellipse(mouseX, mouseY, 5, 5);
    
    
    
  

  
   
    /*
    //example of interaction among things//
    //every object scans the other objects using the global array
    for (int i = 0; i < NUM_THINGS; i++)
    {
      //temporary variable to store the other
      Thing other = things[i];
 
      //it's not a good idea to make theinteract with itself
      //this points to the specific instance
      if (this != other)
      {
        //after I determine it's another thing I check the distance
        if (dist(x, y, other.x, other.y)<100)
        {
          //and do something
          stroke(255);
          line(x, y, other.x, other.y);
        }
      }
    }
    */
    ////////////
  }
}



