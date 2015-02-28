
size(500,500);
background(0,0,0);
smooth();
fill(227,190,131);
ellipse(250,250,410,450);

fill(227,190,131);
noStroke();
rect(190,450,120,50);

fill(0,0,0);
stroke(5);
ellipse(150,50,210,170);
ellipse(350,50,210,170);

fill(255,255,255);
strokeWeight(5);
arc(150,230,100,100,PI,2*PI);
arc(350,230,100,100,PI,2*PI);

line(80,230,100,230);
line(83,210,103,210);

line(400,230,420,230);
line(397,210,417,210);

noStroke();
fill(83,196,201);
ellipse(150,205,45,45);
ellipse(350,205,45,45);

fill(255,255,255);
quad(150,195,160,205,150,215,140,205);
quad(350,195,360,205,350,215,340,205);

noStroke();
fill(255,0,0,160);
arc(250,370,150,100,1.2*PI,1.8*PI);
fill(255,0,0,160);
arc(250,350,150,100,0.2*PI,0.8*PI);


noFill();
stroke(0);
strokeWeight(4);
bezier(235, 295, 190, 255, 315, 255, 265, 295);