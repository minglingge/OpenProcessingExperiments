
int cx, cy, cz;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

void setup() {
  size(640, 600);
  stroke(255);
  
  int radius = min(width, height) / 2;
  secondsRadius = radius * 0.42;
  minutesRadius = radius * 0.40;
  hoursRadius = radius * 0.30;
  clockDiameter = radius * 1.4;
  
  cx = width / 2;
  cy = 250;
  cz = height/2;
}

void draw() {
  background(0);
  
  // Draw the clock background
  fill(255);
  noStroke();
  ellipse(cx, cy, clockDiameter, clockDiameter);
  
  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
  // Draw the hands of the clock
  stroke(0);
  strokeWeight(1);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(2);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(4);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);
  
  fill(0);
  textSize(32);
  
  text("12", 300, 110);
  text("3", 470, 255);
  text("6", 300, 410);
  text("9", 150, 255);
  // Draw the minute ticks
  strokeWeight(2);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=6) {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);
  }
  
  fill(255);
  textSize(20);
  text("Baby Timer Metro Edition",210,30);
  rect(70,480,500,90);
  fill(0);
  text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), 280, 200);

  endShape();
}
