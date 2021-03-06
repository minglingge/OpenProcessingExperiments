
//Variables
int dim = 700; //Default size
int seed = 1; //Random color
int seedmax = 10; //Maximum number of seed values
int bitetime = 20; //Frames per bite
int walktime = 20; //Frames per walk
float sscale = 10; //number of sizes between (0,2]x
float rscale = 10; //number of rotations (out of 360 degrees)
float sadjust = floor(sscale/2); //current scale
float radjust = 0; //current rotation
boolean stampmode = true; //make stamps or manipulare current
boolean hiding = false; //Hiding instructions

//Stamp
int nmax = 100; //max number of stamps
int stampN = 0; //number of active stamps
Creature[] stamps = new Creature[nmax]; //stamp array; first follows mouse.
int following = stampN; //Current stamp being followed.

void setup() {
  setuphandle();
}

void draw() {
  drawhandle();
}

void keyReleased() {
  presshandle();
}

void mousePressed() {
  clickhandle();
}

void setuphandle() {
  size(1000,1000);        // size of the window
  smooth();                // antialiasing 
  rectMode(CENTER);
  ellipseMode(CENTER);
  strokeWeight(1);
  frameRate(30);
  stampstart();
}

void drawhandle() {
  background(255);
  //Make stamps
  makestamps();
  if (stampmode) {
    //Follow mouse
    stamps[0].crePos(mouseX,mouseY);
    stamps[0].creDraw();
  }
  else {
    //Move stamp under mouse
    stampcheck();
    if (following < stampN) {
      stamps[following].crePos(mouseX,mouseY);
    }
  }
  if (!hiding) {
    displaytext();
  }
}

void clickhandle() {
  if (stampmode) {
    if (mouseButton == LEFT && stampN < nmax) {
      //create stamp
      addstamps();
    }
    if (mouseButton == RIGHT) {
      //change color
      seed = chooseSeed(seed);
      stamps[0].creColor(seed);
    }
  }
  else {
    if (mouseButton == LEFT) {
      //stamp follows mouse
      if (following >= stampN) {
        stampfollow();
      }
      else {
        following = stampN;
      }
    }
    if (mouseButton == RIGHT && following < stampN) {
      //change color
      int tempseed = chooseSeed(stamps[following].creSeed);
      stamps[following].creColor(tempseed);
    }
  }
}

void presshandle() {
  if (key == 'c' || key == 'C') {
    //Clear stage
    stampstart();
  }
  else if (key == 'h' || key == 'H') {
    //Hide instructions
    hiding = !hiding;
  }
  else if (key == 'b' || key == 'B') {
    if (stampmode) {
      //mouse bites
      stamps[0].creBite();
    }
    else if (following < stampN) {
      //chosen bites
      stamps[following].creBite();
    }
  }
  else if (key == 'n' || key == 'N') {
    //stamps bite
    for (int i=1; i < stampN; i ++) {
      stamps[i].creBite();
    }
  }
  else if (key == ' ') {
    //switch from create new or manipulate current
    stampmode = !stampmode;
    following = stampN;
  }
  else if (key == 'w' || key == 'W') {
    //mouse walks
    stamps[0].creWalk();
  }
  else if (key == 'e' || key == 'E') {
    //stamps walk
    for (int i=1; i < stampN; i ++) {
      stamps[i].creWalk();
    }
  }
  else if (key == 'f' || key == 'F') {
    //stamps walk
    if (stampmode) {
      stamps[0].creTurn();
    }
    else if (following < stampN) {
      stamps[following].creTurn();
    }
  }
  else if (key == CODED) {
    //change size/rotation
    arrowcheck();
    stamps[0].creBig(sadjust);
    stamps[0].creSpin(radjust);
  }
}

void arrowcheck() {
  //Store old size while manipulating stamps
  float tempsadjust = sadjust;
  float tempradjust = radjust;
  if (following < stampN && !stampmode) {
    //Get values of stamp
    sadjust = stamps[following].creSize;
    radjust = stamps[following].creRot;
  }
  if (keyCode == UP && sadjust <= sscale) {
    sadjust ++;
  }
  else if (keyCode == DOWN && sadjust > 1) {
    sadjust --;
  }
  else if (keyCode == RIGHT) {
    radjust ++;
    while (radjust > rscale) {
      radjust -= rscale;
    }
  }
  else if (keyCode == LEFT) {
    radjust --;
    while (radjust < 0) {
      radjust += rscale;
    }
  }
  if (following < stampN && !stampmode) {
    //Set to chosen stamp
    stamps[following].creBig(sadjust);
    stamps[following].creSpin(radjust);
    sadjust = tempsadjust;
    radjust = tempradjust;
  }
}

