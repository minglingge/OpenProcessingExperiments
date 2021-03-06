
//HW_2 - Tues/Thurs 11:30
//Copyright J William Gott 2014

size(400,400);
background(255,252,157);
noStroke();

float x= 250;
float y= 250;
float wd= 100;
float ht= 100;


//hair + shadow
  fill (180);
  ellipse(x, y-0.3*ht, 1.75*wd, 0.95*ht);
  fill (200);
  ellipse(x, y-0.35*ht, 1.75*wd, 0.85*ht); 
  
//face + shadow
  fill(255,223,152);
  ellipse(x,y, 1.5*wd, 1.5*ht);
  fill(255,236,193);
  ellipse(x,y-.07*ht, 1.4*wd, 1.35*ht);

//eyes
  //sclera
    fill(255);
    ellipse(x-0.25*wd, y-0.3*ht, 0.3*wd, 0.3*ht);
    ellipse(x+0.25*wd, y-0.3*ht, 0.3*wd, 0.3*ht);
  //iris
    fill(0);
    ellipse(x-0.20*wd, y-.25*ht, 0.15*wd, 0.15*ht);
    ellipse(x+0.3*wd, y-.25*ht, 0.15*wd, 0.15*ht);
  
//nose (initial J)
  stroke(255,223,152);
  noFill();
  strokeWeight(0.04*wd);
  beginShape();
  curveVertex(x, y - 0.25*ht);
  curveVertex(x, y - 0.2*ht);
  curveVertex(x, y - 0.1*ht);
  curveVertex(x + 0.1*wd, y);
  curveVertex(x - 0.1*wd, y);
  curveVertex(x,y);
  endShape();
  
//dat stache (initial W)
  stroke(200);
  noFill();
  strokeWeight(0.075*wd);
  line(x - 0.4*wd, y + 0.05*ht, x - 0.25*wd, y + 0.15*ht);
  line(x - 0.25*wd, y + 0.15*ht, x, y + 0.1*ht);
  line(x + 0.4*wd, y + 0.05*ht, x + 0.25*wd, y + 0.15*ht);
  line(x + 0.25*wd, y + 0.15*ht, x, y + 0.1*ht);
  
//mouth
  noStroke();
  fill(0);
  ellipse(x, y+ .2*ht, 0.1*wd, 0.05*ht);





