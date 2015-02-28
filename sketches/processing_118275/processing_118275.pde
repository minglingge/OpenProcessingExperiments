
/*
Constantly Spawning Particle System
 Written by Ka Kit Cheong, Modified by Michael Kontopoulos
 Project C | Template 1
 
 */

PImage background;

ParticleSystem ps;



void setup() {
  size(1300, 550);
  smooth();
  background = loadImage("background3.png");

  stroke(150, 0);
  colorMode(HSB, 360, 100, 100);
  //Start the system off with just one particle.
  ps = new ParticleSystem(1, new PVector(width/2, height/2));
  noCursor();
  fill(0, 200);
  rect(0, 0, width, height);
  //image(background,random(0,3),random(0,3));
}

void draw() {


  if (mouseX>300) {
    filter(ERODE);








    image(background, random(0, 3), random(0, 3));


}
    //background();
    //Run the ParticleSystem object. 
    ps.run();
    //Add one new Particle to it each frame.
    ps.addParticle(mouseX, mouseY);
  }

class Particle {
  //http://processing.org/learning/pvector/
  //PVector is just a way of storing X and Y values in one object.
  PVector loc;
  PVector vel;
  PVector acc;
  float life;
  //float h; //hue

  //float z=shape1.png;

  Particle(PVector _loc) {
    loc = _loc.get();
    vel = new PVector(random(-1, 1), random(-1, 1), 0);
    acc = new PVector(random(-0.05, 0.05), random(-0.05, 0.05), 0);
    life = 100.0;
    //h = random(255);
  }

  void run() {
    display();
    update();
  }

  void display() {
    //Fill with the selected hue. Sat/Bright = 90. Alpha is linked to the life.
    //fill(h, 10, 10, life);
    float a = life *random(.1,.7); //Size also linked to life.
    float b= life*random(100, 1000);
    pushMatrix();
    translate(600, 300);
    PImage shape1;
    PImage flower;


    shape1=loadImage("shape3.png");
    flower=loadImage("flower1.png");


    rotate(noise(3));

    image(shape1, (loc.x)/2, loc.y, a*2, a*2);

    image(flower, loc.x, (loc.y)/2, a, a);

    popMatrix();
    image(shape1, (loc.x)/2, loc.y, a*2, a*2);

    image(flower, loc.x, (loc.y)*2, a, a);

    stroke(255, random(25));
    fill(17, 29, 75, random(5));
    rect(loc.x, loc.y, random(b), b);
    rect(loc.x, loc.y, random(a), a);
    // stroke(255,random(150,255));
  }

  void update() {
    //"add" for PVectors is identical to 
    //velocityX += accelerationX, velocityY += accelerationY
    vel.add(acc); //Add acceleration to velocity
    loc.add(vel); //Add velocity to position
    life -= 3;  //Decrease the lifespan by 2
  }


  boolean dead() {
    if (life <= 0.0) { //Am I dead???
      return true;
    } 
    else {
      return false;
    }
  }
}

/*  ParticleSystem class.
    Manages a list of Particle objects.
    We use an ArrayList because it's easier to remove things from and the size
    can change dynamically: http://www.processing.org/reference/ArrayList.html
 */

class ParticleSystem {

  ArrayList particles; //The list of Particles
  PVector origin;  

  ParticleSystem(int num, PVector _origin) {
    particles = new ArrayList();
    origin = _origin.get();
    //Add "num" particles to this system. 
    for ( int i=0; i<num; i++) {
      particles.add(new Particle(origin));
    }
  }

  void run() {
    //Cycle through the list of particles
    for (int i = particles.size()-1; i>=0; i--) {
      //Grab a reference to the current particle we're looking at
      Particle p = (Particle) particles.get(i);
      //Call this particle's "run" method
      p.run();
      //Check to see if it's dead. If so, remove it from this list.
      if (p.dead()) {
        particles.remove(i);
      }
    }
  }
  //Add a single Particle
  void addParticle(float _x, float _y) {
    particles.add(new Particle(new PVector(_x, _y)));
  }
  
  //Is the particle system dead for whatever reason?
  boolean dead(){
     if(particles.isEmpty())
      return true;
     else
      return false; 
  }
}


