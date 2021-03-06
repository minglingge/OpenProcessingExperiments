
// create an empty array ready to put particles in

Particle[] particles = new Particle[0];  
PImage particleImage; 

// set the maximum number of particles allowed at once
int maxParticles = 100; 


void setup() { 
  size(400, 400); 
  smooth(); 
  noStroke(); 
}

void draw() { 
  // clear the background
  background(0); 
  
  // add 2 new particles into the array : 
  for(int i=0; i<2; i++) {
    // adding a new particle into the array
    particles = (Particle[]) append(particles, new Particle()); 
  }
  
  // update and draw all the particles
  for (int i=0; i<particles.length; i++) { 
    particles[i].update();
  }
  // while we have more than the max number of particles... 
  while (particles.length>maxParticles) {
    // take the oldest of the front of the array
    particles = (Particle[]) subset(particles, 1);
  }
}

class Particle {

  // position properties for our particle
  float x; 
  float y; 

  // velocity is the change in position every frame.
  float velX;
  float velY; 
  
  float drag; 
  
  // the colour of the particle 
  color c; 
  
  float particleSize;
  float shrink; 
  
  float gravity; 
  int opacity; 
  int fade; 

  // constructor : this is a special function that is 
  // called whenever a Particle is instantiated. 
  Particle() {

    // set the x and y position to be in the middle of the
    // screen. 
    x = width/2; 
    y = height/2;

    // set the velocity to be a random number 
    // in both x and y directions. 
    velX = random(-6, 6); 
    velY = random(-6, 6);
    
    drag = 0.96; 
    
    c = color(255); 
    
    particleSize = random(6,12); 
    shrink = 0.96; 
    
    gravity = 0.2; 
    opacity = 255;
    fade = 0;  
  }

  void update() { 

    // apply drag to our velocity
    velX*=drag; 
    velY*=drag; 
    
    // add gravity; 
    velY+=gravity;
    
    // add the velocity to the position
    x+=velX;
    y+=velY;  
    
    particleSize *= shrink; 
    opacity-=fade; 
    
    // only draw the particle if it's not completely transparent
    if(opacity>0) { 
      fill(c, opacity); 
      // set the fill colour and draw the particle
      ellipse(x, y, particleSize, particleSize);
    }
  }
}
                
