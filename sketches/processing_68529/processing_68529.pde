
int aroY;
int aroX;

int r=0;
int v=0;
int az=0;
int n=0;
int am=0;

void setup(){
  size(550,330);
  smooth();
  background(255);
  
  

}

void draw(){
 // noLoop();
  
   aroX = int(random(550));
   aroY = int(random(330));
   
 
  
   background(255);
 
  strokeWeight(10);
  noFill();
  //stroke(#4B7CC9); //azul
  //ellipse(100,100,100,100);
  //stroke(#F7E450);//amarillo
  //ellipse(160,140,100,100);
 // stroke(#050505); //negro
  //ellipse(220,100,100,100);
  
  //ellipse(280,140,100,100);
  
  //ellipse(aroX,aroY,100,100);
  

 stroke(#CB2929);//rojo
if ((aroX!=340) && (aroY!=100) && r!=1){
  ellipse(aroX,aroY,100,100); 
}
else{
  ellipse(340,100,100,100);
  r=1;  
 }
 
 

 stroke(#337C28); //verde
 if ((aroX!=280) && (aroY!=140)&& v!=1){
  ellipse(aroX,aroY,100,100); 
}
else{
  ellipse(280,140,100,100);
  v=1; 
 }
 
 
 stroke(#050505); //negro
 if ((aroX!=220) && (aroY!=100) && n!=2){
   //stroke(#050505);
  ellipse(aroX,aroY,100,100); 
}
else{
  //stroke(#050505);
  ellipse(220,100,100,100);
  //ellipse(0,0,100,100);
  n=2; 
 }
 
 stroke(#F7E450); //amarillo
 if ((aroX!=160) && (aroY!=140)&& am!=1){
  ellipse(aroX,aroY,100,100); 
}
else{
  //stroke(#F7E450);
  ellipse(160,140,100,100);
  am=1; 
 }
 
 
  stroke(#4B7CC9); //azul
 if ((aroX!=100) && (aroY!=100)&& az!=1){
  ellipse(aroX,aroY,100,100); 
}
else{
  //stroke(#4B7CC9);
  ellipse(100,100,100,100);
  az=1; 
 }


}
