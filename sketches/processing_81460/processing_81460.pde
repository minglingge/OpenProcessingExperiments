
// P_3_1_1_01.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * typewriter. time reactive. 
 * 
 * MOUSE
 * position y           : adjust spacing (line height)
 * 
 * KEYS
 * a-z                  : text input (keyboard)
 * backspace            : delete last typed letter
 * ctrl                 : save png + pdf
 */

PImage img;



String textTyped = "What  should  I  paint?  Start  brainstorming  some  ideas  here.";
float[] fontSizes = new float[textTyped.length()];
float minFontSize = 10;
float maxFontSize = 1500;
float newFontSize = 0;

int pMillis;
float maxTimeDelta = 10000.0;

float spacing = 5; // line height
float tracking = 4; // between letters

PFont font;



void setup() {
  size(600, 450);
  // make window resizable
  
  img= loadImage("canvas.png");
  background(img);

 font = createFont("helvetica",24);


  smooth();
  noStroke();
  noCursor();

  // init fontSizes
  for (int i = 0; i < textTyped.length(); i++) {
    fontSizes[i] = minFontSize;
  }

  pMillis = millis();
}


void draw() {

  background(img);
  textAlign(CENTER);
  fill(0);

  spacing = map(mouseY, 0,height, 0, 50);
  translate(0, 200+spacing);

  float x = 10, y = 0, fontSize = 40;

  for (int i = 0; i < textTyped.length(); i++) {
    // get fontsize for the actual letter from the array
    fontSize = fontSizes[i];
    textFont(font, fontSize);
    char letter = textTyped.charAt(i);
    float letterWidth = textWidth(letter) + tracking;
    
    if (x+letterWidth > width) {
      // start new line and add line height
      x = 0;
      y += spacing; 
    }
    
    // draw letter
    text(letter, x, y);
    // update x-coordinate for next letter
    x += letterWidth;
  }

  // blinking cursor after text
  float timeDelta = millis() - pMillis;
  newFontSize = map(timeDelta, 0,maxTimeDelta, minFontSize,maxFontSize);
  newFontSize = min(newFontSize, maxFontSize);

  fill(#F579E0);
  if (frameCount/4 % 4 == 0) fill(0);
  rect(x, y, newFontSize/2, newFontSize/20);




    endRecord();

  }




void keyReleased() {
  // export pdf and png

}


void keyPressed() {
  if (key != CODED) {
    switch(key) {
    case DELETE:
    case BACKSPACE:
      if (textTyped.length() > 0) {
        textTyped = textTyped.substring(0,max(0,textTyped.length()-1));
        fontSizes = shorten(fontSizes);
      }
      break;
      // disable those keys
    case TAB:
    case ENTER:
    case RETURN:
    case ESC:
      break;
    default:
      textTyped += key;
      fontSizes = append(fontSizes, newFontSize);
    }

    // reset timer
    pMillis = millis();
  }
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