void stampstart() {
  stampN = 0;
  stamps[stampN] = new Creature(mouseX,mouseY,128,radjust,sadjust,seed);
  stampN ++;
}

void addstamps() {
  stamps[stampN] = new Creature(mouseX,mouseY,255,radjust,sadjust,seed);
  if (stamps[0].creSide == 1)
  {
    stamps[stampN].creTurn();
  }
  else if (stamps[0].creSide == 2)
  {
    stamps[stampN].creTurn();
    stamps[stampN].creTurn();
  }
  stampN ++;
}

void makestamps() {
  for (int i=1; i < stampN; i ++) {
    stamps[i].creDraw();
  }
  if (stampmode) {
    stamps[0].creDraw();
  }
}

void stampcheck() {
  for (int i=1; i < stampN; i ++) {
    //If mouse is on face, do walk to let user know
    if (dist(mouseX,mouseY,stamps[i].creX,stamps[i].creY) < stamps[i].creSize*170/sscale) {
      stamps[i].creWalk();
    }
  }
}

void stampfollow() {
  for (int i=stampN-1; i > 0 && following >= stampN; i--) {
    //If mouse is on face, move individual stamp to mouse position
    if (dist(mouseX,mouseY,stamps[i].creX,stamps[i].creY) < stamps[i].creSize*170/sscale) {
      following = i;
    }
  }
}

void displaytext() {
  String display;
  if (stampmode) {
    display = "Move the stamp with the left mouse.\nLeft click to place stamp.";
  }
  else {
    display = "Left click a stamp to select it.\nAll opperations are performed on the selected stamp.";
  }
  display += "\nRight click to change color.\nUse the up and down arrow to resize.\nUse the left and right arrow to rotate.\nPress F to switch from front, side, and back view.\nPress B to bite.\nPress N for all to bite.";
  if (stampmode) {
    display += "\nPress W to walk.\nPress E for all to walk.\nPress Space to switch to stamp manipulation.";
  }
  else {
    display += "\nPress Space to add more stamps.";
  }
  display += "\nPress C to clear the stage.\nPress H to toggle instruction display.";
  fill(0);
  textAlign(LEFT,BOTTOM);
  text(display,0,0,width,height);
}

int chooseSeed(int seed) {
  seed ++;
  seed %= seedmax;
  return seed;
}

class Creature {
  int creX;
  int creY;
  int creAlp;
  float creRot;
  float creSize;
  int creSeed;
  int creBiting = 0;
  int creWalking = 0;
  int creSide = 0;
  Creature (int localX, int localY, int localalp, float localrot, float localsize, int localseed)
  {
    creX = localX;
    creY = localY;
    creAlp = localalp;
    creRot = localrot;
    creSize = localsize;
    creSeed = localseed;
  }
  void creSet (int localX, int localY, int localalp, float localrot, float localsize, int localseed)
  {
    creX = localX;
    creY = localY;
    creAlp = localalp;
    creRot = localrot;
    creSize = localsize;
    creSeed = localseed;
  }
  void crePos(int localX, int localY) {
    creX = localX;
    creY = localY;
  }
  void creTrans(int localalp) {
    creAlp = localalp;
  }
  void creSpin(float localrot) {
    creRot = localrot;
  }
  void creBig(float localsize) {
    creSize = localsize;
  }
  void creColor(int localseed) {
    creSeed = localseed;
  }
  void creTurn() {
    creSide++;
    creSide %= 3;
  }
  void creBite() {
    if (creBiting == 0) {
      creBiting ++;
    }
  }
  void creWalk() {
    if (creWalking == 0) {
      creWalking ++;
    }
  }
  void creDraw () {
    makecreature(creX,creY,creAlp,creRot,creSize,creSeed,creBiting,creWalking,creSide);
    if (creBiting > 0) {
      creBiting++;
      //Reset when done
      if (creBiting > bitetime) {
        creBiting = 0;
      }
    }
    if (creWalking > 0) {
      creWalking++;
      //Reset when done
      if (creWalking > 2*walktime) {
        creWalking = 0;
      }
    }
  }
}

