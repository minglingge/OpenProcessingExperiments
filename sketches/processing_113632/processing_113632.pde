
void setup(){
  size (400,400);
  background(53,120,201);
   
}
 
 
void draw(){
  background(53,120,201);
  //noStroke();
  fill(245,143,199);
  stroke(70,240,215);
  strokeWeight(2);
  rect(mouseX-100,mouseY-100,mouseX+100,mouseY+100);
  fill(0,18,113,50);
  rect(width/8,50,100,100);
  line(50,50,mouseX-100,mouseY-100);
  line(150,50,mouseX+mouseX,mouseY-100);
  line(50,150,mouseX-100,mouseY+mouseY);
  line(150,150,mouseX+mouseX, mouseY+mouseY);
   
   
  
   
   
  println(mouseX + " " + mouseY);
   
   
  }



