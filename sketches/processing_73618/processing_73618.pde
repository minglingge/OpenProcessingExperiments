
float r;  //red value
float g;  //green value
float b;  //blue value
void setup() {
  background(0);
  size(600, 350);
  r = 0;
  g = 100;
  b = 0;
  frameRate(1);
  
  noStroke();
  
  fill(r, g, b);
  rect(255, 30, 90, 10);
  rect(245, 40, 110, 10);
  rect(235, 50, 130, 10);
  rect(235, 60, 130, 10);
  rect(225, 60, 10, 20);
  rect(365, 60, 10, 20);
  rect(265, 100, 20, 20);
  rect(315, 100, 20, 20);
  rect(215, 150, 10, 20);
  rect(225, 160, 10, 10);

  //SHIRT

  rect(365, 160, 10, 10);
  rect(335, 170, 50, 10);
  rect(325, 180, 60, 10);
  rect(305, 190, 70, 10);
  rect(315, 200, 50, 10);
  rect(325, 210, 30, 10);

  rect(295, 210, 10, 40);
  rect(305, 220, 10, 20);

  rect(375, 210, 10, 50);
  rect(365, 220, 10, 40);

  rect(325, 240, 40, 10);
  rect(315, 250, 50, 10);
  rect(305, 260, 40, 10);
  rect(295, 270, 20, 10);


  
  
   //BROWN HOOD
  fill(139, 69, 19);
  rect(235, 70, 130, 10);
  rect(225, 80, 150, 20);
  rect(225, 100, 20, 40);
  rect(355, 100, 20, 40);

  //FACE
  fill(244, 164, 96);
  //LEFT EAR
  rect(195, 60, 10, 70);
  rect(205, 70, 10, 70);
  rect(215, 100, 10, 50);
  //RIGHT EAR
  rect(375, 100, 10, 50);
  rect(385, 70, 10, 70);
  rect(395, 60, 10, 70);
  //EYES
  fill(139, 69, 19);
  rect(265, 120, 20, 20);//left eye
  rect(315, 120, 20, 20);//right eye
  //MOUTH
  rect(285, 150, 30, 20);
  //CHEEK
  fill(244, 164, 96);
  rect(225, 140, 150, 10);
  rect(245, 100, 20, 40);
  rect(285, 100, 30, 40);
  rect(335, 100, 20, 40);
  rect(225, 150, 60, 10);
  rect(235, 160, 50, 10);
  rect(315, 150, 60, 10);
  rect(315, 160, 50, 10);
  rect(265, 170, 70, 10);
  rect(295, 180, 30, 10);

  //SHIELD
  fill(139, 69, 19);
  rect(195, 170, 70, 20);
  rect(185, 180, 10, 100);
  rect(175, 190, 10, 90);
  rect(195, 190, 20, 20);
  rect(195, 230, 20, 40);
  rect(195, 270, 70, 20);
  rect(235, 230, 20, 40);
  rect(235, 190, 20, 20);
  rect(255, 190, 10, 80);
  rect(265, 180, 10, 100);
  rect(275, 180, 10, 90);
  fill(255, 215, 0);//cross
  rect(215, 190, 20, 80);//cross mast
  rect(195, 210, 60, 20);//cross beam

  //BELT

  fill(139, 69, 19);
  rect(285, 180, 10, 10);
  rect(285, 190, 20, 10);
  rect(295, 200, 20, 10);
  rect(305, 210, 20, 10);

  rect(305, 240, 20, 10);
  rect(295, 250, 20, 10);
  rect(295, 260, 10, 10);

  rect(355, 210, 20, 10);
  rect(365, 200, 20, 10);
  rect(375, 190, 10, 10);

  rect(315, 220, 50, 20);


  //BODY

  fill(244, 164, 96);
  rect(285, 200, 10, 70);
  rect(275, 270, 10, 10);
  rect(265, 280, 10, 10);
  rect(205, 290, 60, 10);



  //LEGS

  fill(139, 69, 19);
  rect(345, 260, 20, 10);
  rect(315, 270, 50, 40);


  //HAND

  fill(244, 164, 96);
  rect(385, 170, 20, 20);
  rect(385, 190, 10, 10);

  //SWORD

  fill(139, 69, 19);
  rect(395, 130, 10, 40);
  rect(385, 140, 10, 30);
  rect(375, 150, 10, 20);

  //TRI-FORCE

  fill(255, 215, 0);
  triangle(37, 75, 70, 20, 103, 75);
  triangle(70, 130, 103, 75, 136, 130);
  triangle(4, 130, 37, 75, 71, 130);
}

void draw() {
  //MULTI HOOD
  
  fill(r, g, b);//shirt color
  //INITIALIZED VAR
  r = random(255);
  g = random(255);
  b = random(255);
  
  rect(255, 30, 90, 10);
  rect(245, 40, 110, 10);
  rect(235, 50, 130, 10);
  rect(235, 60, 130, 10);
  rect(225, 60, 10, 20);
  rect(365, 60, 10, 20);
  rect(265, 100, 20, 20);
  rect(315, 100, 20, 20);
  rect(215, 150, 10, 20);
  rect(225, 160, 10, 10);

  //SHIRT

  rect(365, 160, 10, 10);
  rect(335, 170, 50, 10);
  rect(325, 180, 60, 10);
  rect(305, 190, 70, 10);
  rect(315, 200, 50, 10);
  rect(325, 210, 30, 10);

  rect(295, 210, 10, 40);
  rect(305, 220, 10, 20);

  rect(375, 210, 10, 50);
  rect(365, 220, 10, 40);

  rect(325, 240, 40, 10);
  rect(315, 250, 50, 10);
  rect(305, 260, 40, 10);
  rect(295, 270, 20, 10);

  
 
}

