
int num = 100;
int mod = 4;
float theta, scal, sz = 10;
color[] palette = {
  #ECD078, #D95B43, #C02942, #542437, #53777A
};
int test = 0;
 
void setup() {
  size(500, 500);
  background(20);
}
 
void draw() {
  background(20);
  noStroke();
 
  for (int i=0; i<num; i++) {
    float offSet = (TWO_PI/num)*i*3;
    scal = map(sin(theta+offSet), -1, 1, 1, 2.5);
    float x = width/2;
    float y = (i+.5)*sz*.7;
    if (i%(mod+2) == 4) {
      test = 2;
    } else if ((i%(mod+2)) == 5) {
      test = 1;
    } else {
      test = i%(mod+2);
    }
    float sz1 = ((test)+1.5)*sz*scal;
    fill(palette[test]);
    ellipse(x, y, sz1, sz*scal);
  }
  theta += 0.0523;
 
  //if (frameCount%4==0 && frameCount<121) saveFrame("image-###.gif");
}


