
void setup() {
  size(300,300);
  background(#48C0FF);
}
  
void draw() {
  for( float x=0; x<300; x=x+10 ){
  for( float y=0; y<300; y=y+10 ){
  pushMatrix();
  translate(x*5,y*5)
  rotate(radians(15));
  scale(0.3);
  mydraw();
  popMatrix();
  }
 }
}
  
  
void mydraw() {
  //얼굴
  stroke(0);
  strokeWeight(2);
  fill(0,0,0);
  beginShape();
  vertex(20,20);
  vertex(75,130);
  vertex(60,150);
  vertex(100,180);
  vertex(140,150);
  vertex(125,130);
  vertex(180,20);
  vertex(110,120);
  vertex(90,120);
  vertex(20,20);
  endShape(CLOSE);

  //눈
  fill(255);
  ellipse(85,140,20,20);
  ellipse(115,140,20,20);
  ellipse(85,140,5,5);
  ellipse(115,140,5,5);

  //코
  ellipse(100,150,10,5);

  //입
  strokeWeight(1);
  fill(250,70,100);
  beginShape();
  vertex(90,155);
  vertex(100,180);
  vertex(110,152);
  endShape(CLOSE);

  //수염
  strokeWeight(2);
  line(50,130,80,150);
  line(40,140,80,150);
  line(150,135,120,150);
  line(160,145,120,150);

  //느낌표
  strokeWeight(1);
  fill(250,200,50);
  beginShape();
  vertex(95,20);
  vertex(98,80);
  vertex(102,80);
  vertex(105,20);
  vertex(95,20);
  endShape(CLOSE);
  ellipse(100,90,8,8);  
}

                
                          
                
