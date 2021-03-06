
//Second sketch of character for Interactive Digital Media

/*You can now make his eyes shift from black to red (and vice versa),
and you can click right mouse button to make a white star
or left mouse button to make a gray star*/

void setup() {
  size(500,500);
  background(0);
  strokeWeight(2.5);
}
  
void draw() {
 fill(0,150,0);
 stroke(100);
 smooth();
 ellipse(250,100,60,80);//head
 line(240,115,250,125);//left mouth
 line(250,125,260,115);//right mouth
 line(250,140,250,300);//string
 fill(0,130,0);
 triangle(250,140,238,150,262,150);//tie
 fill(255);
 stroke(0);
 line(240,115,250,125);//left mouth
 line(250,125,260,115);//right mouth
 
 float x1 = map(mouseX,10,490,0,255);
 stroke(x1,0,0);
 fill(0);
 ellipse(240,100,10,10);//left eye
 ellipse(260,100,10,10);//right eye
 noStroke();
 noFill();
 
 stroke(125);
 fill(255);
 ellipse(250,500,500,250);//moon
 stroke(125);
 fill(150);
 ellipse(128,445,60,30);//L dark shadow
 fill(200);
 ellipse(125,450,50,25);//L light shadow
 
 fill(150);
 ellipse(323,397,40,20);//R dark shadow
 ellipse(260,451,22,11);//mouth dark
 fill(200);
 ellipse(320,400,30,15);//R light shadow
 ellipse(258,453,18,9);//mouth light
 
 stroke(255);
 point(50,230);//1st star
 point(180,220);//3
 point(325,330);//5
 point(403,220);//7
 stroke(150);
 point(150,210);//2
 point(300,275);//4
 point(400,300);//6

 fill(240,116,22);
 stroke(240,120,22);
 ellipse(0,0,50,50);//sun
}
 
 void mousePressed() {
  if(mouseButton == LEFT) {
    stroke(255);
    point(mouseX,mouseY);
  } else if (mouseButton == RIGHT) {
    stroke(150);
    point(mouseX,mouseY);
  }
}


