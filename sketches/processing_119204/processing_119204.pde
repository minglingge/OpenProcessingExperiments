
void setup()
{
  size(500,500);
    fill(#9B9B9B);
background(#BCBCBC);
    
    

rect(20,20, 20, 20 );
rect(60,20, 20, 20 );
rect(100,20, 20, 20 );
rect(140,20, 20, 20 );
rect(180,20, 20, 20 );
rect(220,20, 20, 20 );
rect(260,20, 20, 20 );
rect(300,20, 20, 20 );
rect(340,20, 20, 20 );
rect(380,20, 20, 20 );
rect(420,10, 20, 20 );
rect(460,20, 20, 20 );

ellipse(30,70,20,20);
ellipse(70,70,20,20);
ellipse(110,70,20,20);
ellipse(150,70,20,20);
ellipse(190,70,20,20);
ellipse(230,70,20,20);
ellipse(270,70,20,20);
ellipse(310,70,20,20);
ellipse(350,70,20,20);
ellipse(390,70,20,20);
ellipse(430,80,20,20);
ellipse(470,70,20,20);

rect(20,100, 20, 40 );
rect(60,100, 20, 40 );

translate(105,98);
rotate(0.2);
rect(00,00, 20, 40 );

rotate(-0.2);
translate(-105,-98);

rect(140,100, 20, 40 );


rect(180,100, 20, 40 );
rect(220,100, 20, 40 );
rect(260,100, 20, 40 );




 
rect(300,100, 20, 40 );


rect(340,100, 20, 40 );
rect(380,100, 20, 40 );
rect(420,100, 20, 40 );
rect(460,100, 20, 40 );



line(30,160,30,190);
line(70,160,70,190);
line(110,160,110,190);
line(150,160,150,190);
line(190,160,190,200);
line(230,160,230,190);
line(270,160,270,190);
line(310,160,310,190);
line(350,160,350,190);
line(390,160,390,190);
line(430,160,430,190);
line(470,160,470,190);

line(20,210,40,210);
line(60,210,80,210);
line(100,210,120,210);
line(140,210,160,210);
line(180,210,200,210);
line(220,210,240,210);
line(260,210,280,220);
line(300,210,320,210);
line(340,210,360,210);
line(380,210,400,210);
line(420,210,440,210);
line(460,210,480,210);



rect(20,230, 20, 20 );

rect(100,230, 20, 20 );
rect(140,230, 20, 20 );
rect(180,230, 20, 20 );
rect(220,230, 20, 20 );
rect(260,230, 20, 20 );
rect(300,230, 20, 20 );
rect(340,230, 20, 20 );
rect(380,230, 20, 20 );

fill(255,0,0);
stroke(255,0,0);
rect(60,230, 20, 20 );
fill(#9B9B9B);
stroke(0);
rect(420,230, 20, 20 );

rect(460,230, 20, 20 );


rect(20,270, 20, 40 );
rect(60,270, 20, 40 );
rect(100,270, 20, 40 );
rect(140,270, 20, 40 );
rect(180,270, 20, 40 );
rect(220,270, 20, 40 );
rect(260,270, 20, 40 );
rect(300,270, 20, 40 );
rect(340,270, 20, 40 );
rect(380,270, 20, 40 );
rect(420,270, 20, 40 );
rect(460,270, 20, 40 );

rect(20,330, 20, 40 );
rect(60,330, 20, 40 );

rect(140,330, 20, 40 );
rect(180,330, 20, 40 );
rect(220,330, 20, 40 );
rect(260,330, 20, 40 );
rect(300,330, 20, 40 );
rect(340,330, 20, 40 );
rect(380,330, 20, 40 );
rect(420,330, 20, 40 );
rect(460,330, 20, 40 );

rect(20,390, 20, 40 );
rect(60,390, 20, 40 );
rect(100,390,20, 40 );
rect(140,390, 20, 40 );
rect(180,390, 20, 40 );

rect(260,390, 20, 40 );
rect(300,390, 20, 40 );
rect(340,390, 20, 40 );
rect(380,390, 20, 40 );
rect(420,390, 20, 40 );
rect(460,390, 20, 40 );

ellipse(30,450,20,20);
ellipse(70,450,20,20);
ellipse(110,450,20,20);
ellipse(150,450,20,20);
ellipse(190,450,20,20);
ellipse(230,450,20,20);
ellipse(270,450,20,20);
ellipse(310,450,20,20);

fill(255,0,0);
stroke(255,0,0);
ellipse(350,450,20,20);
fill(#9B9B9B);
stroke(0);
ellipse(390,450,20,20);
ellipse(430,450,20,20);
ellipse(470,450,20,20);

rect(20,470, 20, 20 );

translate(65,470);
rotate(0.3);
rect(0,0, 20, 20 );
rotate(-0.3);
translate(-65,-470);


rect(100,470, 20, 20 );
rect(140,470, 20, 20 );
rect(180,470, 20, 20 );
rect(220,470, 20, 20 );
rect(260,470, 20, 20 );
rect(300,470, 20, 20 );
rect(340,470, 20, 20 );
rect(380,470, 20, 20 );
rect(420,470, 20, 20 );
rect(460,470, 20, 20 );

}

void draw()
{

    fill(#BCBCBC);
stroke(#BCBCBC);
rect(205,380,50,55);

fill(#9B9B9B);


translate(230,410);

float winkel=map(mouseX,mouseY,500,0,2*PI);
rotate(winkel);



{
  translate(-230,-410);
  stroke(0);
  rect(220,390, 20, 40 );
 
 
 
 
 


}
}
