
void pincelada(float x, float y, color c, float amp){
   int puntos = round(random(13, 60));
  for(int i = 0; i <= puntos; i++){
    float h = hue(c) + random(25);
    float s = saturation(c) + random(45);
    float b = brightness(c) + random(60);
    pushMatrix();{
      translate(x,y);
      fill(h,s,b);
      noStroke();
      dan = 15;
      beginShape();
      curveVertex(random(dan),random(dan));
      curveVertex(random(dan),random(dan));  
      curveVertex(random(dan),random(dan));
      curveVertex(random(dan),random(dan));
      endShape(CLOSE);
    popMatrix();
    }  
  }
}


