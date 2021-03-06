
Circle[] circle = new Circle[200];
int Data = 200;
 
void setup(){
  size(400,400);
  for(int i = 0;i<Data;i++){
    float x = 200;  //onde começa via X
    float y = 200;  //onde começa via Y
    float xspeed = random(-6,6); //modificador de velocidade em X
    float yspeed = random(-6,6); //modificador de velocidade em Y
    circle[i] = new Circle(x,y,xspeed,yspeed);
  }
}
 
void draw(){
  background(0);
  for(int i = 0; i<Data;i++){
    circle[i].move();
    circle[i].display();
  }
}
 
class Circle{
   
  float x,y;  //x and y-coordinate
  float xspeed,yspeed;  //x and y speed
   
  Circle(float tmpx, float tmpy, float tmpxspeed,float tmpyspeed){
    x = tmpx;  //initial position x
    y = tmpy;  //initial position y
    xspeed = tmpxspeed;  //x speed(0-10)
    yspeed = tmpyspeed;  //y speed(0-10)
  }
   
  void move(){
    if(x<0.0f || x>width)  xspeed *= -1.0f;  //reverse a direction
    if(y<0.0f || y>height) yspeed *= -1.0f;  //reverse a direction
     
    x += xspeed;  //x shift
    y += yspeed;  //y shift
  }
   
  void display(){
    noStroke();
    fill (random (255),random (255),random (255));
    ellipse(x,y,10,10);  //write circle at (x,y)
  }
   
}

