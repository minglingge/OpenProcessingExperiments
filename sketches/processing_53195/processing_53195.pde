
// Attraction
// Daniel Shiffman <http://www.shiffman.net>

// A class for a draggable attractive body in our world

class Attractor {
  float mass;         // Mass, tied to size
  PVector location;   // Location
  float g;

  Attractor() {
    location = new PVector(width/2, height/2);
    mass = 60;
    g = 0.24;
  }


  PVector attract(Mover m) {
    PVector force = PVector.sub(location,m.location);             // Calculate direction of force
    float distance = force.mag();                                 // Distance between objects
    distance = constrain(distance,5.0,25.0);                             // Limiting the distance to eliminate "extreme" results for very close or very far objects
    force.normalize();                                            // Normalize vector (distance doesn't matter here, we just want this vector for direction)
    float strength = (g * mass * m.mass) / (distance * distance); // Calculate gravitional force magnitude
    force.mult(strength);                                         // Get force vector --> magnitude * direction
    return force;
  }

  // Method to display
  void display() {
    noStroke();
    fill(40,40,40,40);
    ellipse(location.x,location.y,mass*2,mass*2);
  }
}



