
size(600,300);

smooth();

float space = 1;
float y = height;

stroke(0,75);
fill(255,175);

for(float x = 0; x < width; x = x + space){
  float size = random(100,250);
  float y2 = y - size;
  float x2 = x + random(-45,45);
  line(x,y,x2,y2);
  float diameter = size / 15;
  ellipse(x2,y2,diameter,diameter);
}

