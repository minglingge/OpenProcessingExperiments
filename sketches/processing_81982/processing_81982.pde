
int y1 = 20;
int y2 = 50;
int s = 0;
int s2  = 0;
int s3 = 0;
int s4 = 0;
int s5 = 0;
int s6 = 0;
int counter = 50 ;


void setup() {
  size(400,400);
  background (200);
  colorMode(HSB, 300);
}
void draw() {
  frameRate(60);
  counter++;
  if (counter >= 1) {
    stroke(counter-50, 400, 400);
    line(counter, y1, counter, y2);

    if (counter >= 350) {
      counter = 50;
    }
  }

  //--------------------------------------------------------

  s++;
  if (s >= 1) {
    stroke(s, 400, 400);
    line(s+50, y1+50, s+50, y2+50);

    if (s >= 250) {
      //ellipse (30,30,30,30);
      s=0;


      s=0;
    }
  }  
  //---------------------------------------------------
  s2++;
  if (s2 >= 1) {
    stroke(s2, 400, 400);
    line(s2+50, y1+100, s2+50, y2+100);



    if (s2 >= 200) {
      //ellipse (30,30,30,30);
      s2=0;


      s2=0;
    }
  }  
  //----------------------------------------
  s3++;
  if (s3 >= 1) {
    stroke(s3, 400, 400);
    line(s3+50, y1+150, s3+50, y2+150);



    if (s3 >= 150) {
      //ellipse (30,30,30,30);
      s3=0;


      s3=0;
    }
  }
  //----------------------------------------
  s4++;
  if (s4 >= 1) {
    stroke(s4, 400, 400);
    line(s4+50, y1+200, s4+50, y2+200);



    if (s4 >= 100) {
      //ellipse (30,30,30,30);
      s4=0;
    }
  }
  //----------------------------------------
  s5++;
  if (s5 >= 1) {
    stroke(s5, 400, 400);
    line(s5+50, y1+250, s5+50, y2+250);



    if (s5 >= 50) {
      //ellipse (30,30,30,30);



      s5=0;
    }
  }
  //----------------------------------------


  println("counter " + counter);
  println("s " + s);
}












