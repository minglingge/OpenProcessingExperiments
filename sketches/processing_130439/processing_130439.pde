
float a,b,x,y; 
void setup() {
size(800,750);
background (33,0,161);
 stroke(255);
  a = height/2;
  b = 50;
  x = random(50,200);
  y = random(25,45);
}


void draw() {
   
  background(33,0,161);
  ellipse(a,b,x,y); 
  ellipse(a-15,b+25,x+10,y+5);
  ellipse(a-75,b,x-20,y-10);
  ellipse(a-200,b+400,x+10,y-10);
  ellipse(a-220,b+430,x+50,y-10);
  a = a + 0.5;
  if (a > 850) { 
    a = -50; 
  }
  {
  stroke(15);
  strokeWeight(3);
  fill(15);
  line(0,650,800,650);
  noStroke();
  triangle(380,300,580,300,480,200);
  triangle(630,630,635,651,640,640);
  triangle(200,550,700,550,500,700);
  triangle(430,690,380,600,480,600);
  triangle(530,690,480,600,580,600);
  triangle(580,680,530,550,630,600);
  triangle(310,600,330,608,302,615);
  triangle(258,650,260,658,250,665);
  fill(0);
  triangle(335,100,445,100,390,10);
  fill(30);
  triangle(420,100,445,100,390,10);
  fill(0);
  ellipse(390,100,110,25);
  fill(30);
  triangle(580,300,580,400,480,200);
  ellipse(450,550,500,40);
  noStroke();
  fill(0);
  rect(350,100,80,300);
  fill(25);
  rect(400,100,30,300);
  fill(0);
  rect(300,300,300,250);
  noStroke();
  fill(25);
  quad(600,300,650,400,650,550,600,550);
  fill(255,236,12);
  rect(370,150,5,10);
  rect(390,200,5,10);
  rect(370,250,5,10);
  
 
 
}
}



