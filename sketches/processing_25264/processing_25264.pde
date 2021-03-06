
//Problem Set 3
//Question2
//Matt Iannacci

ball[] a= new ball[30]; 
button button;
float speed = 2;
float gravity = 0.3;

void setup () { 
  size(500,500); 
  smooth(); 
  noStroke();
  background(255,0,0);
  for (int x=0; x < a.length; x++) {
  a[x] = new ball( random(width), random(height-1000));
  }
  color c= color(0);
  button= new button ( 0, 0, 100, 100, c);
} 

void draw () { 
  background(255,0,0);
  for (int x=0; x < a.length; x++) {
    a[x].drawball() ;
    if (button.on()==false) { 
      a[x].drop();
    }
    button.display();
  }
}
void mousePressed() {
  button.click();
}

class ball { 
  float x;
  float y;
  float shade;
  float dia;
  float speed;
  ball (float x, float y) {   
    this.x = x;
    this.y = y; 

    speed = random(0.2,3);
    gravity = 0.2;
    dia = map(speed, 0.1,3,4,250);
    shade = map( speed,0.4,2,random(0), random(200));
  }

  void drawball () { 
    fill(shade-40,19,shade-79);
    ellipse(x, y, dia, dia);
  } 

  void drop () { 
    y = y + speed;
    speed = speed + gravity;
    if (y >= height) {
      speed *= -0.9;
    }
  }
}

class button {
  int btnx;
  int btny;
  int btnw;
  int btnh;
  color c;
  boolean on;
  boolean pressed; 

  button(int btnx, int btny, int btnw, int btnh, color c) {
    this.btnx = btnx;
    this.btny = btny;
    this.btnw = btnw;
    this.btnh = btnh;
    this.c= c;
  }
  void display() {
    fill(c);
    rect(btnx, btny, btnw, btnh);
  }
  void click() {
    if (mouseX > button.btnx && mouseX < button.btnx+btnw && mouseY > button.btny && mouseY < button.btny+btnw) {
      on = !on;
    }
    if (on == true) {
      pressed = true;
    }
    else {
      pressed =false;
    }
  }
  boolean on() {
    if (pressed==true) { 
      return true;
    }
    else { 
      return false;
    }
  }
}


