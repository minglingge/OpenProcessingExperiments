
float eyeDiam[] = {50,50};
float pupilDiam[] = {0,0};
float irisDiam[] = {50,50};
float irisColorR[] = {0,255};
float irisColorG[] = {0,255};
float irisColorB[] = {0,255};
 
eyeBall myEyeBall;                       
 
void setup(){
  background(255);
  frameRate(5);
  size(100,100);
}
 
void draw(){
  background(40,73,164);
myEyeBall = new eyeBall(
    random(eyeDiam[0],eyeDiam[1]),
    random(pupilDiam[0],pupilDiam[1]),
    random(irisDiam[0],irisDiam[1]),
    random(irisColorR[1],irisColorR[0]),
    random(irisColorG[0],irisColorG[1]),
    random(irisColorB[0],irisColorB[1])
  );
  myEyeBall.run(); 
}
 
class eyeBall{
  float eyeDiam;
  float pupilDiam;
  float irisDiam; 
  float irisColorR; 
  float irisColorG; 
  float irisColorB; 
 
  eyeBall(float _eyeDiam, float _pupilDiam, float _irisDiam, float _irisColorR, float _irisColorG, float _irisColorB){
  eyeDiam = _eyeDiam;
  pupilDiam = _pupilDiam;
  irisDiam = _irisDiam;
  irisColorR = _irisColorR;
  irisColorG = _irisColorG;
  irisColorB = _irisColorB;
}
   
  void run(){
    display();
  }
 
void display(){
    noStroke();
    fill(255);
    pushMatrix();
    translate(width/2, height/2);
     
    // eyeeyeBall
    fill(255);
    ellipse(0, 0, eyeDiam, eyeDiam);
     
    // iris
    fill(irisColorR, irisColorG, irisColorB); 
    ellipse(0, 0, irisDiam, irisDiam);   
     
    // pupil
    fill(0); 
    ellipse(0, 0, pupilDiam, pupilDiam);   
    popMatrix();
  }
}



