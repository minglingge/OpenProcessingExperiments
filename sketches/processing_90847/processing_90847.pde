
/*

This is the basis for my monster sketch
andrew barwick 2013 February

*/

void setup(){
  size( 600, 600);
  smooth();
  rectMode(CENTER);
}

void draw(){
  background(255);
  
 //head
  noStroke();
  fill(#E8863B);
  quad(60, 240, 520, 240, 540, 560, 40, 560);
  stroke(0);
  strokeJoin(MITER);
  strokeWeight(5);
  fill(#E8863B);
  curve(20, 2200, 60, 240, 520, 240, 520, 1850);
  curve(200, 0, 60, 240, 40, 560, 60, 700);
  curve(400, 0, 520, 240, 540, 560, 450, 700);

  //teeth
  stroke(0);
  strokeJoin(MITER);
  strokeWeight(2);
  fill(#FFFBE0);
  curve(95, 250, 100, 300, 110, 300, 115, 250);
  curve(105, 200, 110, 300, 125, 300, 130, 200);
  curve(120, 220, 125, 300, 145, 300, 150, 220);
  curve(140, 222, 145, 300, 161, 300, 166, 222);
  curve(156, 230, 161, 300, 178, 300, 183, 230);
  curve(173, 230, 178, 300, 195, 300, 200, 230);
  curve(190, 217, 195, 300, 214, 300, 219, 217);
  curve(209, 206, 214, 300, 240, 300, 245, 206);
  curve(240, 100, 240, 300, 275, 300, 280, 100);
  curve(270, 230, 275, 300, 296, 300, 301, 230);
  curve(291, 110, 296, 300, 331, 300, 336, 110);
  curve(326, 180, 331, 300, 341, 300, 346, 180);
  curve(336, 200, 341, 300, 362, 300, 367, 200);
  curve(357, 230, 362, 300, 389, 300, 394, 230);
  curve(383, 230, 389, 300, 412, 300, 417, 230);
  curve(407, 230, 412, 300, 422, 300, 427, 230);
  curve(417, 230, 422, 300, 431, 300, 436, 230);
  curve(426, 175, 431, 300, 446, 300, 451, 175);
  curve(441, 230, 446, 300, 460, 300, 465, 230);
  
  //mouth
  stroke(0);
  strokeJoin(MITER);
  strokeWeight(3);
  line(100, 300, 460, 300);
  
  //nostrils
  fill(0);
  stroke(0);
  curve(240, 100, 250, 240, 280, 240, 290, 100);
  
  fill(0);
  stroke(0);
  curve(285, 100, 295, 240, 325, 240, 330, 100);
  
  fill(0);
  stroke(0);
  line(250, 240, 280, 240);
  
  fill(0);
  stroke(0);
  line(295, 240, 325, 240);
  
  //eyes
  stroke(0);
  strokeJoin(MITER);
  strokeWeight(3);
  fill(#E0F6FC);
  curve(-140, 20, 200, 90, 200, 220, -140, 270);
  curve(20, 20, 340, 90, 340, 220, 20, 270); 
  line(200, 90, 200, 220);
  line(340, 90, 340, 220);
  
  //lefteye fill
  noFill();
  strokeWeight(3);
  curve(100, 130, 200, 154, 242, 154, 360, 130);
  strokeWeight(2);
  curve(100, 135, 200, 159, 241, 159, 360, 135);
  curve(100, 140, 200, 164, 240, 164, 360, 140);
  curve(100, 145, 200, 169, 239, 169, 360, 145);
  curve(100, 150, 200, 174, 238, 174, 360, 150);
  curve(100, 155, 200, 179, 237, 179, 360, 155);
  curve(100, 160, 200, 184, 235, 184, 360, 160);
  curve(100, 165, 200, 189, 233, 189, 360, 165);
  curve(100, 170, 200, 194, 230, 194, 360, 170);
  curve(100, 175, 200, 199, 225, 199, 360, 175);
  curve(100, 180, 200, 204, 220, 204, 360, 180);
  curve(100, 185, 200, 209, 215, 209, 360, 185);
  curve(100, 190, 200, 214, 211, 214, 360, 190);
  
  //lefteye fill
  noFill();
  strokeWeight(3);
  curve(240, 130, 340, 154, 379, 154, 490, 130);
  strokeWeight(2);
  curve(240, 135, 340, 159, 378, 159, 490, 135);
  curve(240, 140, 340, 164, 377, 164, 490, 140);
  curve(240, 145, 340, 169, 376, 169, 490, 145);
  curve(240, 150, 340, 174, 375, 174, 490, 150);
  curve(240, 155, 340, 179, 374, 179, 490, 155);
  curve(240, 160, 340, 184, 372, 184, 490, 160);
  curve(240, 165, 340, 189, 370, 189, 490, 165);
  curve(240, 170, 340, 194, 367, 194, 490, 170);
  curve(240, 175, 340, 199, 362, 199, 490, 175);
  curve(240, 180, 340, 204, 357, 204, 490, 180);
  curve(240, 185, 340, 209, 353, 209, 490, 185);
  curve(240, 190, 340, 214, 350, 214, 490, 190);
  
//left crows feet
curve(120, 220, 200, 232, 247, 200, 280, 100);
curve(120, 240, 196, 238, 249, 217, 280, 120);
curve(120, 260, 198, 244, 245, 230, 280, 140);

//right crows feet
curve(260, 220, 340, 232, 387, 200, 420, 100);
curve(260, 240, 336, 238, 389, 217, 420, 120);
curve(260, 260, 338, 244, 385, 230, 420, 140);

  
  
  println(mouseX +"   "+ mouseY);
}

