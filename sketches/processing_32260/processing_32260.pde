
int change=15;
int a=700;
int d=600;
int b=500;
int c=1000;
int e=400;
int f=255;

void setup() {
  size(500,1000);
  rectMode(CENTER);
  stroke(f);
  fill(0,0,0,10);
  smooth();
  background(0);
  strokeWeight(.5);
  
}

void draw (){
  
  noLoop();
  for(int i=100; i < width; i=i+change){
  for(int j=0; j < height; j=j+change){
    rect(i,j,a,a);
    rect(i,j,d,a);
    rect(i,j,b,a);
    rect(j,i,e,c);
   
    
  }
  }
}

