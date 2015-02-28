
// based on a sketch by Jon Gacnik called Project 1, thank you Jon

size(640,480);
background(150,194,173);
 

noStroke();
fill(100, 188, 171);
curve(-200,60, 0,302, 427,416, 80,160);
ellipse(427,328, 176,176);
beginShape();
vertex(0, 200);
vertex(500, 413);
vertex(500, 302);
vertex(620, 309);
vertex(640, 350);
vertex(0, 275);
endShape(CLOSE);
rect(0,0, 640,290);


noStroke();
fill(250, 208, 180);
quad(100,0, 300,106, 640,84, 640,0);

 

noStroke();
fill(500, 139, 123);
quad(0,206, 0,227, 640,106, 640,93);
quad(241,480, 304,480, 640,343, 640,325);
quad(0,343, 0,370, 640,195, 640,181);

 

noFill();
strokeWeight(10);
stroke(250);
line(0,373, 371,480);
line(0,167, 413,302);
line(544,12, 640,0);
curve(-200,50, 0,199, 640,382, 900,360);
curve(-100,50, 25,143, 578,297, 840,300);
//END SHAPE 5,6,7,8
 

noStroke();
fill(8, 82, 500);
quad(113,281, 290,281, 640,191, 359,180);
quad(0,212, 0,245, 640,249, 640,227);

 
 
noStroke();
fill(0, 180, 172);
triangle(0,480, 0,467, 365,480);

 

 
//YELLOW FLAGS
noStroke();
fill(500, 182, 30);
quad(17,27, 20,28, 26,11, 17,5);
quad(48,42, 52,43, 54,21, 44,19);
quad(79,55, 82,56, 89,35, 75,29);
quad(114,69, 118,70, 124,47, 113,44);
quad(159,86, 168,90, 175,64, 156,60);
quad(225,111, 237,115, 243,86, 222,77);
quad(304,140, 316,143, 324,110, 298,102);
quad(391,170, 414,176, 427,134, 383,125);
quad(502,204, 537,215, 556,165, 499,153);

 
//Greyish FLAGS
noStroke();
fill(200,200,200);
quad(31,35, 35,35, 40,15, 30,12);
quad(62,47, 64,48, 70,28, 60,22);
quad(95,61, 100,64, 106,42, 95,36);
quad(135,76, 143,80, 147,55, 134,50);
quad(196,100, 201,102, 210,76, 192,70);
quad(261,124, 275,129, 282,97, 256,90);
quad(345,154, 364,160, 375,123, 338,114);
quad(451,188, 473,195, 489,152, 443,140);
quad(575,225, 608,234, 627,179, 569,168);
 

noFill();
stroke(0);
strokeWeight(2);
quad(450,90, 489,114, 643,105, 643,84);

noStroke();
fill(92, 143, 128);
arc(611,295, 81,81, 0,3.46);
triangle(574,283, 615,308, 655,293);


                
                