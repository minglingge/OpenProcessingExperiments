
//Lyndon Manuel
//
//CONCEPT: Getting balls to 'talk' to each other. Class interaction.

class Ball {
  // GLOBAL VARIABLES
  Vec3D loc = new Vec3D (0,0,0);
  Vec3D speed = new Vec3D(random(-2,2),2,0);
  Vec3D grav = new Vec3D(0,0.5,0);
  Vec3D acc = new Vec3D();

  //CONSTRUCTOR
  Ball(Vec3D _loc) {

    loc = _loc;
  }

  //FUNCTIONS
  void run() {
    display();
    move();
    bounce();
    gravity(0.01);
    lineBetween();
    flock();
  }

  void flock(){
    //all of these are based on Vector Math
    separate(5);
    cohesion(0.01);
    align(1);

  }
  
  void align(float magnitude){
    
      //-----------------------------------------this structure is common to all flocking---
    Vec3D steer = new Vec3D();
    int count = 0;
    
    for(int i = 0; i < ballCollection.size();i++){
      Ball other = (Ball) ballCollection.get(i);

      float distance = loc.distanceTo(other.loc);
      if (distance > 0 && distance < 40){
      //-----------------------------------------------------------flocking structure--------
        // align functionality
        steer.addSelf(other.speed);      // steering itself according to other speeds 'movements'
        count++;
      
      }
    }
    
    if(count > 0){
      steer.scaleSelf(1.0/count);
    }
    
    steer.scaleSelf(magnitude);
    acc.addSelf(steer);
    
    
  }

  void cohesion(float magnitude){
    
     Vec3D sum = new Vec3D();
    int count = 0;
    
    for(int i = 0; i < ballCollection.size();i++){
      Ball other = (Ball) ballCollection.get(i);

      float distance = loc.distanceTo(other.loc);
      if (distance > 0 && distance < 60){
          //cohesion functionality. what happens if..?
        sum.addSelf(other.loc);  //the vector that will average/centroid between sum neighbors
        count++;    
      }
    }
    
    if (count > 0){
      sum.scaleSelf(1.0/count);
    }
        //creating a vector between position and target, opposite from 'separate'
        // because you want them to cohere.    
    Vec3D steer = sum.sub(loc);        
    
    steer.scaleSelf(magnitude);          //increase for scale factor will be modified
    acc.addSelf(steer);
  }

  void separate(float magnitude) {
    
    Vec3D steer = new Vec3D();
    int count = 0;
      //THIS structure has been modified/taken from lineBetween function  
    for(int i = 0; i < ballCollection.size();i++){
      Ball other = (Ball) ballCollection.get(i);

      float distance = loc.distanceTo(other.loc);
      if (distance > 0 && distance < 30){
        
        //we need that vector in between by subtracting the two
        Vec3D diff = loc.sub(other.loc);
        diff.normalizeTo(1.0/distance); //vector smoothing to be scaled depending on dist
        //now adding the () empty vec3D to the diff, and add the diff vector to count.
        // as storing more vectors from different balls, we need to divide
        // it by # of elements (by count)
        steer.addSelf(diff);
        count++;
      }
    }
    
    if(count > 0){
      steer.scaleSelf(1.0/count);
    }
    
    steer.scaleSelf(magnitude);          //increase for scale factor will be modified
    acc.addSelf(steer);
    

  }




  void lineBetween() {
    //ballCollection from global variable arraylist
    for(int i = 0; i < ballCollection.size();i++){
      //casting an instance of Ball, get me, 'i' from the list
      Ball other = (Ball) ballCollection.get(i);

      float distance = loc.distanceTo(other.loc);

      if (distance > 10 && distance < 30){
        stroke(150,100);
        strokeWeight(0.25);
        line(loc.x,loc.y,other.loc.x,other.loc.y);
        //THIS part of code is basically drawing a line between the
        // interaction of each ball if they get within a certain dist.
      }
    }
  }

  void gravity(float magnitude){
    speed.subSelf(grav);
    speed.scaleSelf(magnitude);          //increase for scale factor will be modified
    acc.addSelf(grav);

  }

  void bounce() {
    if(loc.x > width) {
      speed.x = speed.x  * -1;
    }
    if(loc.x < 0) {
      speed.x  = speed.x  * -1;
    }
    if(loc.y > height) {
      speed.y = speed.y * -1;
    }
    if(loc.y < 0) {
      speed.y = speed.y * -1;
    }
  }

  void move() {
    
    //add acceleration based on steering
    speed.addSelf(acc);
    speed.limit(2);  //# is maximum velocity, or threshold
    loc.addSelf(speed);
    acc.clear(); //every frame process is reset, to reevaluate behavior
  }

  void display() {
    stroke(0);
    //ellipse(loc.x,loc.y,5,5);
    rectMode(CENTER);
    rect(loc.x,loc.y,10,4);
    fill(0);
  }
}



