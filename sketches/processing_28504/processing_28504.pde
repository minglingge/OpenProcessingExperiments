
void setup(){
  size (500, 500);
  background (255);
  smooth();
}

void draw(){
  for(int y = 0; y <= height; y = y +50) {
     for(int x = 0; x<= width; x = x + 50){
     
     noStroke();
          
     fill(160);  
     rect(x, y, 10, 10);
     
     fill(160);  
     rect(x+5, y+5, 10, 10);
     
     fill(160);  
     rect(x+10, y, 10, 10);
     
     fill(180);  
     rect(x+10, y-5, 10, 10);
     
          
     fill(180);  
     rect(x+8, y-8, 10, 10);
     
          fill(100);  
     rect(x+5, y-10, 10, 10);
     
     
     fill(120);  
     rect(x-10, y+5, 10, 10);
     
          
     fill(140);  
     rect(x-8, y+8, 10, 10);
     
          fill(160);  
     rect(x-5, y+10, 10, 10);
     
          fill(180);  
     rect(x+8, y-8, 10, 10);
     
          fill(200);  
     rect(x+5, y-10, 10, 10);
     
     
     
     fill(220);  
     rect(x-10, y-5, 10, 10);
     
          
     fill(240);  
     rect(x-8, y-8, 10, 10);
     
          fill(255);  
     rect(x-5, y-10, 10, 10);
     
     
          
     fill(220);  
     rect(x+10, y+5, 10, 10);
     
          
     fill(240);  
     rect(x+8, y+8, 10, 10);
     
          fill(255);  
     rect(x+5, y+10, 10, 10);
     
  for(int a = 0; a <= height; a = a +100) {
  for(int b = 0; b<= width; b = b + 100){
     
     fill(255);  
     rect(a-20, b-20, 40, 40);
     
     
     
    for(int c = 0; c <= height; c = c +100) {
  for(int d = 0; d<= width; d = d + 100){
     
     fill(255);  
     rect(c+35, d+30, 40, 40);
    
     }
   }
  }
  }
     
     }
  }
  
}

