
void setup() {
  background(255);
  size(400,400);
  noFill();
  smooth();
}
 
int g;
 
void draw() {
  g++;
   
  if (g > 11) {
    g = 0;
  }
   
  translate( 0, -30 );
 
  for ( int k = 0; k < height/12 + 4; k++ ) {
 
    strokeJoin(MITER);
    strokeWeight(4);
    beginShape();
 
      for ( int i = 0; i < width/20; i++ ) {
        vertex( 0 + i*40, 0 + k*15 );
        vertex( 20 + i*40, 20 + k*15 );
        vertex( 40 + i*40, 0 + k*15 );
      } 
    endShape();   
  } 
}

