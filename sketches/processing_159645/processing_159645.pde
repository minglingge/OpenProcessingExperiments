
float diam;
int count;
int state;

float r;
float g;
float b;
float a;


float x;
float y;

void setup() {
  count = 0;
  state = 0;
  
  size(200,200);
  background(255);
  smooth();    
}

void draw() {
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  diam = random(20);
  x = random(width);
  y = random(height);
  
  count++;
  if(count > 30){
    count = 0;
    state++;
    if(state > 8){
       state = 0;
       background(255);
  
    } 
 
  }
  fill(r,g,b,a);
  diam = state * 20;
  ellipse(width/2,height/2,diam,diam);
}
