
void setup(){
  size(500,500);
  drawTree();
}
 
void draw(){
  if(mousePressed == true){
    drawTree();
  }
}
 
void drawTree(){
    background(255,255,255);
    translate(250,300);
    int depth = 10;
    strokeWeight(depth*1.5);
    stroke(random(127,255),random(127,255),0,255);
    line(0,100,0,0);
    branch(depth);
}
   
 
void branch(int depth){
  pushMatrix();                    // store the old state
  rotate(radians(random(0,45)));   // rotate
  subBranch(depth);                // and draw one branch
  popMatrix();                     // go back to old state
  rotate(radians(random(-45,-0))); // rotate the other way
  subBranch(depth);                // and draw another branch
}
 
void subBranch(int depth) {
  scale(0.8);
  int len = (int) random(0,80);
  translate(0,-len);
  strokeWeight(depth*1.5);
  line(0,len,0,0);
  fill(0,random(127,255),0);
  if(depth == 0) {ellipse(0,0,70,80);}
  if(depth > 0) branch(depth-1);
}
