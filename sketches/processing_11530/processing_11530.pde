
float[] objectXPositions;
float[] objectYPositions;
float[] objectXMovements;
float[] objectYMovements;
int[] objectStyles;
color[] objectStrokes;
color[] objectFills;
float[] objectWidths;
float[] objectHeights;

int colorPaletteSize = 5;
color[] colorPalette;

int numberOfObjects = 70;
int interactionDistance = 79; //distance in pixels between two object to interact

int objectMinSize = 4;
int objectMaxSize = 5;
int maxSpeed = 9;
void setup() {
  size(800, 600);
  size(screen.width * 9/10, screen.height * 9/10);
  smooth();
  colorMode(RGB);
  background(5,4);

  //draw ellipses from the center
 // ellipseMode(CORNER);

  createColorPalette();

  createObjectStorage();
  randomizeObjectPositions();
  randomizeObjectMovements();
  setupObjectStyles();
  setupObjectColors();

}



void draw() {
  //background(color(255)); 


  updateEachObjectPosition();

  updateEachObjectColors();

  reactToObjectOverlaps();

  drawEachObject();
  
  perturbEachObjectMotion();
}




void updateEachObjectPosition() {

  for (int i = 0; i < numberOfObjects; i++) {

    objectXPositions[i] = objectXPositions[i] + objectXMovements[i];
    objectYPositions[i] = objectYPositions[i] + objectYMovements[i];

    //did this object move offscreen? wrap it around...
    if (objectIsOffscreenLeft(i)) {
      //move it to the right edge
      objectXPositions[i] = width;
    }
    else if (objectIsOffscreenRight(i)) {
      //move it to the left edge
      objectXPositions[i] = 0; 
    }

    if (objectIsOffscreenTop(i)) {
      //move it to the right edge
      objectYPositions[i] = height;
    }
    else if (objectIsOffscreenBottom(i)) {
      //move it to the left edge
      objectYPositions[i] = 0; 
    }
  }

}


void updateEachObjectColors() {

  for (int i = 0; i < numberOfObjects; i++) {
    //dim the object
    objectFills[i] = 
      color(red(objectFills[i]), 
            green(objectFills[i]), 
            blue(objectFills[i]) - 2);
  }
}



void drawEachObject() {
  for (int i = 0; i < numberOfObjects; i++) {
    stroke(objectStrokes[i]);
    fill(objectFills[i]);

    if (objectStyles[i] ==-2) {
      //-1 means don't draw anything
    }
    else if (objectStyles[i] == 0) {
      rect(objectXPositions[i], objectYPositions[i], objectWidths[i], objectHeights[i]);
    }
  }
}




void reactToObjectOverlaps() {
  for (int i=0; i < numberOfObjects; i++) {
    for (int j=i; j < numberOfObjects; j++) {
      float howFarApartAreThey = objectXPositions[i] - objectXPositions[j];
      if (abs(howFarApartAreThey) < interactionDistance) {

        objectWidths[i] = constrain(6,1,5);
        objectHeights[i] = constrain(9,300,5);
        objectWidths[j] = constrain(6,1,4);      
        objectHeights[j] = constrain(9,300,4);

        objectFills[i] = colorPalette[2];
        objectFills[j] = colorPalette[4];
      }
    } 
  }
}





void perturbEachObjectMotion() {
  
  //go through all the objects:
  for (int i=0; i < numberOfObjects; i++) {    
     //add some randomness to either the x or y movement
     //also, make sure no object moves too fast.
     float perturbRange = objectWidths[i] / 40.0;
     if (random(10) > 5) {
       objectXMovements[i] = constrain(objectXMovements[i] + random(-perturbRange, perturbRange), -maxSpeed, maxSpeed);
     } else {
       objectYMovements[i] = constrain(objectYMovements[i] + random(-perturbRange, perturbRange), -maxSpeed, maxSpeed);
     }
     
  }
  
}




