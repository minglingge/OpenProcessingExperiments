
int a=0;
int b=50;
int c=150;
int y=0;
int r=255;

void setup(){
  size(500,500);
  noFill();
  background(255);
 
 fill(r,0,0,10);
 noStroke();
  
}

void draw(){
 
 while(b<250){
 
 ellipse(a,y,c,c);  
fill(0,0,255,40);
 ellipse(a,y,b,b);
 fill(255,0,0,10);
  b=b+50;
  
}

a=a+100;
b=0;


if (a >500) {
  y=y+100;
  a=0;}

}

