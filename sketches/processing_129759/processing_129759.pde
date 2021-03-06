
Monstertje mijnMonstertje;
Monstertje mijnMonstertje2;
Monstertje mijnMonstertje3;

void setup() {
  size(500, 500);
  mijnMonstertje = new Monstertje (10, 70, 3);
  mijnMonstertje2 = new Monstertje (100, 220, 6);
  mijnMonstertje3 = new Monstertje (60, 400, 9);
}

void draw() {
  background(255);
  stroke(0);
  mijnMonstertje.achtergrond();
  mijnMonstertje.monstertje();
  mijnMonstertje.beweging();

  mijnMonstertje2.achtergrond();
  mijnMonstertje2.monstertje();
  mijnMonstertje2.beweging();

  mijnMonstertje3.achtergrond();
  mijnMonstertje3.monstertje();
  mijnMonstertje3.beweging();
}
class Monstertje {
  int monstertjeX;
  int monstertjeY;

  int richting;
  int teller;

  boolean test;
  int y;
  int x;
  int spatie;
  int stop;

  Monstertje(int tempX, int tempY, int tempRichting) {
    monstertjeX = tempX;
    monstertjeY = tempY;
    richting = tempRichting;
  }
  void achtergrond() {

    while (y < stop) {
      noStroke();
      println("test");
      fill(0, 212, 255);
      rect(x, y, 20, 10);
      y=y+spatie;
      x=x+spatie;
    }
    y=0;
    x=0;
  }
  void monstertje() {
    //lijf
    stroke(0);
    if (test == true) {
      fill(255, 0, 0);
    }
    if (test == false) {
      fill(0, 0, 255);
    }
    ellipseMode(CENTER);
    ellipse(monstertjeX, monstertjeY, 100, 100);

    //binnenkant lijf
    fill(255, 255, 255);
    ellipseMode(CENTER);
    ellipse(monstertjeX, monstertjeY, 40, 40);

    //oog links
    fill(255, 255, 255);
    ellipse(monstertjeX-15, monstertjeY-33, 20, 20);
    fill(0);
    ellipse(monstertjeX-15, monstertjeY-30, 10, 10);

    //oog rechts
    fill(255, 255, 255);
    ellipse(monstertjeX+15, monstertjeY-33, 20, 20);
    fill(0);
    ellipse(monstertjeX+15, monstertjeY-30, 10, 10);

    //benen
    line(monstertjeX-20, monstertjeY+45, monstertjeX-20, monstertjeY+65);
    line(monstertjeX+20, monstertjeY+45, monstertjeX+20, monstertjeY+65);
    strokeWeight(3);

    //armen
    line(monstertjeX-70, monstertjeY-10, monstertjeX-40, monstertjeY);
    line(monstertjeX+40, monstertjeY, monstertjeX+70, monstertjeY-10);

    //voeten
    fill(0, 0, 255, 150);
    rect(monstertjeX-35, monstertjeY+65, 15, 10);
    fill(0, 0, 255, 150);
    rect(monstertjeX+20, monstertjeY+65, 15, 10);

    //tanden
    fill(255);
    rect(monstertjeX, monstertjeY-17, 7, 10);
    rect(monstertjeX-10, monstertjeY-17, 7, 10);
    rect(monstertjeX, monstertjeY+7, 7, 10);
    rect(monstertjeX-10, monstertjeY+7, 7, 10);

    //strik

    fill(35, 180, 40);
    ellipse(monstertjeX-20, monstertjeY+33, 30, 30);
    ellipse(monstertjeX+20, monstertjeY+33, 30, 30);
    ellipse(monstertjeX, monstertjeY+35, 25, 25);
  }
  void beweging() {
    monstertjeX = monstertjeX + richting;

    if (monstertjeX > width ||  monstertjeX < 0) {
      richting = -richting;
      if (teller==10) {
        teller=0;
        test=!test;
      }
      println(teller);
      teller = teller +1;
    }
  }
}

