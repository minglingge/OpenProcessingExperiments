
/*-----------------------------
Robot 

Created 26 January 2015
By Catherine Lee


http://www.openprocessing.org/sketch/182970
-----------------------------*/


size(600,700);
background(140,200,0);
strokeWeight(2);
//center
int a = 300;

//left leg
int b = 250;

//length of leg part
int c = 30;

//numbers
//257.5 is center of the left side

//bubble
noStroke();
ellipse(480,170,90,130);
triangle(480,140, 480,190, 420,200);

ellipse(120,465,90,130);
triangle(120,445, 120,485, 185,430);
stroke(0);

//!
fill(120);
stroke(0);
strokeWeight(2);
quad(475.5,145, 484.5,145, 482,180, 476,180);
rect(476,187,6,6);

//...

rect(100,459,6,6);
rect(117,459,6,6);
rect(134,459,6,6);
stroke(0);
strokeWeight(2);

//head attachments
fill(150);
rect(252.5,80,10,20);
rect(252.5,82.5,10,20);
rect(252.5,85,10,20);
rect(252.5,87.5,10,20);
rect(252.5,90,10,20);
rect(252.5,92.5,10,20);
rect(252.5,95,10,20);
rect(252.5,97.5,10,20);

fill(255,170,115);
line(180,160,215,160);
line(385,160,420,160);
ellipse(180,160,20,20);
ellipse(420,160,20,20);
fill(150);


stroke(255,100,100);
line(a,70, a-10,50);
line(a-10,50, a-20,70);
line(a-20,70, a-30,50);
line(a,70, a+10,50);
line(a+10,50, a+20,70);
line(a+20,70, a+30,50);

stroke(0);

//300-252.5 = 42.5, 300+42.5-5=337.5
rect(337.5,80,10,20);
rect(337.5,80,10,20);
rect(337.5,82.5,10,20);
rect(337.5,85,10,20);
rect(337.5,87.5,10,20);
rect(337.5,90,10,20);
rect(337.5,92.5,10,20);
rect(337.5,95,10,20);
rect(337.5,97.5,10,20);

//head
fill(50,255,230);
rect(215,100,170,150,10);


//face
fill(255);
ellipse(a + 45,160,40,40);
fill(0);
ellipse(a+55,160,20,20);
triangle(240,80, 257.5,30, 275,80);
triangle(325,80, 342.5,30, 360,80);

fill(255);
triangle(240,180, 240,140, 275,160);
fill(0);
triangle(250,173, 250,147, 275,160);



line(270,220,300,200);
line(300,200, 330,220);
//quad(325,125, 365,115, 365,130, 325,140);
//rect(325,120,40,10);


//body
fill(255,140,100);
rect(210,280,180,170,10);
fill(255);
rect(240,310,30,60,4);
fill(0);
rect(240,330,20,40,4);

//save color
fill(180,200,15);


fill(0);
rect(240,380,120,40);
fill(255);
rect(240,380,30,20,4);
rect(270,380,30,20,4);
rect(300,380,30,20,4);
rect(330,380,30,20,4);

fill(255);
ellipse(292,325,20,20);
ellipse(292,355,20,20);
ellipse(317,325,20,20);
ellipse(317,355,20,20);
ellipse(342,325,20,20);
ellipse(342,355,20,20);

fill(100,255,215);
ellipse(297,325,10,10);
ellipse(292,350,10,10);
ellipse(314,328,10,10);
ellipse(319,359,10,10);
ellipse(340,321,10,10);
ellipse(337,355,10,10);

//neck
fill(150);
rect(292.5,b,15,c);
rect(292.5,b+2.5,15,c-2.5);
rect(292.5,b+5,15,c-5);
rect(292.5,b+7.5,15,c-7.5);
rect(292.5,b+10,15,c-10);
rect(292.5,b+12.5,15,c-12.5);
rect(292.5,b+15,15,c-15);
rect(292.5,b+17.5,15,c-17.5);
rect(292.5,b+20,15,c-20);
rect(292.5,b+22.5,15,c-22.5);
rect(292.5,b+25,15,c-25);
rect(292.5,b+27.5,15,c-27.5);

//shading for neck


fill(150);
//left leg
int d = 450;
int e = 50;

rect(250,d,15,e);
rect(250,d+2.5,15,e-2.5);
rect(250,d+5,15,e-5);
rect(250,d+7.5,15,e-7.5);
rect(250,d+10,15,e-10);
rect(250,d+12.5,15,e-12.5);
rect(250,d+15,15,e-15);
rect(250,d+17.5,15,e-17.5);
rect(250,d+20,15,e-20);
rect(250,d+22.5,15,e-22.5);
rect(250,d+25,15,e-25);
rect(250,d+27.5,15,e-27.5);
rect(250,d+30,15,e-30);
rect(250,d+32.5,15,e-32.5);
rect(250,d+35,15,e-35);
rect(250,d+37.5,15,e-37.5);
rect(250,d+40,15,e-40);
rect(250,d+42.5,15,e-42.5);
rect(250,d+45,15,e-45);
rect(250,d+47.5,15,e-47.5);

