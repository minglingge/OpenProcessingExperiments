
import java.util.ArrayList;
ArrayList<Ripple> ripples;
int rippleWidth = 10;

public void setup() {
  size(500, 500);
  smooth();
  noStroke();
  frameRate(30);

  ripples = new ArrayList<Ripple>();
  ripples.add(new Ripple(this, width/2, height/2, rippleWidth));
}

public void draw() {
  background(255);

  Ripple ripple;
  for (int i=0; i<ripples.size(); i++) {
    ripple = ripples.get(i);
    ripple.wave();
    ripple.display();
    if (ripple.finished()) {
      ripples.remove(i);
    }
  }
}

public void mousePressed() {
  float x, y;
  for (int i=1; i<=10; i++) {  
    float z = 36*i;
    x = mouseX + 100 * sin(radians(z));
    y = mouseY - 100 * cos(radians(z));
    ripples.add(new Ripple(this, x, y, rippleWidth));
  }
}

public class Ripple {
  PApplet papplet;

  float x, y, w;
  float life;

  public Ripple(PApplet p, float x, float y, float w) {
    papplet = p;
    this.x = x;
    this.y = y;
    this.w = w;
    this.life = 75;
  }

  public void wave() {
    w += w/16;
  }

  public boolean finished() {
    life--;
    if (life < 0) {
      return true;
    }
    else {
      return false;
    }
  }

  public void display() {
    papplet.fill(random(50), random(100), random(255),life);
    papplet.ellipse(x, y, w, w);
  }
}


