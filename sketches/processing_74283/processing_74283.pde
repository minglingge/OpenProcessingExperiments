
class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector lastPos;
  float mass;
  int c;
  
  Mover(PVector _loc, PVector _vel, float _m) {
    mass = _m;
    location = _loc;
    velocity = _vel;
    acceleration = new PVector(0, 0);
    lastPos = _loc;
    c =0;
  }

  void run(){
    
    update();
    checkEdges();
    checkWorld();
    modWorld();
   // display();
    
  }
  
  //move the object
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    location.add(velocity);
    acceleration.mult(0);
    if (c % searchRad ==0) lastPos = new PVector(location.x,location.y,location.z); 
  }

  //draw the object
  void display() {
    ellipse(location.x, location.y, 20, 20);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  //check the edge of the screen
  void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } 
    else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } 
    else if (location.y < 0) {
      location.y = height;
    }
  }
  
  //check the environment around the object
  void checkWorld(){
    PVector toBest = new PVector(); //create a temp vector to keep track of the direction of the best condition
    float maxV = 0;
    
    //loop through pixels
    for (int i = -searchRad; i<=searchRad;i++){
      for (int j = -searchRad; j<=searchRad;j++){
        if(!(i==0 && j==0)){
          //checks for edges
          int x = floor(location.x)+i;
          x = constrain(x,0,width-1);
          int y = floor(location.y)+j;
          y = constrain(y,0,height-1);
          
          //check to see if this is the smallest current value
          //scale by the distance to the value
          float v = world.getAt(x,y);
          PVector toV = new PVector(i,j);
          
          //limit the angle of vision
          if(PVector.angleBetween(toV,velocity)<PI/2){
          
            //check to see if the current value is larger than 
            //the current best
            if((v)>maxV){
              
              //reset all our variables that keep track of the best option
             float d = toV.mag();
             toV.mult(1/d);
             
             toBest = toV;
             maxV = v;
            }
          }
        }
      }
    }

    //only effect if finding something above a tolerance
    if(maxV>20){
      applyForce(toBest);
    }
  }
  
  void modWorld(){
    //checks for edges
    if(lastPos.x<width-1 && lastPos.y<height-1 && lastPos.x>0 && lastPos.y >0) world.modAt(floor(lastPos.x),floor(lastPos.y),50);
  }
  
}

