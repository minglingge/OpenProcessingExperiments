
void setup(){
size (displayWidth,displayHeight);
smooth();
}

boolean sketchFullScreen() { //a fucntion for making yourcode START in present mode (Sketch>Present)
return true;
}

void draw(){
noStroke();
background(0);
ellipseMode(CORNER);
for(int yPos = 0; yPos <displayHeight; yPos += 50){
for(int xPos = 0; xPos < displayWidth; xPos += 50){
fill(random(0,255),random(0,255),random(0,255));
ellipse(xPos,yPos,30,50);
rect(xPos,yPos,30,30);
}
}
delay(200);
}