void makecreature(int localX, int localY, int localalp, float localrot, float localsize, int localseed, int biting, int walking, int side) {
  pushMatrix();
    translate(localX,localY);
    scale(2*localsize/sscale);
    rotate(TWO_PI*localrot/rscale);
    translate(-localX,-localY);
    if (side == 0) {
      //Show face
      randomSeed(localseed);
      maketail(localX,localY,localalp,biting);
      randomSeed(localseed);
      makefeet(localX,localY,localalp, walking);
      randomSeed(localseed);
      makebody(localX,localY,localalp);
      randomSeed(localseed);
      makemouth(localX,localY,localalp,biting);
      makeantennae(localX,localY,localalp,biting);
    }
    else if (side == 1) {
      //Show side
      randomSeed(localseed);
      maketail(localX,localY,localalp,biting);
      randomSeed(localseed);
      makesidefeet(localX,localY,localalp, walking);
      makesideantennae1(localX,localY,localalp,biting);
      randomSeed(localseed);
      makesidemouth(localX,localY,localalp,biting);
      randomSeed(localseed);
      makesidebody(localX,localY,localalp);
      makesideantennae2(localX,localY,localalp,biting);
    }
    else {
      //Show back
      makeantennae(localX,localY,localalp,biting);
      randomSeed(localseed);
      makebackfeet(localX,localY,localalp, walking);
      randomSeed(localseed);
      makebody(localX,localY,localalp);
      randomSeed(localseed);
      maketail(localX,localY,localalp,biting);
      randomSeed(localseed);
      makeback(localX,localY,localalp);
    }
  popMatrix();
}

void maketail(int localX, int localY, int localalp, int wagging) {
  //Tail wag
  pushMatrix();
    translate(localX-64,localY);
    rotate(-QUARTER_PI*.6*smoothtrans(float(wagging)/bitetime));
    translate(-(localX-64),-localY);
    stroke(0,localalp);
    //Make the tail point
    noFill();
    strokeWeight(5);
    arc(localX+320,localY+144,64,64,PI+HALF_PI,TWO_PI);
    strokeWeight(1);
    //Add spike ball (square + rotated square)
    fill(0,localalp);
    rect(localX+352,localY+160, 32, 32);
    pushMatrix();
      translate(localX+352,localY+160);
      rotate(QUARTER_PI);
      rect(0,0, 32, 32);
    popMatrix();
    //Make the tail length
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < .5*i; j++) {
        //Random color for each elipse
        fill(darkgreenchoose(),localalp);
        ellipse(localX+320-i*32,localY+112-i*8-j*16/1.5,64,64);
      }
      for (int j = i; j > .5*i; j--) {
        //Random color for each elipse
        fill(darkgreenchoose(),localalp);
        ellipse(localX+320-i*32,localY+112-i*8-j*16/1.5,64,64);
      }
    }
    //Center of tail length
    for (int i = 0; i < 10; i++) {
      int j = floor(.5*i);
      fill(darkgreenchoose(),localalp);
      ellipse(localX+320-i*32,localY+112-i*8-j*16/1.5,64,64);
    }
  popMatrix();
}

void makefeet(int localX, int localY, int localalp, int walking) {
  stroke(0,localalp);
  //Choose legs
  color legchoice = midgreenchoose();
  color feetchoice = midgreenchoose();
  color toechoice = midgreenchoose();
  pushMatrix();
    //Left leg
    if (walking < walktime) {
      translate(0,-64*smoothtrans(float(walking)/walktime));
    }
    fill(legchoice,localalp);
    ellipse(localX-64,localY+128,64,170);
    //left foot
    fill(feetchoice,localalp);
    ellipse(localX-64,localY+192,85,51);
    //left toe
    fill(toechoice,localalp);
    for (int i = 0; i < 3; i++) {
      ellipse(localX-96+i*32,localY+224,51,42);
    }
    //Right leg
    translate(0,-64*smoothtrans(float(walking-walktime)/walktime));
    fill(legchoice,localalp);
    ellipse(localX+64,localY+128,64,170);
    //right foot
    fill(feetchoice,localalp);
    ellipse(localX+64,localY+192,85,51);
    //right toe
    fill(toechoice,localalp);
    for (int i = 0; i < 3; i++) {
      ellipse(localX+32+i*32,localY+224,51,42);
    }
  popMatrix();
} 

void makebody(int localX, int localY, int localalp) {
  stroke(0,localalp);
  //New face equation.
  int jtimes = 20;
  int itimes = 5;
  pushMatrix();
    //Center of face
    translate(localX,localY);
    for (int i = 0; i <= itimes; i++) {
      for (int j = 1; j <= jtimes*(itimes+1-i)/(itimes); j++) {
      //Determine fixed position (no longer random)
      pushMatrix();
        //Circle around face
        rotate(HALF_PI+TWO_PI*j/(jtimes*(itimes+1-i)/(itimes)));
        //Radiate inward
        translate(128-128*i/itimes,0);
        //Random color
        fill(greenchoose(),localalp);
        ellipse(0,0,64,64);
      popMatrix();
      }
    }
  popMatrix();
}

