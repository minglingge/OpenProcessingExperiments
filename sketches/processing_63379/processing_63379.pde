

  int space = 33;

  size(400,400);
  smooth();
  noStroke();

  background(255);
  
   for(float xPos = 50; xPos <= width-50; xPos = xPos + space){
     for(float yPos = 50; yPos <= height-50; yPos = yPos + space){
       if(random(100) > 30){
         fill(random(50,250), 100, 100, 100);
         ellipse(xPos, yPos, random(20,50), random(20,50));
       }else{
         ellipse(xPos, yPos, random(10,20), random(10,20));
       }
     }
   }

