
PImage wheel;
color Brush;



void setup()
{
size(400,400);
wheel = requestImage("color wheel.png");
colorMode(HSB,360,100,100);
background(0,0,100);
}
void draw()
{
 
  image(wheel,0,0,100,100);
  
  noStroke();
  if(mousePressed==true)
  {
    if(mouseButton==RIGHT)
    {
      Brush = get(mouseX,mouseY);}
  }
  if(mouseButton==LEFT)
  {
    fill(Brush);
  pushMatrix();
  ellipse(mouseX,mouseY,10,10);
  popMatrix();
  }
  if(mouseButton==CENTER)
  {
    
    
    pushMatrix();
   
    fill(random(360),random(100),random(100));
    noStroke();
    smooth();
    rect(mouseX+20,mouseY-30,20,20);
    rect(mouseX+60,mouseY-40,30,30);
    rect(mouseX+80,mouseY-50,15,15);
    translate(mouseX,mouseY);
   
    rotate(rot);
    
  popMatrix();
  }
  if(keyPressed)
  {
    if(key=='1')
    {
      pushMatrix();
      scale(random(10));
      rotate(random(360));
      fill(random(360),random(50,100),random(50,100));
      ellipse(width/2,height/2,mouseX,mouseY);
      rect(width/2,height/2,mouseX,mouseY);
      
      translate(mouseX,mouseY);
     
      
      popMatrix();
    }
    else if(keyPressed)
    {
      if(key=='2')
      {
        background(0,0,100);
     
      }
    }

  



}
  
  
  
}


