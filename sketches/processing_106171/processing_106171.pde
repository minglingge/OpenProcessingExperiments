
void setup() {
 size(500,500);
  background(52,52,47);
  smooth();
}

void draw() {  

fill(18,60,85);       //blue
  rect(0,0,300,100);
    
fill(247,247,10);     //Yellow
  rect(200,100,300,100);
    
  
fill(5,5,5);         //black
  rect(400,0,100,100);
  
fill(5,5,5);         //black
  rect(0,100,100,100);
  
//===============================================

fill(18,60,85);      //blue
  rect(0,200,300,100);
  
fill(247,247,10);      //yellow
  rect(200,300,300,100);
  
fill(5,5,5);           //blue
  rect(400,200,100,100);
  
fill(5,5,5);
  rect(0,300,100,100);
  
//============================================

fill(18,60,85);
  rect(0,400,300,100);
  
fill(5,5,5);
  rect(400,400,100,100);
 
//============================================ 

if(mousePressed) {
  fill(225,49,180);   //blue to pink
  rect(0,0,300,100);
  
  fill(225,49,180);
  rect(0,200,300,100);
  
  fill(225,49,180);
  rect(0,400,300,100);
  
  fill(23,199,250);
  rect(200,100,300,100);
  
  fill(23,199,250);
  rect(200,300,300,100);


}

    
    
//================Lines=======================

strokeWeight(9);
line(0,0,500,0);
line(0,100,500,100);
line(0,200,500,200);
line(0,300,500,300);
line(0,400,500,400);
line(0,500,500,500);


}