
int amount = 50;
int sl = 50;
boolean bagr = true;

Punt[] puntje = new Punt[amount];

color[] goodcolor = {#000000, #FA9F29, #15CAB1, #2F3030, #0A633D, #FA9F29, #FA9F29, #FA9F29, #FFFFFF };

void setup() {
  size(450,450,P2D);
  background(255);
  //smooth();
  noStroke();
  for (int i = 0; i < amount; i++) {
  puntje[i] = new Punt(random(width),random(height),i);
  }
}

void draw() {
  if (bagr == true) background(255);
  for (int i = 0; i < amount; i++) {
  puntje[i].move();
  }
}

class Punt {
 float x, y;
 float lastx,lasty;
 float speedx;
 float speedy;
 int c;
 int id;

Punt(float X,float Y, int ID) {
  id = ID;
 x = X;
 y = Y;
 c =  goodcolor[int(random(goodcolor.length))];
  speedx = random(-3,3);
  speedy = random(-3,3);
}
  
  void move() {
   stroke(c,42);
   point(x,y); 
   lastx = x;
   lasty = y;
   x += speedx;
   y += speedy;
 
 speedx += random(-0.1,0.1);
 speedy += random(-0.1,0.1);
 //line(lastx,lasty,x,y);
  
  float dx = abs(width/2 - x);
  if ((width/2)-x >0 ) {
   speedx += dx/width/2; 
  }
  else {
   speedx -= dx/width/2; 
  }  
  
  float dy = abs(height/2 - y);
  if ((height/2)-y >0 ) {
   speedy += dy/height/2; 
  }
  else {
   speedy -= dy/height/2; 
  }
  
for (int j = 0; j < amount; j++) {
  if (j != id) {
    if (dist(x,y,puntje[j].x,puntje[j].y) < width/4){
   line(x,y,puntje[j].x,puntje[j].y); 
  }}
}

   if (x<0 || x>width || y<0 || y>width) {
    x = random(0,width);
    y = random(0,height);
 c =  goodcolor[int(random(goodcolor.length))];    
  speedx = random(-3,3);
  speedy = random(-3,3);
   }
  }
  
}

void mouseClicked() {
 if (bagr == true) {bagr = false;}
 else {bagr = true;}
}               
