
float a = 0.1;

void setup() {
  background(255);
  size(300,300);
}

  void draw(){
    ellipse(a,150,50,50);
    a=a+5;
    stroke(255,a,0);
    ellipse(150,a,50,50);
    a=a+5;
    stroke(255,a,0);
    println(a);
    
  }


