
int x = 500;
int y = 500;
 
void setup() {
  size(500,500);
  ellipseMode(CENTER);
  frameRate(25);
}
  
void draw() {
  background(90);
   
//Eyes
  fill(255, 255, 255);
  ellipse(x/2 - 80, y/2, 100, 100);
  ellipse(x/2 + 80, y/2, 100, 100);
   
float x1 = map(mouseX, 0, width, 145, 195);
float y1 = map(mouseY, 0, height, 225, 275);
float x2 = map(mouseX, 0, width, 305, 355);
float y2 = map(mouseY, 0, height, 225, 275);
    
//eyeball
  fill(0, 204, 255);
  ellipse(x1, y1, 35, 35);
  ellipse(x2, y2, 35, 35);
    
//pupil
  fill(0);
  ellipse(x1, y1, 10, 10);
  ellipse(x2, y2, 10, 10);
}



