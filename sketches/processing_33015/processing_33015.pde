
void setup() {
  size (400, 400);
}


void draw() {
  background (0, 255, 0);

  noFill();
  beginShape ();
  vertex(0, 300);
  bezierVertex(0, 300, 100, 325, 75, 250); 
  endShape();

  noFill();
  beginShape ();
  vertex(75, 250);
  bezierVertex(60, 130, 120, 150, 150, 175); 
  endShape();

  noFill();
  beginShape ();
  vertex(150, 175);
  bezierVertex(200, 200, 175, 150, 130, 100); 
  endShape();

  noFill();
  beginShape ();
  vertex(130, 100);
  bezierVertex(75, 25, 150, 0, 250, 80); 
  endShape();
  
  noFill();
  beginShape ();
  vertex(250, 80);
  bezierVertex(400, 175, 260, 125, 275, 225); 
  endShape();
  
   noFill();
  beginShape ();
  vertex(275, 225);
  bezierVertex(275, 280, 275, 325, 230, 300); 
  endShape();
}


