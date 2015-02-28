
//Coded by Pierre J. Goldstein
void setup()
{
  size (400,400);
  background (0);
  noStroke();
  smooth();
}
//Body for Manzinger Z
void draw()
{
  //Control Unit
  noStroke();
  fill(157,16,16);
  ellipseMode(CENTER);
  ellipse(200,100,50,50);
  fill(75);
  triangle(200,25,190,75,210,75);
  //Eyes
  smooth();
  fill(91,111,232,200);
  rectMode(RADIUS);
  rect(190,95,5,5);
  rectMode(RADIUS);
  rect(210,95,5,5);
  triangle(150,90,190,90,190,101);
  triangle(250,90,210,90,210,101);
  //Mouth
  stroke(0);
  strokeWeight(3);
  line(200,110,200,124);
  line(195,110,195,123);
  line(190,110,190,122);
  line(205,110,205,123);
  line(210,110,210,122);
  //Crown
  noStroke();
  fill(249,250,15,1);
  triangle(150,25,190,100,190,75);
  triangle(250,25,210,100,210,75);
  //Neck
  fill(126,126,122,2);
  rectMode(RADIUS);
  rect(200,125,20,10);
  //Chest
  fill(0);
  stroke(255);
  strokeWeight(3);
  rectMode(RADIUS);
  rect(200,160,50,25);
  line(200,135,200,185);
  //Torso
  triangle(152,185,200,185,200,250);
  triangle(248,185,200,185,200,250);
  line(185,200,215,200);
  line(190,215,210,215);
  line(195,230,205,230);
  //Shoulders
  fill(157,16,16);
  noStroke();
  ellipseMode(RADIUS);
  ellipse(125,160,25,25);
  ellipse(275,160,25,25);
  //Shoulder Guard
  stroke(249,250,15);
  strokeWeight(3);
  fill(249,250,15);
  triangle(100,135,150,135,150,150);
  triangle(250,135,300,135,250,150);
  //Arms
  noStroke();
  fill(64);
  rectMode(RADIUS);
  rect(125,185,20,5);
  rect(275,185,20,5);
  fill(157,16,16);
  rectMode(RADIUS);
  rect(125,230,15,40);
  stroke(249,250,15);
  fill(249,250,15);
  line(110,225,139,225);
  line(110,268,139,268);
  noStroke();
  fill(157,16,16);
  rectMode(RADIUS);
  rect(275,230,15,40);
  stroke(249,250,15);
  fill(249,250,15);
  line(290,225,260,225);
  line(290,268,260,268);
  //Pelvis
  noStroke();
  fill(64);
  rectMode(RADIUS);
  rect(200,260,40,10);
  triangle(190,270,210,270,200,280);
  //Legs
  fill(91,111,232,200);
  rect(170,295,20,25);
  rect(230,295,20,25);
  stroke(157,16,16);
  strokeWeight(3);
  fill(249,250,15);
  ellipseMode(RADIUS);
  ellipse(170,330,20,10);
  ellipse(230,330,20,10);
  noStroke();
  fill(91,111,232);
  triangle(155,340,185,340,170,390);
  triangle(215,340,245,340,230,390);
  //Feet
  stroke(249,250,15);
  strokeWeight(3);
  fill(157,16,16);
  triangle(170,350,155,400,185,400);
  triangle(230,350,215,400,245,400);
  //Hands
  noStroke();
  fill(91,111,232);
  rectMode(RADIUS);
  rect(125,280,15,10);
  rect(275,280,15,10);
  stroke(255);
  strokeWeight(2);
  line(125,280,125,290);
  line(132,280,132,290);
  line(118,280,118,290);
  line(275,280,275,290);
  line(268,280,268,290);
  line(282,280,282,290);
  
}

