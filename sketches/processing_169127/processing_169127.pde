

PImage[] buttons;
int selButton = 0;


void setup() {
  size(1200, 600);

  // Using an array to store the button images:
  buttons = new PImage[10];
  buttons[0] = loadImage("1.png");
  buttons[1] = loadImage("2.png");
  buttons[2] = loadImage("3.png"); // This is just a white circle to use as an eraser
  buttons[3] = loadImage("4.png");
  buttons[4] = loadImage("5.png");
  buttons[5] = loadImage("6.png");
  buttons[6] = loadImage("7.png");
  buttons[7] = loadImage("8.png");
  buttons[8] = loadImage("eraser.png");
  buttons[9] = loadImage("9.png");
  background(255);

  smooth();
}


void draw() {
  if (mousePressed) { // User is pressing mouse...

    if (mouseX < 200) {
      // ...inside menu area, need to check which button is being pressed:


      if (20 < mouseX && mouseX < 120 && 20 < mouseY && mouseY < 120)  selButton = 0;
      else if (20 < mouseX && mouseX < 120 && 140 < mouseY && mouseY < 240) selButton = 1;
      else if (20 < mouseX && mouseX < 120 && 260 < mouseY && mouseY < 360)  selButton = 2;
      else if (20 < mouseX && mouseX < 120 && 380 < mouseY && mouseY < 480)  selButton = 3;
      else if (140 < mouseX && mouseX < 240 && 20 < mouseY && mouseY < 120)  selButton = 4;
      else if (20 < mouseX && mouseX < 120 && 500 < mouseY && mouseY < 600)  selButton = 5;
      else if (140 < mouseX && mouseX < 240 && 140 < mouseY && mouseY < 240)  selButton = 6;
      else if (140 < mouseX && mouseX < 240 && 260 < mouseY && mouseY < 360)  selButton = 7;
      else if (140 < mouseX && mouseX < 240 && 260 < mouseY && mouseY < 360)  selButton = 8;
    } else {
      // ...inside drawing area, draws selected button. The -50 value is to center the stamp at
      // the mouse location:
      image(buttons[selButton], mouseX - 50, mouseY - 50);
    }
  }

  // Draw menu at the end so overwrites drawing going outside the border of the drawing area  
  noStroke();
  fill(#FFEF6F);
  rect(0, 0, 250, height);
  image(buttons[0], 20, 20);
  image(buttons[1], 20, 140);
  image(buttons[2], 20, 260);
  image(buttons[3], 20, 380);
  image(buttons[4], 140, 20);
  image(buttons[5], 20, 500);
  image(buttons[6], 140, 140);
  image(buttons[7], 140, 260);
  image(buttons[8], 140, 380);
  image(buttons[9], 500, 300);

  //Draw outline around selected button:
  noFill();
  stroke(120);
  if (selButton == 0) rect(20, 20, 100, 100);
  else if (selButton == 1) rect(20, 140, 100, 100);
  else if (selButton == 2) rect(20, 260, 100, 100);
  else if (selButton == 3) rect(20, 380, 100, 100);
  else if (selButton == 4) rect(140, 20, 100, 100);
  else if (selButton == 5) rect(20, 500, 100, 100);
  else if (selButton == 6) rect(140, 120, 100, 100);
  else if (selButton == 7) rect(140, 260, 100, 100);
  else if (selButton == 8) rect(140, 380, 100, 100);
}

void keyPressed() {
  // Press any key to save 
  PImage img = get(200, 0, width - 200, height);
  img.save("drawing.png");
}


