
int basketball = 0;
void setup()
{
 size (600,600);
 background(0);
 fill(0); 
 textAlign(TOP);
 textFont(createFont("SansSerif",40));
}
void draw()
{
fill(0,basketball,0);
text("THE BASKETBALL KING!!!!!", width/12, height/5);
fill(0,basketball,0);
delay(10);
basketball = basketball + 10;
ellipse (300,300,200,200);
arc (300,200,100,100,.25,2.89);
arc (300,400,100,100,3.39,6.04);
line(300,200,300,400);
line(200,300,400,300);
if(mousePressed)
{
strokeWeight(2);
fill(#FAC812);
rect(250,180,100,30);
triangle(250,180,262.5,150,275,180);
triangle(275,180,287.5,150,300,180);
triangle(300,180,312.5,150,325,180);
triangle(325,180,337.5,150,350,180);
fill(250);
ellipse(250,260,20,30);
ellipse(350,260,20,30);
fill(0);
ellipse(250,260,10,15);
ellipse(350,260,10,15);
arc(300,325,100,100,0,3.14);
fill(#FF0329);
arc(300,376,50,50,3.39,6.04);
fill(250);
rect(400,295,100,10);
fill(#FAC812);
rect(500,245,20,200);
quad(535,245,485,245,465,215,555,215);
fill(#FC6703);
ellipse(510,182.5,100,100);
arc(510,132.5,50,50,.25,2.89);
arc(510,232.5,50,50,3.39,6.04);
line(510,132.5,510,232.5);
line(460,182.5,560,182.5);
fill(250);
rect(275,396,10,100);
rect(320,396,10,100);
rect(100,295,100,10);
}
else
{
fill(0);
rect(250,180,100,30);
triangle(250,180,262.5,150,275,180);
triangle(275,180,287.5,150,300,180);
triangle(300,180,312.5,150,325,180);
triangle(325,180,337.5,150,350,180);
fill (#FC6703);
ellipse (300,300,200,200);
arc (300,200,100,100,.25,2.89);
arc (300,400,100,100,3.39,6.04);
line(300,200,300,400);
line(200,300,400,300);
fill(0);
rect(400,295,100,10);
fill(0);
rect(500,245,20,200);
fill(0);
quad(535,245,485,245,465,215,555,215);
fill(0);
ellipse(510,182.5,100,100);
fill(0);
rect(275,400,10,100);
rect(320,400,10,100);
rect(100,295,100,10);
} 
if(keyPressed)
{                                                                                                                        
strokeWeight(2);
fill(basketball,0,0);
ellipse(264,195,25,25);
ellipse(289,195,25,25);
ellipse(314,195,25,25);
ellipse(339,195,25,25);
arc(264,182.5,15,15,.25,2.89);
arc(264,207.5,15,15,3.39,6.04);
line(264,182.5,264,207.5);
line(251.5,195,276.5,195);
arc(289,182.5,15,15,.25,2.89);
arc(289,207.5,15,15,3.39,6.04);
line(289,182.5,289,207.5);
line(276.5,195,301.5,195);
arc(314,182.5,15,15,.25,2.89);
arc(314,207.5,15,15,3.39,6.04);
line(314,182.5,314,207.5);
line(301.5,195,326.5,195);
arc(339,182.5,15,15,.25,2.89);
arc(339,207.5,15,15,3.39,6.04);
line(339,182.5,339,207.5);
line(326.5,195,351.5,195);
}
println("THE BASKETBALL KING");
}


