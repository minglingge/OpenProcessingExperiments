
/*
 * Creative Coding
 * Week 2, 04 - The Clocks
 * by Craig Senior
 * Copyright (c) 2014 Monash University
 *
 * This program draws a grid of circular "clocks", whose hands move according to the elasped time.
 * The higher the clock number the faster it moves, the first clock takes 1 min to go all the way around.
 * The function "movingCircle" is used to draw each clock. It is passed the position, size and hand angle
 * as arguments.
 * 
 */

void setup() {
  size(600, 600);
  background(255);
  rectMode(CENTER);
  noStroke();
}


void draw() {
  background(#F27F0C);
  noStroke();

  int num = 5;
  int margin = 80;

  float gutter = 0;
  float cellsize = ( width - (2 * margin) - gutter * (num - 1) ) / (num - 1);

  int circleNumber = 0;

  for (int i=0; i<num; i++) {
    for (int j=0; j<num; j++) {
      ++circleNumber;

      float tx = margin + cellsize * i + gutter * i;
      float ty = margin + cellsize * j + gutter * j;
        
        if (circleNumber % 2 != 0)
        {
        movingCircle(tx, ty, cellsize, circleNumber * TWO_PI * millis() / 60000.0);
        }
        else
        {
        movingRect(tx, ty, cellsize, circleNumber * TWO_PI * millis() / 60000.0);
        }
    }
  }
  
  /* Save */
    if (keyPressed == true && key == 's')
  {
  saveFrame("Image.jpg");
  }
  
}


void movingCircle(float x, float y, float size, float angle) {

  /* calculate endpoint of the line */
  float tempX = x + (size / 2) * sin(angle);
  float tempY = y + (size / 2) * cos(angle);

  /* Set colours and stroke */
  stroke(#488698);
  strokeWeight(2);
  fill(#19E5E0);

  /* Circle */
  ellipse(x, y, size, size);

  /* Line */
  line(x, y, tempX, tempY);
}

void movingRect(float x, float y, float size, float angle) {

  /* calculate endpoint of the line */
  float tempX = x + (size / 2) * sin(-angle);
  float tempY = y + (size / 2) * cos(-angle);

  /* Set colours and stroke */
  stroke(#488698);
  strokeWeight(2);
  fill(#17E3BC);
  
  /* Rectangle */
  rect(x, y, size, size);

  /* Line */
  line(x, y, tempX, tempY);
}







