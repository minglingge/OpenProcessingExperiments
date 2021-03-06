
boolean button = false;
float robotX;
float robotY;
float speed = -10;

void setup()
{
  size(600, 400);
  robotX = width/2;
  robotY = height + 100;
  smooth();
  frameRate(30);
}

void draw() {
background(abs(random(255)),abs(random(255)),abs(random(255)));
strokeWeight (3);
//ROBOT HEAD
//coloring the head
stroke(174,223,228); 
fill(174,223,228);
rect (robotX-60,robotY-150,120,120);
rect (robotX-80,robotY-130,160,80); 
//antennae
stroke(0);
line (robotX, robotY-150, robotX-10, robotY-170);
line (robotX, robotY-150, robotX+10, robotY-170);
//head border lines
line (robotX-60, robotY-150, robotX+60, robotY-150);
line (robotX-60, robotY-30, robotX+60, robotY-30);
line (robotX-80, robotY-130, robotX-80, robotY-50);
line (robotX+80, robotY-130, robotX+80, robotY-50);
//head's corners
ellipseMode(CORNER);
arc(robotX-80, robotY-150, 40, 40, PI, TWO_PI-PI/2);
arc(robotX+40, robotY-150, 40, 40, TWO_PI-PI/2, TWO_PI);
arc(robotX+40, robotY-70, 40, 40, 0, PI/2);
arc(robotX-80, robotY-70, 40, 40, PI/2, PI);
//eyes
stroke(0);
line(robotX-40, robotY-120, robotX-60, robotY-125);
line(robotX-40, robotY-120, robotX-60, robotY-115);
line(robotX+40, robotY-120, robotX+60, robotY-125);
line(robotX+40, robotY-120, robotX+60, robotY-115);
//blush
ellipseMode(CENTER);
stroke(247,165,170);
fill(247,165,170); 
ellipse(robotX-50,robotY-100,10,10);
ellipse(robotX+50,robotY-100,10,10);
//mouth
stroke(0); 
line (robotX-20, robotY-100, robotX+20, robotY-100);

//ROBOT BODY
fill(174,223,228);
//body
rect (robotX-25,robotY-30,50,50);
//button
ellipse (robotX,robotY-5,30,30);
line (robotX-5, robotY-10, robotX-5, robotY);
line (robotX+5, robotY-10, robotX+5, robotY);
//hands
line (robotX-25, robotY-30, robotX-35, robotY);
line (robotX+25, robotY-30, robotX+35, robotY);
//legs
line (robotX-15, robotY+20, robotX-15, robotY+40);
line (robotX+15, robotY+20, robotX+15, robotY+40);
//move
  if (button) {
    robotX = mouseX;
    robotY = mouseY;
  } else {
    robotX = int (random(0,600));
if (robotY >= height+100) {
    speed = -5;
} 
if (robotY <= 0) {
    speed = 5;
}
robotY = robotY + speed; }
}
//button
void mousePressed() {
    button = !button;
//say hello
println("I'm going crazy!");
}

