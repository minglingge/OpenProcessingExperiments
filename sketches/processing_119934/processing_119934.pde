
int [] eins = 
{
0,1,2,3,4,5,6,7,8,9,
1,2,0,4,7,3,9,5,6,8,
6,3,5,0,2,9,1,8,4,7,
8,0,7,9,5,6,2,4,1,3,
3,4,6,1,8,0,7,9,5,2,
7,6,9,5,1,4,8,2,3,0,
2,8,4,7,9,1,3,6,0,5,
5,7,3,2,6,8,0,1,9,4,
9,5,8,6,3,2,4,0,7,1,
4,9,1,8,0,7,5,3,2,6,
};

int [] zwei = 
{
0,1,2,3,4,5,6,7,8,9,
8,7,9,6,2,4,0,3,1,5,
3,0,4,8,9,1,5,2,7,6,
4,2,0,5,6,7,3,8,9,1,
2,3,5,7,1,6,9,4,0,8,
1,4,8,2,0,9,7,5,6,3,
6,9,1,4,3,2,8,0,5,7,
9,5,7,1,8,3,4,6,2,0,
7,8,6,9,5,0,2,1,3,4,
5,6,3,0,7,8,1,9,4,2,
};

int c;
int d;
int f=8;
float x = 0;
float y = 0;
float z = 0;
int h=87;
int m=0;

void setup() {
  size(300, 300);
  background(255);
  smooth(8);
  ellipseMode(CENTER);
  colorMode(HSB, h, h, h);
}

void draw() {
  for (int i= 0; i < 300; i=i+30) {
    for (int j= 0; j < 300; j=j+30) {
      c= eins[m];
      x = lerp(c, f, f);
      fill(x, h, h);
      rect(i, j, 30, 30);
      d= zwei[m];
      y = lerp(d, f, f);
      fill(y, h, h);
      rect(i+7, j+7, 17, 17);
      m=m+1;
    }
  }
  noLoop();
}



