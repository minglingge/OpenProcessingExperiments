
int f, elements = 100;
float[] sz = new float[elements];
float[] rot = new float[elements];
float[] s1 = new float[elements];
float[] s2 = new float[elements];
int[] col = new int[elements];
color[] palette = {
  #EFFFCD, #555152, #DCE9BE, #2E2633, #99173C
};
float theta, rotOff;
boolean save;

void setup() {
  size(400, 400);
  rectMode(CENTER);
  float Sz = 0;
  strokeCap(SQUARE);
  background(20);

  for (int i=0; i<elements; i++) {
    Sz += 8;
    sz[i] = Sz ;
    rot[i]= PI/elements*i;
    col[i] = (int) random(0, 5);
    s1[i] = random(0,TWO_PI);
    s2[i] = s1[i] + random(PI/4,PI);
  }
}

void draw() {
  noStroke();
  fill(20, 80);
  rect(200, 200, 400, 400);
  strokeWeight(1);
  translate(width/2, height/2);
  for (int i=0; i<elements; i++) {
    pushMatrix();
    rotate(theta*i/5);
    stroke(palette[i%5],200);
    noFill();
    arc(0, 0, sz[i], sz[i], s1[i],s2[i]);
    popMatrix();
  }
  theta += 0.0523;

  /*if (save) {
    if (frameCount%4==0 && frameCount<f+121) saveFrame("image-###.gif");
  }*/
  if(mousePressed) {
    filter(DILATE);
  }
}

void mouseClicked() {
  setup();
}

void keyPressed() {
  f = frameCount;
  save = true;
}

