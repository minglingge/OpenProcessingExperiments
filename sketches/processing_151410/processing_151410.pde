
void setup(){
size (720, 720);
background(20,100);
frameRate(25);
}

void draw(){
for (int x = 0; x<36; x++) {
  for (int y = 0; y<36; y++) {
    noStroke();
    fill(random(70),random(70));
    rect(x*20,y*20,20,20);
    fill(random(255),random(40,100));
    triangle(x*20,y*20+random(20), x*20+random(20),y*20, x*20+random(20),y*20+20);
  }
}
}

