
//
// mouse detect & redraw

float mouseDistX, mouseDistY;
float transX_, transY_;
float offsetX, offsetY, transX, transY;
float centerX, centerY;

float dirX, dirY;

float radius = 150;
float innerRadius = 30;
float friction = .8;
float bounceSpeed = .005;
float gravity = .8;

//
// eyes
PShape[] eyeShape = new PShape[10];
int activeEyeState = 7;

float eyeStroke = 2;
float eyeSize = 1.5;
float pupilSize = 2.0;

float eyeTilt1 = 0.1, eyeTilt2 = 0.3, eyeTilt3 = -0.2;
float dEyeState, dEyeSize, dPupilSize, dEyeStroke, dTilt1, dTilt2, dTilt3;
float eyeChangeSpeed = .03;

//
// arms
float armPadding = 2.0; // distance between arm segments
float segmentWid = 10;
float startDist = 5; // distance arms start from body

float dArmPadding, dSegmentWid, dStartDist;
float twitchFactor = 1;

int armNum = 3;
int segmentCount = 12;

float armsAxis = .6;
float armsFlux = 0;
boolean armsDrawn = false;

float[] armRadsActual = new float[armNum*segmentCount];
float[] armRadsTarget = new float[armNum*segmentCount];
float[] armScales = new float[armNum];
float[] armRads = new float[armNum];
boolean[] armsChange = new boolean[armNum];

//
// emotion
// 0:peace  1:alarm  2:flight  3:angry
int emotion = 0;
float dBlur = 255;
float blur = 255;

int angerCount = 0;
int angerMax = 4;
boolean angryTime = false;
boolean timeToReset = false;
float angerStamp;
int angerDuration = 5000;

//
// skin
PImage backgroundImage, armSegment; 
PImage[] eyeImage = new PImage[10];
boolean skinActive = false;


void setup() {
  
    size(480, 320);  

    smooth();
    
    stroke(0);
    fill(255, 0);

    offsetX = 0;
    offsetY = 0;
    
    backgroundImage = loadImage("bg.png");
    armSegment = loadImage("arm1.png");

    shapeMode(CENTER);
    for (int i=0; i<10; i++) {
      eyeShape[i] = loadShape("eye"+i+".svg"); 
    }
     for (int i=0; i<10; i++) {
      eyeImage[i] = loadImage("eye"+i+".png"); 
    }
    
    
   
    
    for (int i=0; i<armsChange.length; i++) {
      armsChange[i] = false;
    }
    
    for (int i=0; i<armRadsTarget.length; i++) {
      armRadsTarget[i] = .5;
    }
    
    for (int i=0; i<armRads.length; i++) {
      armRads[i] = (TWO_PI/armNum*i);
    }
    
    for (int i=0; i<armScales.length; i++) {
      armScales[i] = .1;
    }
 
    
       
}


void draw() {
    //
   // background(255);
    
    if (skinActive) {
      imageMode(CORNER);
      tint(255, blur);
      image(backgroundImage, 0, 0);
      tint(255);
      imageMode(CENTER);
    } else {
   
       fill(255, blur);
       rect(0, 0, width, height);
    
    }
   
    pushMatrix();
    fill(0);
   
    avoidMouse();
    checkEmotion();
    
    angerCounter();
    
    if (emotion == 3) {
       translate(random(-2, 2), random(-2, 2));
       if (millis() - angerStamp > angerDuration) {
           resetEmotion(); 
       }
    }
    drawArms();
    drawBody();
    
    popMatrix();
   
     
}

void resetEmotion() {
    angryTime = false;
    angerCount = 0;
    emotion = 2; 
    cursor(); 
}