rect(250,600,15,30);
rect(250,600+2.5,15,30);
rect(250,605,15,25);
rect(250,607.5,15,25);
rect(250,610,15,20);
rect(250,612.5,15,25);
rect(250,615,15,15);
rect(250,617.5,15,25);
rect(250,620,15,10);
rect(250,622.5,15,10);
rect(250,625,15,5);
rect(250,627.5,15,25);

//trapezoid
fill(255,255,100);
quad(240,500, 275,500, 285,600, 230,600);
fill(240,240,20);
noStroke();
quad(246,502, 270,502, 275,599, 240,599);

//left foot
fill(50,255,230);
stroke(0);
rect(a-80,630,50,40,5);

//right foot
int f = 450;
int g = 50;
stroke(0);


fill(150);
rect(335,f,15,g);
rect(335,f+2.5,15,g-2.5);
rect(335,f+5,15,g-5);
rect(335,f+7.5,15,g-7.5);
rect(335,f+10,15,g-10);
rect(335,f+12.5,15,g-2.5);
rect(335,f+15,15,g-15);
rect(335,f+17.5,15,g-17.5);
rect(335,f+20,15,g-20);
rect(335,f+22.5,15,g-22.5);
rect(335,f+25,15,g-25);
rect(335,f+27.5,15,g-27.5);
rect(335,f+30,15,g-30);
rect(335,f+32.5,15,g-32.5);
rect(335,f+35,15,g-35);
rect(335,f+37.5,15,g-37.5);
rect(335,f+40,15,g-40);
rect(335,f+42.5,15,g-42.5);
rect(335,f+45,15,g-45);
rect(335,f+47.5,15,g-47.5);

int h = 600;
int i = 30;
rect(335,h,15,i);
rect(335,h+2.5,15,i+2.5);
rect(335,h+5,15,i+5);
rect(335,h+7.5,15,i+7.5);
rect(335,h+10,15,i+10);
rect(335,h+12.5,15,i+12.5);
rect(335,h+15,15,i+15);
rect(335,h+17.5,15,i+17.5);
rect(335,h+20,15,i);
rect(335,h+22.5,15,i);
rect(335,h+25,15,i);
rect(335,h+27.5,15,i);


//right foot
fill(50,255,230);
rect(a+30,630,50,40,5);

//right leg
fill(255,255,100);
quad(325,500, 360,500, 370,600, 315,600);
fill(240,240,20);
noStroke();
//quad(330,500, 355,500, 360,600, 325,600);
quad(330,502, 355,502, 360,599, 325,599);


//left arm
stroke(0);
fill(150);
rect(130,310,80,15);
rect(130,310,77.5,15);
rect(130,310,75,15);
rect(130,310,72.5,15);
rect(130,310,70,15);
rect(130,310,67.5,15);
rect(130,310,65,15);
rect(130,310,62.5,15);
rect(130,310,60,15);
rect(130,310,57.5,15);
rect(130,310,55,15);
rect(130,310,52.5,15);
rect(130,310,50,15);
rect(130,310,47.5,15);
rect(130,310,45,15);
rect(130,310,42.5,15);
rect(130,310,40,15);
rect(130,310,37.5,15);
rect(130,310,35,15);
rect(130,310,32.5,15);
rect(130,310,30,15);
rect(130,310,27.5,15);
rect(130,310,25,15);
rect(130,310,22.5,15);
rect(130,310,20,15);
rect(130,310,17.5,15);
rect(130,310,15,15);
rect(130,310,12.5,15);
rect(130,310,10,15);
rect(130,310,7.5,15);
rect(130,310,5,15);
rect(130,310,2.5,15);



//left hand
fill(255,255,100);
strokeWeight(2);
line(130,317.5,130,290);
line(130,317.5,130,345);
line(130,317.5,102.5,317.5);
ellipse(130, 317.5, 35,35);

//right arm
fill(150);
rect(390,310,80,15);
rect(390,310,77.5,15);
rect(390,310,75,15);
rect(390,310,72.5,15);
rect(390,310,70,15);
rect(390,310,67.5,15);
rect(390,310,65,15);
rect(390,310,62.5,15);
rect(390,310,60,15);
rect(390,310,57.5,15);
rect(390,310,55,15);
rect(390,310,52.5,15);
rect(390,310,50,15);
rect(390,310,47.5,15);
rect(390,310,45,15);
rect(390,310,42.5,15);
rect(390,310,40,15);
rect(390,310,37.5,15);
rect(390,310,35,15);
rect(390,310,32.5,15);
rect(390,310,30,15);
rect(390,310,27.5,15);
rect(390,310,25,15);
rect(390,310,22.5,15);
rect(390,310,20,15);
rect(390,310,17.5,15);
rect(390,310,15,15);
rect(390,310,12.5,15);
rect(390,310,10,15);
rect(390,310,7.5,15);
rect(390,310,5,15);
rect(390,310,2.5,15);

//right hand
fill(255,255,100);
strokeWeight(2);
line(470,317.5,470,290);
line(470,317.5,470,345);
line(470,317.5,497.5,317.5);
ellipse(470, 317.5, 35,35);




