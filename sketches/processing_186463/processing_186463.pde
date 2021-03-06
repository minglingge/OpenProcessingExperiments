
int counter;

void setup() {  //setup function called initially, only once
  size(500, 500);
  background(255);  //set background white
  colorMode(HSB);   //set colors to Hue, Saturation, Brightness mode
  counter = 12;
}

void draw() {  //draw function loops 
  counter++;
  noStroke();
  fill(random(255),255,255);
  
  if(mousePressed == true) { //add some interaction
    ellipse(mouseX, mouseY, counter, counter);
  }
  else {
    ellipse(width/2, height/2, 80*sin(counter), 80*sin(counter));
  }
}
