
int x = 25;

void setup(){
size (300,300);
noStroke();
frameRate(25);
}
void draw(){
if (mousePressed == true){
if (mouseX <= 150){
fill(random(255),random(255),random(255),random(255));
x = random(10,100);
y = random(10,100);
ellipse(mouseX,mouseY,y,x);
}
else {
fill(random(255),random(255),random(255),random(255));
x = random(10,100);
y = random(10,100);
rect (mouseX,mouseY,y,x);
}
}
else {
ellipse(width/2, height/2, 200,200);
}
}                
                