void drawArms() {

    float armWid; 
    
    int k, i;
   
    // radian value increases for SIN modulation on arm segments   
    // armsFlux += .1;
    
    for (k=0; k<armNum; k++) {
        pushMatrix();
        
       
        float moveMod, dArmScale;
        float armRad = 0;
   
   
   
        switch (emotion) {
           case 0:
              // println("at peace");
              armRads[k] += ((TWO_PI/armNum*k)-armRads[k])*.05;
              break;
           case 1:
              // println("alarmed");
              armRads[k] += ((TWO_PI/armNum*k)-armRads[k])*.05;
              break;
           case 2:
              //println("flight");
              moveMod = atan2(dirX, -dirY);
              armRads[k] += ((moveMod+HALF_PI)-armRads[k])*.9;
              break;
           case 3:
              //println("flight");
              // println("alarmed");
              armRads[k] += ((TWO_PI/armNum*k)-armRads[k])*.05;
              break;
           default:
              println("default peace");
              break; 
        }
        
       
        
        //  float radDif = (armRads[k] - (TWO_PI/armNum*k))*.3;
        // rotate(armRads[k]+radDif);
        rotate(armRads[k]);
       
       
        
        float startRad = 0;
       
        float currentRad = 0;
        int radDirection = 1;
        
        

        translate(startDist, 0);
        
        if (!armsChange[k]) {
            
             for (i=0; i<segmentCount; i++) {
                
                 float thisRad;
                 int radIndex = k*segmentCount+i;
                 
                 if (random(2) > 1) {
                     radDirection *= -1;
                 } 
               
                 if (i==0) {
                    thisRad = 0;
                 } else {
                    thisRad = armRadsTarget[radIndex-1]+(random(.1, .3)*radDirection);
                 }
                 
                 armRadsTarget[radIndex] = thisRad;
                 
             }
                 
            armsChange[k] = true;
        }
        
        int homeCount = 0;
                
        for (i=0; i<segmentCount; i++) {
          
             float thisRad;
             
             int radIndex = k*segmentCount+i;
         

             thisRad = armRadsActual[radIndex];         
             thisRad += (armRadsTarget[radIndex]-thisRad)*map(i, 0, segmentCount, .04, .02)*twitchFactor;
             armRadsActual[radIndex] = thisRad;

             if (abs(armRadsActual[radIndex]-armRadsTarget[radIndex]) < .03) {
                homeCount++; 
             }
             
             // currentRad += thisRad;
             armWid = segmentWid - ((i-1)*(segmentWid/segmentCount));
             
             translate(armWid+armPadding, 0);
             
             if (emotion == 2) {
                thisRad *=.1; 
             }
             
             rotate(thisRad);
        
             if (skinActive) {
               image(armSegment, 0, 0, armWid*3, armWid*3);
             } else {
               ellipse(0, 0, armWid, armWid);
             }
             
        }
        
        if (homeCount == segmentCount) {
           armsChange[k] = false; 
        }
        
        popMatrix();
    }
    
    if (!armsDrawn) {
       armsDrawn = true; 
    }
    
    
}


void checkEmotion() {
  
    switch (emotion) {
       case 0:
          // println("at peace");
          dStartDist = 5.0;
          dSegmentWid = 10.0;
          dArmPadding = 3.0;
          
          friction = .8;
          bounceSpeed = .005;
          twitchFactor = 1;
          dBlur = 255;
         
          dEyeState = 9;
          dEyeSize = 1.5;
          dPupilSize = 2;
          dEyeStroke = 2;
          dTilt1 = 0.1;
          dTilt2 = 0.3;
          dTilt3 = -0.3;
          break;
       case 1:
          // println("alarmed");
          dStartDist = 0.0;
          dSegmentWid = 10.0;
          dArmPadding = 0;
          
          friction = .8;
          bounceSpeed = .005;
          twitchFactor = 10;
          dBlur = 255;
         
          dEyeState = 0;
          dEyeSize = 1.2;
          dPupilSize = 1;
          dEyeStroke = 1.5;
          dTilt1 = 0.3;
          dTilt2 = 0.5;
          dTilt3 = -0.4;
          break;
       case 2:
          //println("angry");
          dStartDist = 20;
          dSegmentWid = 7.0;
          dArmPadding = 3;
          
          friction = .8;
          bounceSpeed = .3;
          twitchFactor = 10;
          blur = 0;
          dBlur = 0;
          
          dEyeSize = 1.0;
          dPupilSize = 1.5;
          dEyeStroke = 1.5;
          dTilt1 = 0.1;
          dTilt2 = 0.3;
          dTilt3 = -0.2;
          break;
       case 3:
          //println("angry");
          dStartDist = 5;
          dSegmentWid = 13.0;
          dArmPadding = 3;
          
          friction = .7;
          bounceSpeed = .5;
          twitchFactor = 10;
          dBlur = 50;
          
          dEyeState = 9;
          dEyeSize = 1.5;
          dPupilSize = 3;
          dEyeStroke = 2;
          dTilt1 = -0.6;
          dTilt2 = -0.7;
          dTilt3 = 0.4;
          break;
       default:
          println(emotion);
          break; 
    }
    
    blur += (dBlur - blur) * .05;
   
    eyeSize += (dEyeSize-eyeSize)*eyeChangeSpeed;
    pupilSize += (dPupilSize-pupilSize)*eyeChangeSpeed;
    eyeStroke += (dEyeStroke-eyeStroke)*eyeChangeSpeed;
    
    eyeTilt1 += (dTilt1-eyeTilt1)*eyeChangeSpeed;
    eyeTilt2 += (dTilt2-eyeTilt2)*eyeChangeSpeed;
    eyeTilt3 += (dTilt3-eyeTilt3)*eyeChangeSpeed;
    
    startDist += (dStartDist-startDist)*eyeChangeSpeed;
    segmentWid += (dSegmentWid-segmentWid)*eyeChangeSpeed;
    armPadding += (dArmPadding-armPadding)*eyeChangeSpeed;
    
    
    if (dEyeState < activeEyeState) {
      activeEyeState--;
    } else if (dEyeState > activeEyeState) {
      activeEyeState++;
    }  
  
}




