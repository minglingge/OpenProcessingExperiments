
void setup () {
size (500,500);
}

void draw () {
background (255);
strokeWeight(3);
  
  //verticales
line(50,0,50,300);
line(100,20,100,100);
line(100,300,100,500);
line(200,0,200,470);
line(325,0,325,500);
line(450,0,450,500);
line(480,100,480,400);

  //horizontales
line(50,20,200,20);
line(200,65,450,65);
line(0,100,500,100);
line(50,225,450,225);
line(0,300,325,300);
line(200,400,500,400);
line(0,425,100,425);
line(100,470,450,470);



if (mousePressed==true) {
  
fill(0);
rect(0,0,50,100);
fill(235);
rect(50,0,150,20);
fill(255,0,0);
rect(50,20,50,80);
fill(40,0,200);
rect(50,100,150,125);
fill(0);
rect(50,225,150,75);
fill(235);
rect(0,300,100,125);
fill(255,0,0);
rect(100,300,100,170);
fill(0);
rect(100,470,225,30);
fill(255,255,0);
rect(200,65,125,35);
fill(255,255,0);
rect(200,100,125,125);
fill(40,0,200);
rect(200,400,125,70);
fill(235);
rect(325,0,125,65);
fill(40,0,200);
rect(325,65,125,35);
fill(235);
rect(325,100,125,125);
fill(0);
rect(325,200,125,200);
fill(255,255,0);
rect(325,400,125,70);
fill(235);
rect(325,470,125,30);
fill(255,255,0);
rect(450,0,50,100);
fill(255,0,0);
rect(450,100,30,300);
}}

