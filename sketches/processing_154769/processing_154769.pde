
/*
 * Creative Coding
 * Week 5, 02 - Digital Clock
 * by Indae Hwang and Jon McCormack
 * Copyright (c) 2014 Monash University
 *
 * Modified by David Leslie Williams
 *
 * This sketch shows how to use text in Processing
 * The sketch creates a digital clock that shows the current time in hours, minutes and seconds
 * Use the 'h', 'm' and 's' keys to enlarge the hours, minutes or seconds in the display and add same 
 * colour banner at top and bottom of screen.
 *
 * Cogs for hours, minutes & seconds.
 * Pendulum. 
 * Background image darkens, varying from black (night) to normal Image (day).
 * Sound - 'tick-tock' and 'quarter' chimes. 
 * use the 'q' (quiet) to turn of the tick and chimes
 * use the 't' (tick) to turn the tick-tock back on.
 * use the 'c' (chime) to turn chimes back on
 *
 * message "Having fun in Llandrindod Wells added.
 */

import ddf.minim.*;
Minim minim1;
AudioPlayer[] soundFx;
int selectSound;
PImage [] myCogs;
PImage myBackground;
PFont myFont;    // font data
char  selected;  // what is selected (h,m,s)
int   gap;       // gap between digits
float pendulumLength, pivotX, pivotY, pendulumX, pendulumY;
int lastSecond, millisOffset, lastChime, chimeCount, lastChimeSecond, lastChimeHour;
float darkness = 0;
float middleX, middleY;
boolean chimeBoolean, tickBoolean;
void setup() {
  size(800,600);
  //size(1024, 600);
  //size(1280, 1024);
  frame.setResizable(true);
  middleY = height/2;
  middleX = width/2;
  gap = width/3;
  
  myCogs = new PImage[4];
 
  myCogs[0] = loadImage("Hours2.png");
  myCogs[1] = loadImage("Minutes2.png");
  myCogs[2] = loadImage("Seconds2.png");
  myBackground = loadImage("IMG_4242.JPG");
  chimeBoolean = true;
  tickBoolean = true;
  minim1 = new Minim(this);
  soundFx = new AudioPlayer[3];
  soundFx[0] = minim1.loadFile("Sound75.wav");
  soundFx[1] = minim1.loadFile("Sound83.wav");
  soundFx[2] = minim1.loadFile("Sound7201.wav");
  
  myFont = loadFont("Frutiger65-Bold-200.vlw");  // load the font from this sketch's data directory
  textFont(myFont);  // set the current font to myFont
  selected = '0';
  noStroke();
  
  //Analogue second offset:
  // To use the millis() function to drive the seconds cog in a smooth manner rather
  // than stepping every second, need to determine the offset of millis() when the second() function
  // changes value
  lastSecond = second();
  while (lastSecond == second()){
  }
  millisOffset = millis()%1000;
  
  //Initialise variables for handling hourly chimes.
  chimeCount = 0;
  lastChimeHour = hour();
  lastChimeSecond = 59;
  
}

