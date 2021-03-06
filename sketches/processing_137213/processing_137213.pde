
/*

MOUSE
position x : length
position y : thickness and number lines to be drawn
drag : draw

KEYS
1-3 : stroke color
del, backspace : erase
s : save png

*/

color strokeColor = color(0,10);

void setup(){
  size(720, 720);
  colorMode(HSB, 360, 100, 100, 100);
  noFill();
  background(360);
}

void draw(){
  //Clic
  if(mousePressed){
    pushMatrix();
    translate(width/2, height/2);
    //map(value, star1, stop1, start2, stop2);
    int circleResolution = (int)map(mouseY+100, 0, height, 2, 10);
    int radius = mouseX-width/2;
    float angle = TWO_PI/circleResolution;
    
    //Style
    strokeWeight(2);
    stroke(strokeColor);
    
    beginShape();
    for(int i=0; i<=circleResolution; i++){
      float x = 0 + cos(angle*i) * radius;
      float y = 0 + sin(angle*i) * radius;
      vertex(x, y); 
    }
    endShape();
    popMatrix();
  }
}

void keyReleased(){
  if(key == DELETE || key == BACKSPACE) background(360);
  if(key == 's' || key == 'S') saveFrame("screenshot.png");
  
  //switch-case
  switch(key){
    case '1':
      strokeColor = color(0, 10);
      break;
    case '2':
      strokeColor = color(192, 100, 64, 10);
      break;
    case '3':
      strokeColor = color(52, 100, 71, 10);
      break;
  }
}

