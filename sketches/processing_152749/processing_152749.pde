
/*
 * Creative Coding
 * Week 4, 03 - one pixel cinema
 * by Indae Hwang and Jon McCormack
 * Copyright (c) 2014 Monash University
 *
 * This simple sketch demonstrates how to read pixel values from an image
 * It simulates a 10 pixel "scanner" that moves from the top to the bottom of the image
 * reading the colour values for 10 equally spaced points, then displaying those colours
 * as vertical bars on the left half of the screen.
 *
 */
/* @pjs preload="nasaImage.jpg";*/
PImage myImg;
PImage img;
boolean showCircles=false;
void draw() {
  //background(255);
  for (int i=0; i<wanderers.length; i++) {
    wanderers[i].wander();
    wanderers[i].run();
  }
}

void mousePressed() {
  debug = !debug;
}
color[] pixelColors;
int scanLine;  // vertical position
int mode=0;
Boid[]wanderers=new Boid[10];
boolean debug = true;

void setup() {
  size(700, 622);
  myImg = loadImage("nasaImage.jpg");
  myImg.resize(width, height);
  frameRate(200);
  pixelColors = new color[10];
  scanLine = 0;
  for (int i=0; i<wanderers.length; i++) {
    wanderers[i] = new Boid(new PVector(width/2, height/2), 3.0, 0.1, color(random(255), random(255), random(255), 155));
  }
  smooth();
  loadPixels();
}

void draw() {

  // read the colours for the current scanLine
  for (int i=0; i<10; i++) {
    pixelColors[i] = myImg.pixels[35+i*70+scanLine*width];
  }
  for (int i=0; i<wanderers.length; i++) {
    float col=wanderers[i].col;
    wanderers[i].col=color(pixelColors[i]);
    if(abs(brightness(col)-brightness(wanderers[i].col))>80){
      wanderers[i].loc=new PVector(random(width/2), random(height/2));
    }
    wanderers[i].wander();
    wanderers[i].run();
  }
  // increment scan line position every second frame
  //if(frameCount%3==0)scanLine ++;

scanLine ++;
  if (scanLine >= height) {
    scanLine = 0;
  }

  //draw circles over where the "scanner" is currently reading pixel values
// if(showCircles){
//  for (int i=0; i<10; i++) {
//    fill(pixelColors[i]);
//    ellipse(35+i*70, scanLine, 15, 15 );
//  }
// }
}

// Wander
// Daniel Shiffman <http://www.shiffman.net>
// The Nature of Code

// The "Boid" class (for wandering)

class Boid {

  PVector loc;
  PVector vel;
  PVector acc;
  float col;
  float r;
  float wandertheta;
  float maxforce;    // Maximum steering force
  float maxspeed;    // Maximum speed

  Boid(PVector l, float ms, float mf,float col) {
    acc = new PVector(0,0);
    vel = new PVector(0,0);
    loc = l.get();
    r = 3.0;
    this.col=col;
    wandertheta = random(TWO_PI);
    maxspeed = ms;
    maxforce = mf;
  }
  
  void run() {
    update();
    borders();
  }
  
  // Method to update location
  void update() {
    // Update velocity
    vel.add(acc);
    // Limit speed
    vel.limit(maxspeed);
    loc.add(vel);
    // Reset accelertion to 0 each cycle
    acc.mult(0);
  }

  void seek(PVector target) {
    acc.add(steer(target,false));
  }
 
  void arrive(PVector target) {
    acc.add(steer(target,true));
  }
  
  void wander() {
    float wanderR = 16.0f;         // Radius for our "wander circle"
    float wanderD = 60.0f;         // Distance for our "wander circle"
    float change = 0.25f;
    wandertheta += random(-change,change);     // Randomly change wander theta

    // Now we have to calculate the new location to steer towards on the wander circle
    PVector circleloc = vel.get();  // Start with velocity
    circleloc.normalize();            // Normalize to get heading
    circleloc.mult(wanderD);          // Multiply by distance
    circleloc.add(loc);               // Make it relative to boid's location
    
    PVector circleOffSet = new PVector(wanderR*cos(wandertheta),wanderR*sin(wandertheta));
    PVector target = PVector.add(circleloc,circleOffSet);
    acc.add(steer(target,false));  // Steer towards it
    
    // Render wandering circle, etc. 
    if (debug) drawWanderStuff(loc,circleloc,target,wanderR);
    
  }  
  
  // A method that calculates a steering vector towards a target
  // Takes a second argument, if true, it slows down as it approaches the target
  PVector steer(PVector target, boolean slowdown) {
    PVector steer;  // The steering vector
    PVector desired = PVector.sub(target,loc);  // A vector pointing from the location to the target
    float d = desired.mag(); // Distance from the target is the magnitude of the vector
    // If the distance is greater than 0, calc steering (otherwise return zero vector)
    if (d > 0) {
      // Normalize desired
      desired.normalize();
      // Two options for desired vector magnitude (1 -- based on distance, 2 -- maxspeed)
      if ((slowdown) && (d < 100.0f)) desired.mult(maxspeed*(d/100.0f)); // This damping is somewhat arbitrary
      else desired.mult(maxspeed);
      // Steering = Desired minus Velocity
      steer = PVector.sub(desired,vel);
      steer.limit(maxforce);  // Limit to maximum steering force
    } else {
      steer = new PVector(0,0);
    }
    return steer;
  }

  
  // Wraparound
  void borders() {
    if (loc.x < -r) loc.x = width+r;
    if (loc.y < -r) loc.y = height+r;
    if (loc.x > width+r) loc.x = -r;
    if (loc.y > height+r) loc.y = -r;
  }
// A method just to draw the circle associated with wandering
void drawWanderStuff(PVector loc, PVector circle, PVector target, float rad) {
  //stroke(0); 
  noStroke();
  fill(col,10+mouseY/3);
  ellipseMode(CENTER);
  float dia=5+mouseX/10;
  ellipse(loc.x,loc.y,dia,dia);
  float distance=0;
}
}
