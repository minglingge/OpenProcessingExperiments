
float uX1 = 0, uY1 = 0, uX2=0, uY2=0, deg =0, randDeg=0;
float tX1= 300, tY1=0, tX2=300, tY2 = 600;
float errRange = 0;
static float centerX = 300, centerY = 300, diameter = 600;
boolean isGameGoing= true, goRight = true;
void setup(){
    
  size(600,600);
  smooth();
  initBlackLine();
}
void initBlackLine(){
  randDeg = random(0, 180);
  tX1 = 300 - cos(radians(randDeg))*300;
  tY1 = 300 - sin(radians(randDeg))*300;
  tX2 = 300 + cos(radians(randDeg))*300;
  tY2 = 300 + sin(radians(randDeg))*300;
 
}
 
void keyPressed(){
 if(isGameGoing){
 float tVecX = tX2 - tX1;
 float tVecY = tY2 - tY1;
  
 float tVecMag = sqrt(tVecX * tVecX + tVecY * tVecY);
  
 float uVecX = uX2 - uX1;
 float uVecY = uY2 - uY1;
  
 float uVecMag = sqrt(uVecX * uVecX + uVecY * uVecY);
  
 float dot = tVecX * uVecX + tVecY * uVecY;
   
 float cosine = dot / (tVecMag * uVecMag);
 if(cosine>0)
   errRange = cosine * 100;
 else
   errRange = - cosine*100;
  isGameGoing = false;
 }
 else{
    
   isGameGoing = true;
 }
}
 
void draw(){
   

  
   if(isGameGoing){
       background(0,0,0);
       
       strokeWeight(7); 
       stroke(0);
       fill(#F0C22C);
       ellipse(centerX,centerY,diameter,diameter);
       strokeWeight(5);
       stroke(#AA6715);
       ellipse(centerX,centerY,diameter-40,diameter-40);

       // move CutterLine
       if(goRight) deg+=1; 
       else deg -=1;
        
       uX1 = 300 - cos(radians(deg))*300;
       uY1 = 300 - sin(radians(deg))*300;
       uX2 = 300 + cos(radians(deg))*300;
       uY2 = 300 + sin(radians(deg))*300;
     
      stroke(255,0,0);
      line(uX1, uY1, uX2, uY2);
      
       
        
      stroke(0,0,0);
      line(tX1,tY1,tX2,tY2);
   }
   else{
      textSize(30);
      fill(255,0,0);
      if(errRange<8){
        text(":) \nNice Cutter", 0, height *6/7);
        initBlackLine();
        goRight = !(goRight);
      }
      else{
        text(":( \nTry Again", 0, height *6/7);
      }
  }
   

   strokeWeight(2);
   smooth();
   stroke(#6C3115);
   fill(#B93B00);
      ellipse(240,200,50,60);
      ellipse(250,450,45,50);
      ellipse(480,330,55,53);
   stroke(#28580F);
   fill(#346C18);
      ellipse(400,500,55,53); 
      ellipse(100,220,55,53);
  
}

