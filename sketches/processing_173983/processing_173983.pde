

 
boolean useRandom=true;
float mouseScale;
 
void setup() {
  size(400, 800);
  background(#1C0B05);
  frameRate(4);
  println("Use the mouse (X) to control the graphs generated.\nRandom: changes max value / Noise: changes noise scale. \nMouse press toggles between random() & noise().\nPress any key to save the frame as image.");
}
 
void draw() {
  makeGraph();
}
 
void makeGraph() {
  float con=random(20);
  float val; 
  background(#1C0B05); 
  strokeWeight(5);
  stroke(#25BFE8); 
  mouseScale=(float)(mouseX-20)/width;
  mouseScale=(mouseX<20)? 20/width : (float)(mouseX-20)/width;
 
  for (int i=1; i<75; i++) {
    if (useRandom)
      val=random(mouseScale);
    else
      val=noise(con+(float)mouseScale*i/10);
    line(200, i*(height/75)+5, val*(width-20)+10, i*(height/75)+5);
  }
}
 
void mousePressed() {
  useRandom=(useRandom)? false:true;
//  println("Switched to "+((useRandom)?"Random":"Noise")+" graph." );
}
 
void keyPressed() { 
  if (key==' ' && useRandom) {
    saveFrame("Random ("+mouseScale+") ####.png");
//    println("Saved Random graph");
  } 
  else if(key==' ') {   
    saveFrame("Noise ("+mouseScale+") ####.png");
//    println("Saved Noise ("+mouseScale+")");
  }
}



