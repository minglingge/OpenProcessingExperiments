

PImage img1;
PImage img2;
Boolean fl1;
Boolean fl2;

void setup() {
  size(500, 500);
  background(#3d3b45);
  
 img1 = loadImage ("flower.png");
 img2 = loadImage ("flower2.png");
 
// fill(255);
//  rect(100, 20, 250,60);
  
}
 
void draw() {
  image (img1, 150, 30, 40, 40);
  image (img2, 250, 30, 40, 40);
  
  
}

void keyPressed() { 
 if (key == ' ') {
   background(#3d3b45); 
}
}

void mouseDragged () { 
  if(fl1 == true) { 
    image (img1, mouseX, mouseY, 100, 100); }
    
  if(fl2 ==true) { 
    image (img2, mouseX, mouseY,40,40); }
}

void mousePressed () {
  if (mouseX > 150 && mouseX<190 && mouseY>30 && mouseY<70) {
    fl1 = true; 
    fl2 = false;
  }
   if (mouseX > 250 && mouseX<290 && mouseY>30 && mouseY<70) { 
     fl1= false;
     fl2 = true;
}
}





