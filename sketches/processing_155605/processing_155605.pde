
void setup () {
  size (800,800);
}

void draw () {
   background (mouseX/3,mouseX+mouseY/6,mouseY/3);
     fill (mouseX/15,80,mouseY/15);
rect (240,250,290,450);
ellipse (390,300,340,400);
fill (150,0,0);
rect (240,250,290,150);
fill (350,350,350);
rect (240,250,290,75);
line (265,250,265,325);
line (290,250,290,325);
line (315,250,315,325);
line (340,250,340,325);
line (365,250,365,325);
line (390,250,390,325);
line (415,250,415,325);
line (440,250,440,325);
line (465,250,465,325);
line (490,250,490,325);
line (515,250,515,325);
ellipse (335,200,40,50);
ellipse (490,200,40,50);
line (240,700,215,775);
line (530,700,555,775);
fill (0);
ellipse (340+((mouseX-400)/36),200+((mouseY-400)/60),25,25);
ellipse (490+((mouseX-250)/36),200+((mouseY-250)/60),25,25);
fill (46,83,53);
triangle (290,140,315,50,340,115);
triangle (440,115,465,50,490,140);
fill (255,120,175);
triangle (295,135,315,60,335,110);
triangle (445,110,465,60,485,135);
fill (mouseX/15,80,mouseY/15);
arc (380,600,240,100,HALF_PI-HALF_PI,PI);
line (240,450,215+((mouseX-600)/5),600+((mouseY-600)/5));
line (530,450,560+((mouseX-600)/5),600+((mouseY-600)/5));
}
