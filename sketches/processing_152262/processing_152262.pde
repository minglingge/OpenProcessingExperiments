
/*
 * Creative Coding
 * Week 3, 04 - spinning top: curved motion with sin() and cos()
 * by Indae Hwang and Jon McCormack
 * Copyright (c) 2014 Monash University
 *
 * This sketch is the first cut at translating the motion of a spinning top
 * to trace a drawing path. This sketch traces a path using sin() and cos()
 *
 */



int num;     // the number of items in the array

float[] rad;       // radius for the moving hand
float[] x;       // x-position of point
float[] y;       // y-position
float[] dx;       // x-position of point
float[] dy;       // y-position
float[] bx;
float[] by;
float[] radius;
float[] handX;
float[] handY;
float distanceA;
float distanceB;
float[] redC;
float[] greenC;
float[] blueC; 
float[] StoredDist;

void setup() {
  size(500, 500);
  num = 6;
distanceA=0;
distanceB=0;
  background(0);
   x = new float[num];
 
rad=new float[num];      // radius for the moving hand
x=new float[num];       // x-position of point
y=new float[num];       // y-position
dx=new float[num];       // x-position of point
dy=new float[num];       // y-position
bx=new float [num];
by = new float [num];
radius=new float [num];
handX=new float [num];
handY=new float [num];
redC=new float [num];
greenC=new float [num];
blueC=new float [num];
StoredDist=new float[num]; 


 
    //setup an initial value for each item in the array
  for (int i=0; i<num; i++) {
      x[i] = width/2; 
      y[i] = height/2;
      dx[i] = random(-1, 1); 
      dy[i] = random(-1, 1);
      rad[i] = radians(frameCount);
      bx[i]= x[i] + 100 * sin(rad[i]);
      by[i] = y[i] + 100 * cos(rad[i]);
      radius[i]=0;
      handX[i]=0;
      handY[i]=0;
      redC[i]=random(0,255);
      greenC[i]=random(0,255);
      blueC[i]=random(0,255);
      

  }
  
  
  
  
  
  
  
}


void draw() {
  
 
  
  for (int i=0; i<num; i++) {
      // blend the old frames into the background
 // blendMode(BLEND);
  //fill(0, 0);
  //rect(0, 0, width, height);
  rad[i] = radians(frameCount);

  // calculate new position
  x[i] += dx[i];
  y[i] += dy[i];

  float max = 1;
  float min = 0.5;


  //When the shape hits the edge of the window, it reverses its direction and changes velocity
  if (x[i] > width-100 || x[i] < 100) {
    dx[i] = dx[i] > 0 ? -random(min, max) : random(min, max);
  }

  if (y[i] > height-100 || y[i] < 100) {
    dy[i] = dy[i] > 0 ? -random(min, max) : random(min, max);
  }
  
  bx[i] = x[i] + 100 * sin(rad[i]);
  by[i] = y[i] + 100 * cos(rad[i]);

  fill(redC[i],greenC[i],blueC[i],random(1,180));

  
  radius[i] = 100 * sin(rad[i]*0.1);
  handX[i] =bx[i] + radius[i] * sin(rad[i]*3);
  handY[i] =by[i] + radius[i] * cos(rad[i]*3);
  
  }
  
  
  
   for (int i=0; i<num; i++) {
  
      for (int j=0; j<num; j++) {
  
    

  distanceA = dist(x[i], y[i], x[j], y[j]);  
      if (distanceA < StoredDist[i]) {
       
   
        
 
      }

  distanceB= dist(bx[i], by[i], bx[j], by[j]);
      if (distanceB < StoredDist[i]) {
 
        
        
        
        
        
 
      }

stroke(redC[i],greenC[i],blueC[i],random(1,180));
line(bx[i], by[i], handX[i], handY[i]);
stroke(redC[i],greenC[i],blueC[i]);          


  

  }

   }

}
