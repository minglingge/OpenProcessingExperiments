
float y = 0.0;
float x = 0.0;
float c = 2;
int direction = 1;
int rainTool = -10;

void setup() { 
  size(100,100); // Set the size of the window 
  smooth();
  
  
}

void mousePressed() {
  stroke(50);
  strokeWeight(3);
  line(47,55,42,55); // left eyebrow
  line (55,49, 58,42); //right eyebrow
  fill(20);
  triangle(60,60,55,64,60,65);//moustache
  println("Stop touching me!");
  
}
void draw() {
  frameRate (20);
  println (frameCount);
  background (0,y*6,y*9.8);
  
  fill(70,200,255,100);
  stroke(100);
  strokeWeight(5);
  ellipse(60,90,50,75);//body
  
  fill(255);
  strokeWeight(2);
  ellipse(30,80,10,10);//left hand

  fill(255);
  strokeWeight(2);
  ellipse(85,65,10,10);//right hand
  
  drawHead();
  /*arch(c);

  if (c < 50) {
    c += 0.5;
  } 
  else {
    c = 5;
  }*/
  if ((keyPressed == true) && ((key == '1') || (key == '2'))) { 
    rainTool++; 
    } else {
      if ((keyPressed == true) && (key == '8')) {
        rainTool = 5;
      }
      line(rainTool, 0, rainTool, 100);
    }
    
  if(mousePressed == true) {
    fill(0,0,0,255);
    stroke(0,0,0,255);
  }else{
    fill(255,200,0,220);
  }
  //fill(255,200,0,220);
  line(60,60,55,64);//mouth
  triangle(30,25,10,80,90,20);//farmer hat
  
  noStroke();
  fill(153);
  ellipse(45,60,5,5);//lefteye
  fill(153);
  ellipse(60,50,5,5);//righteye
  
  // Cloud
  noStroke();
  fill(255,200);
  ellipse ( y, 15, 25,10);
  ellipse ( y, 20, 40,10);
  y += 1.5;
  if (y>120) {
    y = 0.0;
  }
  //The Sun
  noStroke();
  fill(255,195,0);
  ellipse(x*0.3,0,y*0.4,50);
  if (x>45) {
    x = 0.0;
  }
}

void drawHead() {
  if(mousePressed == true) {
    fill(255,50,0);
    stroke(20);
  }else{
    fill(255);
  }
  strokeWeight(2); 
  ellipse(50,50,50,50);//head

}

/*void arch(float curvature) {
  float y = 10.0;
  float sw = (21.0 - curvature) / 1.0;
  strokeWeight(3);
  noFill();
  beginShape();
  vertex(5.0, y);
  bezierVertex(3.0, y-curvature, 6.0, 16.0, 10.0, 8.0);
  bezierVertex(23.0, 18.0, 28.0, y-curvature, 28.0, y);
  endShape();
}*/







