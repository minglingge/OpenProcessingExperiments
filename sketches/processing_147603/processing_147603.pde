
Pyramid myPyramid1;
Pyramid myPyramid2;
Pyramid myPyramid3;
Pyramid myPyramid4;
Pyramid myPyramid5;
Pyramid myPyramid6;
Pyramid myPyramid7;
Pyramid myPyramid8;
Pyramid myPyramid9;
Pyramid myPyramid10;
Pyramid myPyramid11;
Pyramid myPyramid12;
Pyramid myPyramid13;
float gravity=0.1;
float speed=0;

void setup(){
  size(1000,500); //Set the size of the window
  frameRate(120);
  background(0);
  myPyramid1=new Pyramid(mouseX,mouseY,mouseX+200,mouseY-270,mouseX+400,mouseY,color(200,30,120));
  myPyramid2=new Pyramid(mouseX+126,mouseY+170,mouseX+200,mouseY+270,mouseX-274,mouseY+170,color(250,60,70));
  myPyramid3=new Pyramid(mouseX,mouseY,mouseX+126,mouseY-170,mouseX+200,mouseY,color(40,230,250));
  myPyramid4=new Pyramid(mouseX+200,mouseY,mouseX+274,mouseY-170,mouseX+400,mouseY,color(127,67,200));
  myPyramid5=new Pyramid(mouseX+75,mouseY-100,mouseX+126,mouseY-170,mouseX+156,mouseY-100,color(145,20,75));
  myPyramid6=new Pyramid(mouseX,mouseY,mouseX+75,mouseY-100,mouseX+109,mouseY,color(0,175,89));
  myPyramid7=new Pyramid(mouseX+109,mouseY,mouseX+156,mouseY-100,mouseX+200,mouseY,color(136,0,129));
  myPyramid8=new Pyramid(mouseX+243,mouseY-100,mouseX+274,mouseY-170,mouseX+326,mouseY-100,color(230,200,30));
  myPyramid9=new Pyramid(mouseX+200,mouseY,mouseX+243,mouseY-100,mouseX+295,mouseY,color(230,200,220));
  myPyramid10=new Pyramid(mouseX+295,mouseY,mouseX+326,mouseY-100,mouseX+400,mouseY,color(230,70,130));
  myPyramid11=new Pyramid(mouseX+200,mouseY,mouseX+156,mouseY-100,mouseX+243,mouseY-100,color(250,60,70));
  myPyramid12=new Pyramid(mouseX+156,mouseY-100,mouseX+126,mouseY-170,mouseX+200,mouseY-170,color(70,20,75));
  myPyramid13=new Pyramid(mouseX+243,mouseY-100,mouseX+200,mouseY-170,mouseX+274,mouseY-170,color(44,30,135));
}

void draw(){
  myPyramid1.move();
  myPyramid1.display();
  myPyramid2.move();
  myPyramid2.display();
  myPyramid3.move();
  myPyramid3.display();
  myPyramid4.move();
  myPyramid4.display();
  myPyramid5.move();
  myPyramid5.display();
  myPyramid6.move();
  myPyramid6.display();
  myPyramid7.move();
  myPyramid7.display();
  myPyramid8.move();
  myPyramid8.display();
  myPyramid9.move();
  myPyramid9.display();
  myPyramid10.move();
  myPyramid10.display();
  myPyramid11.move();
  myPyramid11.display();
  myPyramid12.move();
  myPyramid12.display();
  myPyramid13.move();
  myPyramid13.display();
}

class Pyramid{
  
  float posx;
  float posy;
  float pos2x;
  float pos2y;
  float pos3x;
  float pos3y;
  color c;
  
  Pyramid(float tempposX, float tempposY, float temppos2X, float temppos2Y, float temppos3X, float temppos3Y, color tempC){
    posx=tempposX;
    posy=tempposY;
    pos2x=temppos2X;
    pos2y=temppos2Y;
    pos3x=temppos3X;
    pos3y=temppos3Y;
    c=tempC;
  }
  
  void display(){
    stroke(0);
    fill(c);
    triangle(posx,posy,pos2x,pos2y,pos3x,pos3y);
    
    if(mousePressed){
      translate(mouseX,mouseY);
      triangle(random(100,200), random(100), random(100,300), random(500), random(50,500), random(300));
      fill(random(100), random(200), random(130));
      stroke(0);
    }
  }
  
  void move(){
    speed=speed+gravity;
    posx=posx+0.5;
    pos2x=pos2x+0.5;
    pos3x=pos3x+0.5;
    posy=posy+speed;
    pos2y=pos2y+speed;
    pos3y=pos3y+speed;
    if (posy>=height){
      speed*=-0.95;
    }
    if (pos3x>=width || posx<=0){
      posx*=-1;
      pos2x*=-1;
      pos3x*=-1;
    }
  }
}

    
  