void makemouth(int localX, int localY, int localalp, int biting) {
  stroke(0,localalp);
  //Green elipse face
  fill(greenchoose(),localalp);
  ellipse(localX, localY, 170, 170);
  //black mouth square in center of face
  fill(0,localalp);
  //Adjust as mouth moves
  rect(localX, localY, 128, 64-32*smoothtrans(float(biting)/bitetime));
  //red tongue
  fill(floor(random(128)+128),0,0,localalp);
  //Adjust as mouth moves.
  ellipse(localX,localY+16-16*smoothtrans(float(biting)/bitetime),64,32);
  //white teeth
  fill(255,localalp);
  for (int i = 0; i < 4; i++) {
    //Tooth position adjusted by bite function
    pushMatrix();
      translate(0,-16*smoothtrans(float(biting)/bitetime));
      triangle(localX-64+32*i,localY+32,localX-32+32*i,localY+32,localX-48+32*i,localY);
      translate(0,32*smoothtrans(float(biting)/bitetime));
      triangle(localX-64+32*i,localY-32,localX-32+32*i,localY-32,localX-48+32*i,localY);
    popMatrix();
  }
}

void makeantennae(int localX, int localY, int localalp, int biting) {
  //Makes a pair of black lines for eyebrows
  //centered around dim/8,dim/2-3dim/16 and 3dim/8,dim/2-3dim/16
  stroke(0,localalp);
  fill(0,localalp);
  strokeWeight(10);
  //Added in function to move antennae while biting
  pushMatrix();
    translate(localX-21,localY-53);
    rotate(5*QUARTER_PI-QUARTER_PI*smoothtrans(float(biting)/bitetime));
    line (0,0,150,0);
  popMatrix();
  pushMatrix();
    translate(localX+21,localY-53);
    rotate(7*QUARTER_PI+QUARTER_PI*smoothtrans(float(biting)/bitetime));
    line (0,0,150,0);
  popMatrix();
  strokeWeight(1);
}

void makesidefeet(int localX, int localY, int localalp, int walking) {
  stroke(0,localalp);
  //Choose legs
  color legchoice = midgreenchoose();
  color feetchoice = midgreenchoose();
  color toechoice = midgreenchoose();
  pushMatrix();
    //left toe
    fill(toechoice,localalp);
    for (int i=0; i < 2; i++) {
      ellipse(localX-96+10-10*i,localY+224-20+10*i,51,42);
    }
    //Left leg
    if (walking < walktime) {
      translate(0,-64*smoothtrans(float(walking)/walktime));
    }
    fill(legchoice,localalp);
    ellipse(localX-64,localY+128,64,170);
    //left foot
    fill(feetchoice,localalp);
    ellipse(localX-64,localY+192,85,51);
    //left toe
    fill(toechoice,localalp);
    ellipse(localX-96,localY+224,51,42);
    //right toe
    fill(toechoice,localalp);
    for (int i=0; i < 2; i++) {
      ellipse(localX+32+10-10*i,localY+224-20+10*i,51,42);
    }
    //Right leg
    translate(0,-64*smoothtrans(float(walking-walktime)/walktime));
    fill(legchoice,localalp);
    ellipse(localX+64,localY+128,64,170);
    //right foot
    fill(feetchoice,localalp);
    ellipse(localX+64,localY+192,85,51);
    //right toe
    fill(toechoice,localalp);
    ellipse(localX+32,localY+224,51,42);
  popMatrix();
}

void makesidebody(int localX, int localY, int localalp) {
  stroke(0,localalp);
  //New face equation.
  int jtimes = 20;
  int itimes = 5;
  pushMatrix();
    //Center of face
    translate(localX,localY);
    for (int i = 0; i <= itimes; i++) {
      for (int j = 1; j <= jtimes*(itimes+1-i)/(itimes); j++) {
      //Determine fixed position (no longer random)
      pushMatrix();
        //Circle around face
        rotate(PI+TWO_PI*j/(jtimes*(itimes+1-i)/(itimes)));
        //Radiate inward
        translate(128-128*i/itimes,0);
        //Random color
        fill(greenchoose(),localalp);
        ellipse(0,0,64,64);
      popMatrix();
      }
    }
  popMatrix();
}