void draw() {
  middleY = height/2;
  middleX = width/2;
  gap = width/3;

  if (hour() < 12) {
    darkness = map(hour(), 0, 11, 255, 0);
  }
  else if (hour() >= 12) {
    darkness = map(hour(), 12, 23, 0, 255);
  }
  
  // background picture
  pushMatrix();
  translate(middleX, middleY);
  scale(0.25 *width/800, 0.25 *height/600); 
  rotate(0);
  imageMode(CENTER);
  image(myBackground, 0, 0);
  popMatrix();

  fill(0, darkness);
  rect(0,10,width,height-20);

  //clock face ellipse
  fill(#DDDE22,60);
  ellipse(middleX, middleY, width-20, height-20);
  
   //Draw cogs and rotate
  // draw hour cog
  pushMatrix();
  translate(middleX, middleY);
  scale(1.232 * middleY/512);
  rotate(((PI/6) * hour()) + ((PI/360) * minute()) + ((PI/21600) * second()));
  imageMode(CENTER);
  image(myCogs[0], 0, 0);
  popMatrix();
  
  // draw minute cog
  pushMatrix();
  translate(middleX, middleY);
  scale(.78 * middleY/512);
  rotate(((PI/30) * minute()) + ((PI/1800) * second()) + ((PI/1800000) * ((millis()-millisOffset+0)%1000)));
  imageMode(CENTER);
  image(myCogs[1], 0, 0);
  popMatrix();
  
  // draw second cog
  pushMatrix();
  translate(middleX, middleY);
  scale(.49 * middleY/512);
  rotate(((PI/30) * second()) + ((PI/30000) * ((millis()-millisOffset+0)%1000)));
  //rotate((PI/30000) * ((millis()-millisOffset+5)%1000));
  imageMode(CENTER);
  image(myCogs[2], 0, 0);
  popMatrix();
  
 // draw dials for hours and Minutes/Seconds
  stroke(0);
  float x1, y1, x2, y2;
  String theText;
  float textW;
  float textA;
  strokeWeight(2);
  // hourly markers (double length of sec / min markers)
  for (int i = 0; i < 12; i++){
    x1 = middleX - (sin((i-6)*PI/6) * 700/2*middleY/512);
    y1 = middleY - (cos((i-6)*PI/6) * 700/2*middleY/512);
    x2 = middleX - (sin((i-6)*PI/6) * 760/2*middleY/512);
    y2 = middleY - (cos((i-6)*PI/6) * 760/2*middleY/512);
    line(x1, y1, x2, y2);
    x1 = middleX + (sin(i*PI/6) * 410/2*middleY/512);
    y1 = middleY + (cos(i*PI/6) * 410/2*middleY/512);
    x2 = middleX + (sin(i*PI/6) * 470/2*middleY/512);
    y2 = middleY + (cos(i*PI/6) * 470/2*middleY/512);
    line(x1, y1, x2, y2);
    // Digits - Hours in white
    theText = str(12-i); // convert number to string
    textSize(middleX/20);  // normal font size
    textW = textWidth(theText) * 0.5;
    textA = textAscent() * 0.5;
    fill(255);
    text(theText, (middleX + (sin((i-6)*PI/6) * 800/2*middleY/512) - textW), (middleY + (cos((i-6)*PI/6) * 800/2*middleY/512) + textA));
    // Digits - Minutes / Seconds in Black
    theText = str(60-i*5); // convert number to string
    textSize(middleX/30);  // normal font size
    textW = textWidth(theText) * 0.5;
    textA = textAscent() * 0.5;
    fill(0);
    text(theText, middleX + (sin((i-6)*PI/6) * 500/2*middleY/512) - textW, middleY + (cos((i-6)*PI/6) * 500/2*middleY/512) + textA);
  }
  // add 4 marks evenly spaced between the hourly markers
  // note originally did all but lines did not exactly co-incide in a couple of places!
  // hence not doing the 5th mark
  for (int i = 0; i < 60; i++){
    if ( i % 5 != 0) {
    x1 = middleX + (sin(i*PI/30) * 730/2*middleY/512);
    y1 = middleY + (cos(i*PI/30) * 730/2*middleY/512);
    x2 = middleX + (sin(i*PI/30) * 700/2*middleY/512);
    y2 = middleY + (cos(i*PI/30) * 700/2*middleY/512);
    line(x1, y1, x2, y2);
    x1 = middleX + (sin(i*PI/30) * 440/2*middleY/512);
    y1 = middleY + (cos(i*PI/30) * 440/2*middleY/512);
    x2 = middleX + (sin(i*PI/30) * 410/2*middleY/512);
    y2 = middleY + (cos(i*PI/30) * 410/2*middleY/512);
    line(x1, y1, x2, y2);
    }
  }
  
  // draw pendulum
  stroke(#494B09);
  strokeWeight(10);
  pendulumLength = height*3/4;
  pivotX = middleX;
  pivotY = 10;
  pendulumX = pivotX + sin(PI * millis()/1000) * pendulumLength / 4;
  //pendulumY = 20 + pendulumLength;
  //pendulumY = sqrt(pendulumLength*pendulumLength + pendulumX*pendulumX);
  pendulumY = pivotY + pendulumLength + cos(PI * millis()/500)* pendulumLength / 40;
  line(pivotX, pivotY, pendulumX, pendulumY);
  noStroke();
  fill(#494B09);
  ellipse(pendulumX, pendulumY,middleY/3,middleY/3);
  
  //Display Llandrindod message
  theText = "Having a fun time in "; // set string
  textSize(middleX/10);  // normal font size
  textW = textWidth(theText) * 0.5;
  textA = textAscent() * 0.5;
  // draw text offset from the centre of the screen
  fill(#FAFF00);
  text(theText, middleX - textW, middleY/10 + textA);

  theText = "Llandrindod Wells";
  textSize(middleX/10);  // normal font size
  textW = textWidth(theText) * 0.5;
  textA = textAscent() * 0.5;
  // draw text offset from the centre of the screen
  fill(#FAFF00);
  text(theText, pendulumX - textW, pendulumY + textA);


  // play second tick-tock
    
  if (lastSecond != second() && tickBoolean ){
    lastSecond = second();
    if ( second() % 2 == 0 ){
      soundFx[1].rewind();
      soundFx[1].play();
    } else {
      soundFx[0].rewind();
      soundFx[0].play();        
    }
  }
  //play hour chimes  or chime quarters
  if (lastChimeHour != hour() && chimeBoolean){
    if (chimeCount < hour() % 12 ){
//      lastChimeSecond = second();
      println( chimeCount + " , " + second());
      if (chimeCount == second()){
        soundFx[2].rewind();
        soundFx[2].play();
        chimeCount = chimeCount + 1;
        if (chimeCount == hour()){
            chimeCount = 0;
            lastChimeHour = hour();
        }
      }
    } else lastChimeHour = hour();
  } else if (minute() % 15 == 0 && chimeBoolean){
    if (lastChime != minute()){
      lastChime = minute();
      soundFx[2].rewind();
      soundFx[2].play();
    }   
  }
  
  color c = color(selected == 'h' ? 255 : 0, selected == 'm' ? 255 : 0, selected == 's' ? 255 : 0);
  
  // Digital Clock - draw hours, minutes, seconds
  fill(255,0,0);  
  drawNumber(hour(), selected == 'h', -gap, 0);
  fill(0,255,0);
  drawNumber(minute(), selected == 'm', 0, 0);
  fill(0,0,255);
  drawNumber(second(), selected == 's', gap, 0);
  
  // Draw date as day - month - year
  String textMonth;
  textMonth = "January";
  switch (month()){
    case 1:
      textMonth = "January";
      break;
     case 2:
      textMonth = "February";
      break;
    case 3:
      textMonth = "March";
      break;
    case 4:
      textMonth = "April";
      break;
    case 5:
      textMonth = "May";
      break;
    case 6:
      textMonth = "June";
      break;
    case 7:
      textMonth = "July";
      break;
    case 8:
      textMonth = "August";
      break;
    case 9:
      textMonth = "September";
      break;
    case 10:
      textMonth = "October";
      break;
    case 11:
      textMonth = "November";
      break;
    case 12:
      textMonth = "December";
      break;
  }     
  theText = str(day()) +" - " + textMonth + " - " + str(year()); // convert number to string
  textSize(middleX/10);  // normal font size
  textW = textWidth(theText) * 0.5;
  textA = textAscent() * 0.5;
  // draw text offset from the centre of the screen
  fill(255,0,0);
  text(theText, middleX - textW, height * 19/20 + textA);

  
  drawBanner(c, 10);
}

/*
 * drawNumber
 * takes an integer and draws it offset from the centre of the screen by
 * offsetX and offsetY. If big is true then use a big size for the type.
 *
 */
void drawNumber(int number, boolean big, float offsetX, float offsetY) {
  String theText = str(number); // convert number to string
  if (theText.length() == 1) {
    theText = str(0) + theText;
  }
  if (big)
    textSize(2 * middleX / 3); // set big font size
  else
    textSize(middleX / 3);  // normal font size

  float textW = textWidth(theText) * 0.5;
  float textA = textAscent() * 0.5;

  // draw text offset from the centre of the screen
  text(theText, middleX - textW + offsetX, middleY + textA + offsetY);
}

/*
 * drawBanner
 * draw a coloured banner at the top and bottom of the screen in the supplied colour
 */
void drawBanner(color c, float w) {
  noStroke();
  fill(c);
  rectMode(CORNER);
  rect(0, height - w, width, w);
  rect(0, 0, width, w);
}

void keyReleased() {
  // set selected to be the last key released
  if (key == 'q'){
    chimeBoolean = false;
    tickBoolean = false;
  } else if (key == 'c') {
    chimeBoolean = true;
  } else if (key == 't') {
    tickBoolean = true;
  } else {
  selected = key;
  }
}



