
ellipse(50,50,80,80)
void setup(){
size(1000,1000);
smooth();
}
void draw(){
if (mousePresses){
fill(0);
}else{
fill(225);
}
ellipse(mouseX,mouseY,80,80);
}
size(800,600);
size(480,120);
point(240,60);

