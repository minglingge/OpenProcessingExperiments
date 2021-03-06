
PImage CA;

void setup(){
  background(0);
  CA = loadImage("CIUDADABIERTA.jpg");
  size(CA.width, CA.height);
  noStroke();
  noLoop(); 
  colorMode(HSB, 255);
  smooth();
}

void draw(){
  int spacer = 5; 
  for(int y = 0; y < height; y += spacer){
    for(int x = 0; x < width; x += spacer){
      color c = CA.get(x,y);
      pincelada(x, y, c, spacer);
    }
  }
}

void pincelada(float x, float y, color c, float amp){
  int puntos = round(random(5,10));
  for(int i = 0; i <= puntos; i++){
    float h = hue(c) + 20;
    float s = saturation(c) + 100;
    float b = brightness(c) - 70;
    pushMatrix();
    translate(x,y);
    fill(h,s,b);
    float tam = random(5, amp);
    rect(random(-amp, amp),random(-amp, amp), tam/5, tam*10);
    popMatrix();
  }
}