void drawBody() {
    //
    //
  
    float eye1x = 1.5;
    float eye1y = -8;
   
    float eye2x = 6;
    float eye2y = 4.5;
   
    float eye3x = -9;
    float eye3y = 3.5;
   
    float rad1 = 14;
    float rad2 = 12.5;
    float rad3 = 17.5;
   
    float eyeCenterX = (eye1x + eye2x + eye3x)/3;
    float eyeCenterY = (eye1y + eye2y + eye3y)/3;
   
      
    noStroke();
    fill(0);
   
    ellipse(eyeCenterX, eyeCenterY, 5*eyeSize, 5*eyeSize);
   
    stroke(0);
    strokeWeight(eyeStroke);
    noFill();
   
    // 
    // DRAW EYES

    pushMatrix();
    translate(eye1x*eyeSize, eye1y*eyeSize);
    rotate(eyeTilt1);
    if (skinActive) {
        image(eyeImage[activeEyeState], 0, -2, rad1*eyeSize*1.5, rad1*eyeSize*1.5); 
    } else {
        shape(eyeShape[activeEyeState], 0, 0, rad1*eyeSize, rad1*eyeSize); 
        ellipse(0, 0, rad1*eyeSize, rad1*eyeSize);
    }
    popMatrix(); 
    
    pushMatrix();
    translate(eye2x*eyeSize, eye2y*eyeSize);
    rotate(eyeTilt2);
    if (skinActive) {
        image(eyeImage[activeEyeState], 0, -2, rad2*eyeSize*1.5, rad2*eyeSize*1.5); 
    } else {
        shape(eyeShape[activeEyeState], 0, 0, rad2*eyeSize, rad2*eyeSize); 
        ellipse(0, 0, rad2*eyeSize, rad2*eyeSize); 
    }
    popMatrix(); 
     
    pushMatrix();
    translate(eye3x*eyeSize, eye3y*eyeSize);
    rotate(eyeTilt3);
    if (skinActive) {
        image(eyeImage[activeEyeState], 0, -2, rad3*eyeSize*1.5, rad3*eyeSize*1.5); 
    } else {
        shape(eyeShape[activeEyeState], 0, 0, rad3*eyeSize, rad3*eyeSize);
        ellipse(0, 0, rad3*eyeSize, rad3*eyeSize);
    }
    popMatrix(); 
    

    noStroke();
    fill(0);
    
    //
    // draw pupils
    
    ellipse(eye1x*eyeSize, eye1y*eyeSize, 2*pupilSize*eyeSize, 2*pupilSize*eyeSize);
    ellipse(eye2x*eyeSize, eye2y*eyeSize, 1.5*pupilSize*eyeSize, 1.5*pupilSize*eyeSize);
    ellipse(eye3x*eyeSize, eye3y*eyeSize, 3*pupilSize*eyeSize, 3*pupilSize*eyeSize);
    
}

void angerCounter() {
  
  
}

void avoidMouse() {
  
    centerX = width/2;
    centerY = height/2;
  
    mouseDistX = mouseX - centerX;
    mouseDistY = mouseY - centerY;
   
    float d = dist(offsetX, offsetY, mouseDistX, mouseDistY);

    if (emotion != 3) {
        if (d < radius) {
          
          dirX = (offsetX-mouseDistX)/d;
          dirY = (offsetY-mouseDistY)/d;
          //
          offsetX = mouseDistX+radius*dirX;
          offsetY = mouseDistY+radius*dirY;
          
          if (dist(transX, transY, mouseDistX, mouseDistY)<innerRadius) {
            
              if (emotion != 2 && emotion != 3) {
                
                 if (angerCount < angerMax) {
                   angerCount++;
                 } else {
                   angryTime = true;
                 }
                 
                 emotion = 2;
                 angerStamp = millis();
                
              }
    
              
          } else {
              if (angryTime) {
                 emotion = 3;
                 noCursor();
                 angerStamp = millis();
              } else {
                if (emotion != 3) {
                  emotion = 1;
                  angerStamp = millis();
                }
              } 
            
            
              
          }  
          
          
        } else {
          
          if (emotion != 3) {
            emotion = 0; 
          }
        }
        
        
        
    } else {
     
       offsetX = mouseDistX;
       offsetY = mouseDistY;
      
    }
    
    offsetX *= gravity;
    offsetY *= gravity; 
    
    //println(dist(transX, transY, mouseDistX, mouseDistY));
   
    
   
    transX_ = transX_ * friction + (((offsetX)-transX)*bounceSpeed);
    transX += transX_;
   
    transY_ = transY_ * friction + (((offsetY)-transY)*bounceSpeed);
    transY += transY_;

    translate(centerX + transX, centerY + transY);   
  
 
}



void keyPressed() {
   if (key == ' ') {
     skinActive = !skinActive;
     println(skinActive);
   } 
}



