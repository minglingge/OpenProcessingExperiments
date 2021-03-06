
ArrayList circles;

void setup()
{
  size(600,600);
  //frameRate(1);
  circles = new ArrayList();
}

void draw()
{
  //background(150);
  for (int i = 0; i<circles.size(); i++)
  {
    Circle c = (Circle) circles.get(i);
    c.display();
    c.update();
    fill(150,10);
    rect(0,0,width,height);
  }
}

void mousePressed()
{
  circles.add(new Circle(circles.size()));
}


class Circle
{
  PVector pos, posOut, vel, acc;
  float pulseFreq, diameter, posDist;
  color rgb;
  int a;
  int a1;



  Circle(int i)
  {
    pos = new PVector (mouseX, mouseY);
    posOut = new PVector (0,0);
    pulseFreq = map(random(1), 0, 1, .01, .06);
    rgb = color(random(255), random(255), random(255));
    diameter = 20;
    vel = new PVector (0,0);
    a = 0;
    a1 = 2;
    
  }

  void update()
  {
    
    for (int i = 0; i<circles.size(); i++)
    {
      Circle c = (Circle) circles.get(i);
      posDist = PVector.dist(pos, c.pos);
    
    
    
    //diameter = map(sin(frameCount*pulseFreq), 1, -1, 20, 40);
    //--------
    acc = new PVector (c.pos.x - pos.x, c.pos.y - pos.y);
    //acc.mult(posDist);
    acc.mult(.00005);
    
    collision();
    
    vel.add(acc);
    //--------
    
    speedCap();
    
    //---------
    pos.add(vel);
    //-----------

    border(); 
    
    
    
    
    }
    
    //-----------
  }

  void display()
  {
    
    a = a+a1;
  
  
  if (a <= 0)
  {
    a1 = -a1;
  }
  
  if (a >=255)
  {
    a1 = -a1;
  }
    
    
    //    ellipse(pos.x, pos.y, map(sin(frameCount*pulseFreq),0,1,20,40), map(sin(frameCount*pulseFreq),0,1,20,40));
    fill(rgb,a);
    
    stroke(rgb,a);
    //stroke(0,a);
    ellipse(pos.x, pos.y, diameter, diameter);
    //fill(rgb);  placing here changes color of first circle each click while rest are independent
  }
  
  void border()
  {
    if (pos.x> width)
    {
      vel.x = -vel.x*.7;
    }
    
    if (pos.x < 0)
    {
      vel.x = -vel.x*.7;
    }
    
    if (pos.y > height)
    {
      vel.y = -vel.y*.7;
    }
    
    if (pos.y < 0)
    {
      vel.y = -vel.y*.7;
    }
    
  }
  
  void speedCap()
  {
      if ( vel.x > 5)
    {
      vel.x = 5;
    }
    
    if ( vel.x < -5)
    {
      vel.x = -5;
    }
    
    if (vel.y > 5)
    {
      vel.y = 5;
    }
    
    if (vel.y < -5)
    {
      vel.y = -5;
    }
  }
  
  void collision()
  {
    for (int i = 0; i<circles.size(); i++)
    {
      Circle c = (Circle) circles.get(i);
      
       if (PVector.dist(pos,c.pos) < diameter/2 && PVector.dist(pos,c.pos) > 0)  //or assign an id to ech individual to check agaisnt self
       {
         vel.mult(-1);
       }

      //if (PVector.dist(pos,c.pos) < diameter/2 )
    //  {
      //  vel.mult(-1);
     // }
    }
     
  }

}