void makesidemouth(int localX, int localY, int localalp, int biting) {
  stroke(0,localalp);
  //Green elipse face
  fill(greenchoose(),localalp);
  ellipse(localX-128, localY, 128, 170);
  //black mouth square in center of face
  fill(0,localalp);
  //Adjust as mouth moves
  rect(localX-192,localY,32,64-32*smoothtrans(float(biting)/bitetime));
  //red tongue
  fill(floor(random(128)+128),0,0,localalp);
  //Adjust as mouth moves.
  arc(localX-176,localY+16-16*smoothtrans(float(biting)/bitetime),64,32,HALF_PI,1.5*PI);
  //white teeth
  fill(255,localalp);
  pushMatrix();
    translate(0,-16*smoothtrans(float(biting)/bitetime));
    triangle(localX-208,localY+32,localX-176,localY+32,localX-208,localY);
    translate(0,32*smoothtrans(float(biting)/bitetime));
    triangle(localX-208,localY-32,localX-176,localY-32,localX-208,localY);
  popMatrix();
}

void makesideantennae1(int localX, int localY, int localalp, int biting) {
  //Makes a pair of black lines for eyebrows
  //centered around dim/8,dim/2-3dim/16 and 3dim/8,dim/2-3dim/16
  stroke(0,localalp);
  fill(0,localalp);
  strokeWeight(10);
  //Added in function to move antennae while biting
  pushMatrix();
    translate(localX-160,localY-53);
    rotate(5*QUARTER_PI-QUARTER_PI*smoothtrans(float(biting)/bitetime));
    line (0,0,150,0);
  popMatrix();
  strokeWeight(1);
}

void makesideantennae2(int localX, int localY, int localalp, int biting) {
  //Makes a pair of black lines for eyebrows
  //centered around dim/8,dim/2-3dim/16 and 3dim/8,dim/2-3dim/16
  stroke(0,localalp);
  fill(0,localalp);
  strokeWeight(10);
  //Added in function to move antennae while biting
  pushMatrix();
    translate(localX-160,localY-53);
    rotate(7*QUARTER_PI+QUARTER_PI*smoothtrans(float(biting)/bitetime));
    line (0,0,150,0);
  popMatrix();
  strokeWeight(1);
}

void makebackfeet(int localX, int localY, int localalp, int walking) {
  stroke(0,localalp);
  //Choose legs
  color legchoice = midgreenchoose();
  color feetchoice = midgreenchoose();
  color toechoice = midgreenchoose();
  pushMatrix();
    //Left position
    if (walking < walktime) {
      translate(0,-64*smoothtrans(float(walking)/walktime));
    }
    //left toe
    fill(toechoice,localalp);
    for (int i = 0; i < 3; i++) {
      ellipse(localX-96+i*32,localY+224,51,42);
    }
    //left foot
    fill(feetchoice,localalp);
    ellipse(localX-64,localY+192,85,51);
    //Left leg
    fill(legchoice,localalp);
    ellipse(localX-64,localY+128,64,170);
    //Right position
    translate(0,-64*smoothtrans(float(walking-walktime)/walktime));
    //right toe
    fill(toechoice,localalp);
    for (int i = 0; i < 3; i++) {
      ellipse(localX+32+i*32,localY+224,51,42);
    }
    //right foot
    fill(feetchoice,localalp);
    ellipse(localX+64,localY+192,85,51);
    //Right leg
    fill(legchoice,localalp);
    ellipse(localX+64,localY+128,64,170);
  popMatrix();
}

void makeback(int localX, int localY, int localalp) {
  stroke(0,localalp);
  //New face equation.
  int jtimes = 10;
  int itimes = 4;
  pushMatrix();
    //Center of face
    translate(localX,localY);
    for (int i = 0; i <= itimes; i++) {
      for (int j = 1; j <= jtimes*(itimes+1-i)/(itimes); j++) {
      //Determine fixed position (no longer random)
      pushMatrix();
        //Circle around face
        rotate(HALF_PI+TWO_PI*j/(jtimes*(itimes+1-i)/(itimes)));
        //Radiate inward
        translate(64-64*i/itimes,0);
        //Random color
        fill(greenchoose(),localalp);
        ellipse(0,0,64,64);
      popMatrix();
      }
    }
  popMatrix();
}

float smoothtrans(float control) {
  return sin(PI*control);
}

color greenchoose() {
  return color(floor(random(128)),floor(random(128)+128),floor(random(128)));
}

color midgreenchoose() {
  return color(floor(random(96)),floor(random(96)+96),floor(random(96)));
}

color darkgreenchoose() {
  return color(floor(random(64)),floor(random(64)+64),floor(random(64)));
}
