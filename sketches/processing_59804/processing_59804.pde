
size(400,400);
background(255,210,0);
smooth();


strokeWeight(5);
fill(255,210,0);
stroke (255);
ellipse(50,50,100,100);
ellipse(150,50,100,100);
ellipse(250,50,100,100);
ellipse(350,50,100,100);

ellipse(50,150,100,100);
ellipse(50,250,100,100);
ellipse(50,350,100,100);

ellipse(150,150,100,100);
ellipse(150,250,100,100);
ellipse(150,350,100,100);

ellipse(250,150,100,100);
ellipse(250,250,100,100);
ellipse(250,350,100,100);

ellipse(350,150,100,100);
ellipse(350,250,100,100);
ellipse(350,350,100,100);

noStroke();
fill(255,0,255,100);
quad(50,100, 100, 50, 150, 100, 100, 150);
quad(50,200, 100, 150, 150, 200, 100, 250);
quad(50,300, 100, 250, 150, 300, 100, 350);

quad(150,100, 200, 50, 250, 100, 200, 150);
fill(255,0,255,200);
quad(150,200, 200, 150, 250, 200, 200, 250);
noFill();
fill(255,0,255,100);
quad(150,300, 200, 250, 250, 300, 200, 350);

quad(250,100, 300, 50, 350, 100, 300, 150);
quad(250,200, 300, 150, 350, 200, 300, 250);
quad(250,300, 300, 250, 350, 300, 300, 350);

fill(255,50);
ellipse(200,200,200,200);
ellipse(0,0,200,200);
ellipse(0,400,200,200);
ellipse(400,0,200,200);
ellipse(400,400,200,200);
