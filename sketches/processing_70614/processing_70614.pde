
void setup()
{
  size (800, 800);
  background(0, 180, 230);
  fill(255, 232 , 155);
  smooth();
  strokeWeight(2);
  ellipse(400, 400, 530 ,560); //face
  fill(255);
  ellipse(300, 310 , 80, 50); //eyes1
  fill(255);
  ellipse(500, 310 , 80, 50); //eyes
  fill(157, 128, 75);
  ellipse(300, 310, 40, 25); //brownpupil
  fill(157, 128, 75);
  ellipse(500, 310, 40,25); //brownpupil2
  fill(0);
  ellipse(500, 310, 20, 15); //blackpupil2
  fill(0);
  ellipse(300, 310, 20, 15); //blackpupil
  fill(252, 102, 102);
  strokeWeight(3);
  line(260,270, 330, 280);
  line(445,286,510,272);
  bezier(350, 395, 300, 470, 400, 470, 450, 395);
  strokeWeight(1);
  line(390, 400, 365, 450);
  strokeWeight(0);
  fill(120, 75, 29);
  quad(260, 251, 306, 260, 380, 220, 250, 190);
  fill(110,64,33);
  quad(400,250,500,180,600,200,640,300);
  fill(100,60,30);
  quad(350,200,400,250,450,290,500,200);
  fill(115, 75, 39);
  quad(300,180,400,230,430,240,600,220);
  fill(112, 70, 34);
  quad(280,150,350,180,420,100,250,150);
  fill(124, 75, 29);
  quad(200,200,300,230,400,180,300,100);
  fill(110,64, 33);
  quad(180,240,200,200,500,190,500,100);
  fill(122,69,32);
  quad(400,200,430,220,460,240,410,280);
  fill(118, 67, 29);
  quad(300,150,420,120,440,140,460,190);
  fill(124,69,36);
  quad(400,200,500,100,300,200,400,260);
  fill(120,75,29);
  quad(300,200,400,225,550,200,500,150);
  fill(110,70,35);
  quad(375,100,400,185,350,200,600,175);
  fill(100,60,30);
  quad(500,200,500,100,600,200,600,300);
    fill(255, 232 , 155);
    strokeWeight(3);
  arc(400, 340, 50, 50, 0, PI);
  fill(180);
 strokeWeight(1);
 rectMode(CENTER);
 fill(250,20,20);
 rect(400,730,600,135,10,10,10,10);
 strokeWeight(5);
 fill(230);
 line(105,710,700,710);
 line(105,750,700,750);
  strokeWeight(1);
 fill(240,180);
 triangle(105,662,205,662,155,790);
 triangle(205,790,315,790,265,662);
 triangle(315,662,425,662,375,790);
 triangle(425,790,535,790,485,662);
 triangle(535,662,645,662,595,790);
 strokeWeight(3);
 ellipseMode(CENTER);
 fill(255,255,0);
 ellipse(700,100,120,120);
}
