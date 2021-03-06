
float angle = random(0,TWO_PI);
float angle2 = random(0, TWO_PI);
float speed = .04;  
float length1 = 8;  
float length2 = 15;  
float length3 = 8;  
float length4 = 8;  
float length5 = 5;  
float length6 = 9; 
float length7 = 3.7;
float length8 = 3.7;
float xpos = 815;  
float xpos2 = 815+407;  
float Xarea1_1 = 50;  
float Xarea1_2 = 150;  
float Yarea1_1 = 240+20;  
float Yarea1_2 = 240-20;  
float Yarea2_1 = 200+20;  
float Yarea2_2 = 200-20;  
int counter1=0;  
int counter2=0;  
int counter3=0;  
int counter4=0;  
int counter5=0;  
int counter6 = 0;
int counter7 =0;
int diameter = 16;  
float ypos = 240;  
float ypos2 = 200;  
int ballCount = 1;  
int ballCount2 = 1;  
int ballCount3 = 1;  
int ballCount4 = 1;  
int ballCount5 =1;  
int ballCount6 = 1; 
int ballCount7 = 1;
int ballCount8 = 1;
int page = 0;  
int death = 0; 
  
PFont font;  
  
  
void setup(){  
  size(800,480);  
  smooth();  
  font = loadFont("OCRAExtended-24.vlw");  
  textFont(font);  
}  
  
void draw(){  
 if (page == 0){  
   instruction();  
 }  
 if (page == 1){  
    levelOne(); 
     
    if (keyPressed){
      if(key == 'b' || key =='B'){
        counter1 = 150;
      }
    } 
  }  
  if (page == 2){  
    levelTwo();  
    
     if (keyPressed){
      if(key == 'b' || key =='B'){
        counter2 = 80;
      }
    } 
  }  
  if (page == 3){  
    levelThree(); 
   
    if (keyPressed){
      if(key == 'b' || key =='B'){
        counter3 = 270;
      }
    }  
  }  
  if (page == 4){  
    levelFour(); 
   
     if (keyPressed){
      if(key == 'b' || key =='B'){
        counter4 = 225;
      }
    }  
  }  
  if (page == 5){ 
    levelFive(); 
     if (keyPressed){
      if(key == 'b' || key =='B'){
        counter5 = 90;
      }
    } 
  }
  if(page == 6){
    levelSix();
    if (keyPressed){
      if(key == 'b' || key =='B'){
        counter6 = 300;
      }
    } 
  }
  if(page == 7){
  BonusLevel();
  }

 
}  
  
void instruction(){  
  background(255);  
  noStroke();  
  fill(225);  
  quad(Xarea1_1,0,Xarea1_1,480, Xarea1_2,480, Xarea1_2,0);  
    
  textSize(20);  
  fill(255,0,0);  
  
  String instructions = "The goal of this game is to control the vertical motion of a box so that a horizontally moving ball passes through it for the most amount of time possible.  Keep in mind, the red box is always controlled by the 'W' (Up) and 'S' (Down) keys, and the blue box, which will appear in later levels, will be controlled by the 'I' (Up) and 'K' (Down) keys.  Each level has a counter in the upper right corner which is the number of balls left on the level.  There is a score keeper in the lower right and a number next to it which denotes the minumum points needed to pass the current level. Good luck and have fun!";  
  text(instructions, 170, 110, 600, 400);  
  text("Click to Begin", 170, 450);
  textSize(60);
  text("Reception", 170, 70);  
    
  if (mousePressed){  
    page = 1;  
  }  
}  
  
void levelOne(){//GOAL = 150  
  background(255);  
    
  noStroke();  
  fill(225);  
  quad(Xarea1_1,0,Xarea1_1,480, Xarea1_2,480, Xarea1_2,0);  
  
   
 fill(255,0,0);  
 if(keyPressed){  
  if(key == 'w' || key == 'W'){  
    Yarea1_1-=5;  
    Yarea1_2-=5;  
  }  
  if(key == 's' || key == 'S'){  
    Yarea1_1+=5;  
    Yarea1_2+=5;  
  }  
 }  
 
 if (Yarea1_1>480){
   Yarea1_1 = 480;
 }
 if(Yarea1_1<40){
   Yarea1_1 = 40;
 }
 if (Yarea1_2>440){
   Yarea1_2 = 440;
 }
 if(Yarea1_2<0){
   Yarea1_2 = 0;
 }
 float y1_1 = constrain(Yarea1_1, 40, 480);
 float y1_2 = constrain(Yarea1_2, 0, 440);
   
  
  xpos -= length1;  
    
 if(xpos>=Xarea1_1-15 && xpos<=Xarea1_2+15 && ypos<=Yarea1_1+15 && ypos>=Yarea1_2-15){  
    fill(255);  
    counter1++;  
  }  
  quad(Xarea1_1, y1_1, Xarea1_2, y1_1 , Xarea1_2, y1_2, Xarea1_1, y1_2);  
  fill(255,0,0);  
  ellipse(xpos, ypos, diameter,diameter);    
  textSize(20);  
  text(counter1,710,460);  
  text("/150", 750, 460);  
  text("Level 1", 710, 30);  
  text(11-ballCount, 620, 30);  
   
  
   
  if(xpos <= 0-diameter/2){  
    xpos = 815;  
    ypos = random(20, 460);  
    length1 = 8;  
    ballCount++;  
  }  
    
  if (ballCount > 10){  
    length1 = 0;  
    if(counter1 >= 150){  
      text("Level 1 Complete. Click to Begin Next Level", 170, 240);  
      if(mousePressed){  
        page = 2;  
      }  
    }  
    if(counter1 < 150){  
      text("You Lose. Click to Try Again", 170, 240);  
      if (mousePressed){ 
        page = 1; 
        length1 = 8; 
        ballCount = 1; 
        counter1 = 0; 
        death++; 
      } 
    }  
  }  
    
}  
  
void levelTwo(){//GOAL = 85  
  background(255);  
    
  noStroke();  
  fill(225);  
  quad(Xarea1_1,0,Xarea1_1,480, Xarea1_2,480, Xarea1_2,0);  
    
    
 fill(255,0,0);  
    
 if(keyPressed){  
  if(key == 'w' || key == 'W'){  
    Yarea1_1-=10;  
    Yarea1_2-=10;  
  }  
  if(key == 's' || key == 'S'){  
    Yarea1_1+=10;  
    Yarea1_2+=10;  
  }  
 }  
 
 if (Yarea1_1>480){
   Yarea1_1 = 480;
 }
 if(Yarea1_1<40){
   Yarea1_1 = 40;
 }
 if (Yarea1_2>440){
   Yarea1_2 = 440;
 }
 if(Yarea1_2<0){
   Yarea1_2 = 0;
 }
 float y1_1 = constrain(Yarea1_1, 40, 480);
 float y1_2 = constrain(Yarea1_2, 0, 440);
  
  xpos -= length2;  
    
 if(xpos>=Xarea1_1-15 && xpos<=Xarea1_2+15 && ypos<=Yarea1_1+15 && ypos>=Yarea1_2-15){  
    fill(255);  
    counter2++;  
  }  
  quad(Xarea1_1, y1_1, Xarea1_2, y1_1 , Xarea1_2, y1_2, Xarea1_1, y1_2);  
  fill(255,0,0);  
  ellipse(xpos, ypos, diameter,diameter);    
  textSize(20);  
  text(counter2,710,460);  
  text("/80", 750, 460);  
  text("Level 2", 710, 30);  
    text(11-ballCount2, 620, 30);  
   
  if(xpos <= 0-diameter/2){  
    xpos = 900;  
    ypos = random(20, 460);  
    ballCount2++;  
  }  
    
  if (ballCount2 > 10){  
    length2 = 0;  
    if(counter2 >= 80){  
      text("Level 2 Complete. Click to Begin Next Level", 170, 240);  
      fill(0,0,255);  
      textSize(15);  
      text("The next level contains two boxes, so the 'I' (Up) and 'K' (Down) keys will be used to control the blue boxes", 170, 280 , 600, 100);  
      if(mousePressed){  
        page = 3;  
      }  
    }  
    if(counter2 < 80){  
      text("You Lose. Click to Try Again", 170, 240);  
       if (mousePressed){ 
        page = 2; 
        length2 = 15; 
        ballCount2 = 1; 
        counter2 = 0; 
        death++; 
      } 
    }  
  }  
    
}  
  
  
void levelThree(){//Goal = 270  
  background(255);  
    
  noStroke();  
  fill(225);  
  quad(Xarea1_1,0,Xarea1_1,480, Xarea1_2,480, Xarea1_2,0);  
    
    
 fill(255,0,0);  
    
    
 if(keyPressed){  
  if(key == 'w' || key == 'W'){  
    Yarea1_1-=7;  
    Yarea1_2-=7;  
  }  
  if(key == 's' || key == 'S'){  
    Yarea1_1+=7;  
    Yarea1_2+=7;  
  }  
  if(key == 'i' || key == 'I'){  
    Yarea2_1-=7;  
    Yarea2_2-=7;  
  }  
  if(key == 'k' || key == 'K'){  
    Yarea2_1+=7;  
    Yarea2_2+=7;  
  }  
 }  
 
 if (Yarea1_1>480){
   Yarea1_1 = 480;
 }
 if(Yarea1_1<40){
   Yarea1_1 = 40;
 }
 if (Yarea1_2>440){
   Yarea1_2 = 440;
 }
 if(Yarea1_2<0){
   Yarea1_2 = 0;
 }
  if (Yarea2_1>480){
   Yarea2_1 = 480;
 }
 if(Yarea2_1<40){
   Yarea2_1 = 40;
 }
 if (Yarea2_2>440){
   Yarea2_2 = 440;
 }
 if(Yarea2_2<0){
   Yarea2_2 = 0;
 }
    
  xpos -= length4;  
  xpos2 -= length3;  
    
 if(xpos>=Xarea1_1-15 && xpos<=Xarea1_2+15 && ypos<=Yarea1_1+15 && ypos>=Yarea1_2-15){  
    fill(255);  
    counter3++;  
  }  
  quad(Xarea1_1, Yarea1_1, Xarea1_2, Yarea1_1 , Xarea1_2, Yarea1_2, Xarea1_1, Yarea1_2);  
  fill(255,0,0);  
  ellipse(xpos, ypos, diameter,diameter);    
  fill(0,0,255);  
    
  if(xpos2>=Xarea1_1-15 && xpos2<=Xarea1_2+15 && ypos2<=Yarea2_1+15 && ypos2>=Yarea2_2-15){  
    fill(255);  
    counter3++;  
  }  
    
  quad(Xarea1_1, Yarea2_1, Xarea1_2, Yarea2_1 , Xarea1_2, Yarea2_2, Xarea1_1, Yarea2_2);  
  fill(0,0,255);  
  ellipse(xpos2, ypos2, diameter, diameter);  
  fill(255,0,0);  
  textSize(20);  
  text(counter3,710,460);  
  text("/270", 750, 460);  
  text("Level 3", 710, 30);  
  text(11-ballCount3, 620, 30);  
  fill(0,0,255);  
  text(11-ballCount4, 580, 30);   
 fill(255,0,0);   
   
  
   
  if(xpos <= 0-diameter/2){  
    xpos = 815;  
    ypos = random(20, 460);  
    ballCount3++;  
  }  
    
  if(xpos2 <= 0-diameter/2){  
    xpos2 = 815;  
    ypos2 = random(20,460);  
    ballCount4++;  
  }  
      
    
  if (ballCount3 > 10){  
    length4 = 0;  
  
  }  
    
  if (ballCount4 > 10){  
    length3 = 0;  
    if(counter3 >= 270){  
      text("Level 3 Complete. Click to Begin Next Level", 170, 240);  
      if(mousePressed){  
        page = 4;  
        xpos2 = 815+407;
      }  
   }  
   if(counter3 < 270){  
     text("You Lose. Click to Try Again", 170, 240);  
      if (mousePressed){ 
        page = 3; 
        length3 = 8; 
        length4=8; 
        ballCount3 = 1; 
        ballCount4 = 1; 
        counter3 = 0; 
        xpos = 815; 
        xpos2 = 815+407; 
        death++; 
      } 
   }  
  }  
}  
  
  
void levelFour(){//Goal = 225  
  float ypos = 240+200*sin(angle);  
   background(255);  
    
  noStroke();  
  fill(225);  
  quad(Xarea1_1,0,Xarea1_1,480, Xarea1_2,480, Xarea1_2,0);  
 
    
 fill(255,0,0);  
   
 if(keyPressed){  
  if(key == 'w' || key == 'W'){  
    Yarea1_1-=7;  
    Yarea1_2-=7;  
  }  
  if(key == 's' || key == 'S'){  
    Yarea1_1+=7;  
    Yarea1_2+=7;  
  }   
 }  
 
  if (Yarea1_1>480){
   Yarea1_1 = 480;
 }
 if(Yarea1_1<40){
   Yarea1_1 = 40;
 }
 if (Yarea1_2>440){
   Yarea1_2 = 440;
 }
 if(Yarea1_2<0){
   Yarea1_2 = 0;
 }
  
  angle-=speed;  
  xpos -= length5;  
    
 if(xpos>=Xarea1_1-15 && xpos<=Xarea1_2+15 && ypos<=Yarea1_1+15 && ypos>=Yarea1_2-15){  
    fill(255);  
    counter4++;  
  }  
  quad(Xarea1_1, Yarea1_1, Xarea1_2, Yarea1_1 , Xarea1_2, Yarea1_2, Xarea1_1, Yarea1_2);  
  fill(255,0,0);  
  ellipse(xpos, ypos, diameter,diameter);  
  textSize(20);    
  text(counter4,710,460);  
  text("/225", 750, 460);  
  text("Level 4", 710, 30);  
  text(11-ballCount5, 620, 30);  
   
  
   
  if(xpos <= 0-diameter/2){  
    xpos = 815;  
    length5 = random(3,5);  
    ballCount5++;  
  }  
    
  if (ballCount5 > 10){  
       length5 = 0;  
    if(counter4 >= 225){  
      text("Level 4 Complete. Click to Begin Next Level", 170, 240);  
      if(mousePressed){  
        page = 5;  
      }  
   }  
   if(counter4 < 225){  
     text("You Lose. Click to Try Again", 170, 240);  
       if (mousePressed){ 
        page = 4; 
        length5 = 5; 
        ballCount5 = 1; 
        counter4 = 0; 
        death++; 
      } 
   }  
  }  
}  
 
void levelFive(){ 
   float ypos = 240+200*sin(angle);  
   speed = .08; 
   background(255);  
    
  noStroke();  
  fill(225);  
  quad(Xarea1_1,0,Xarea1_1,480, Xarea1_2,480, Xarea1_2,0);  
    
    
 fill(255,0,0);  
   
 if(keyPressed){  
  if(key == 'w' || key == 'W'){  
    Yarea1_1-=15;  
    Yarea1_2-=15;  
  }  
  if(key == 's' || key == 'S'){  
    Yarea1_1+=15;  
    Yarea1_2+=15;  
  }  
  
  
 }  
 
  if (Yarea1_1>480){
   Yarea1_1 = 480;
 }
 if(Yarea1_1<40){
   Yarea1_1 = 40;
 }
 if (Yarea1_2>440){
   Yarea1_2 = 440;
 }
 if(Yarea1_2<0){
   Yarea1_2 = 0;
 }
  
  angle-=speed;  
  xpos -= length6;  
    
 if(xpos>=Xarea1_1-15 && xpos<=Xarea1_2+15 && ypos<=Yarea1_1+15 && ypos>=Yarea1_2-15){  
    fill(255);  
    counter5++;  
  }  
  quad(Xarea1_1, Yarea1_1, Xarea1_2, Yarea1_1 , Xarea1_2, Yarea1_2, Xarea1_1, Yarea1_2);  
  fill(255,0,0);  
  ellipse(xpos, ypos, diameter,diameter);  
  textSize(20);    
  text(counter5,710,460);  
  text("/90", 750, 460);  
  text("Level 5", 710, 30);  
  text(11-ballCount6, 620, 30);  
   
  
   
  if(xpos <= 0-diameter/2){  
    xpos = 815;  
    length6 = random(7, 9);  
    ballCount6++;  
  }  
    
  if (ballCount6 > 10){  
       length6 = 0;  
    if(counter5 >= 90){  
      text("Level 5 Complete. Click to Begin Next Level", 170, 240);  
      fill(0,0,255);  
      textSize(15);  
      text("The next level contains two boxes, so the 'I' (Up) and 'K' (Down) keys will be used to control the blue boxes", 170, 280 , 600, 100);  
      if(mousePressed){  
        page = 6;  
      }  
   }  
   if(counter5 < 90){  
     text("You Lose. Click to Try Again", 170, 240);  
       if (mousePressed){ 
        page = 5; 
        length6 = 10; 
        ballCount6 = 1; 
        counter5 = 0; 
        death++; 
      } 
   }  
  }  
} 

void levelSix(){
  speed = .04;
    float ypos = 240+200*sin(angle);  
    float ypos2 = 240+200*sin(angle2); 
   background(255);  
    
  noStroke();  
  fill(225);  
  quad(Xarea1_1,0,Xarea1_1,480, Xarea1_2,480, Xarea1_2,0);  
 
    
 fill(255,0,0);  
   
 if(keyPressed){  
  if(key == 'w' || key == 'W'){  
    Yarea1_1-=7;  
    Yarea1_2-=7;  
  }  
  if(key == 's' || key == 'S'){  
    Yarea1_1+=7;  
    Yarea1_2+=7;  
  }  
    if(key == 'i' || key == 'I'){  
    Yarea2_1-=7;  
    Yarea2_2-=7;  
  }  
  if(key == 'k' || key == 'K'){  
    Yarea2_1+=7;  
    Yarea2_2+=7;  
  }
 }  
 
  if (Yarea1_1>480){
   Yarea1_1 = 480;
 }
 if(Yarea1_1<40){
   Yarea1_1 = 40;
 }
 if (Yarea1_2>440){
   Yarea1_2 = 440;
 }
 if(Yarea1_2<0){
   Yarea1_2 = 0;
 }
  if (Yarea2_1>480){
   Yarea2_1 = 480;
 }
 if(Yarea2_1<40){
   Yarea2_1 = 40;
 }
 if (Yarea2_2>440){
   Yarea2_2 = 440;
 }
 if(Yarea2_2<0){
   Yarea2_2 = 0;
 }
  
  angle-=speed;  
  angle2-=speed;
  xpos -= length7; 
  xpos2-= length8; 
    
 if(xpos>=Xarea1_1-15 && xpos<=Xarea1_2+15 && ypos<=Yarea1_1+15 && ypos>=Yarea1_2-15){  
    fill(255);  
    counter6++;  
  }  
  quad(Xarea1_1, Yarea1_1, Xarea1_2, Yarea1_1 , Xarea1_2, Yarea1_2, Xarea1_1, Yarea1_2);  
  fill(255,0,0);  
  ellipse(xpos, ypos, diameter,diameter);  
  textSize(20);    
  text(counter6,710,460);  
  text("/300", 750, 460);  
  text("Level 6", 710, 30);  
  text(11-ballCount7, 620, 30);  
    fill(0,0,255);  
  text(11-ballCount8, 580, 30);   
 fill(255,0,0);  
  
  fill(0,0,255);
  if(xpos2>=Xarea1_1-15 && xpos2<=Xarea1_2+15 && ypos2<=Yarea2_1+15 && ypos2>=Yarea2_2-15){  
    fill(255);  
    counter6++;  
  }  
  quad(Xarea1_1, Yarea2_1, Xarea1_2, Yarea2_1 , Xarea1_2, Yarea2_2, Xarea1_1, Yarea2_2);  
  fill(0,0,255);  
  ellipse(xpos2, ypos2, diameter,diameter);  
  
   
  
   
  if(xpos <= 0-diameter/2){  
    xpos = 815;  
    length7 += .3;  
    ballCount7++;  
  }  
  if(xpos2 <= 0-diameter/2){  
    xpos2 = 815;  
    length8 += .34;  
    ballCount8++;  
  }  
    
  if (ballCount7 > 10){  
    length7 = 0;  
  
  }  
   fill(255,0,0); 
  if (ballCount8 > 10){  
    length8 = 0;  
    if(counter6 >= 300){  
      text("Level 6 Complete. You Have Won. Congratulations!", 170, 200-80);  
      text("Points:", 170, 240-80);  
      text(counter1+counter2+counter3+counter4+counter5+counter6, 300, 240-80);  
      text("You failed:     time(s)", 170, 280-80); 
      text(death, 320, 280-80);
      text(counter1+counter2+counter3+counter4+counter5+counter6, 170, 320-80);
      text("-", 240, 320-80);
      text(death, 270, 320-80);
      text("* 50", 300, 320-80);
      textSize(40);
      text("Final Score:", 170, 360-50);
      text((counter1+counter2+counter3+counter4+counter5+counter6) - (death*50), 500, 360-50);
      textSize(20); 
   }  
   if(counter6 < 300){  
     text("You Lose. Click to Try Again", 170, 240);  
      if (mousePressed){ 
        page = 6; 
        length7 = 3.7; 
        length8=3.7; 
        ballCount7 = 1; 
        ballCount8 = 1; 
        counter6 = 0; 
        xpos = 815; 
        xpos2 = 815+407; 
        angle = random(0, TWO_PI);
        angle2 = random(0, TWO_PI);
        death++; 
      } 
   }  
  }  
}

void BonusLevel(){//Goal = 225  
  ypos = 240+200*sin(2*angle);  
  xpos = 240+200*sin(3*angle+((1/2)*(PI/2)));
   background(255);  
    
  noStroke();  
  fill(225);  
  quad(Xarea1_1,0,Xarea1_1,480, Xarea1_2,480, Xarea1_2,0);  
 
    
 fill(255,0,0);  
   
 if(keyPressed){  
  if(key == 'w' || key == 'W'){  
    Yarea1_1-=7;  
    Yarea1_2-=7;  
  }  
  if(key == 's' || key == 'S'){  
    Yarea1_1+=7;  
    Yarea1_2+=7;  
  }   
 }  
 
  if (Yarea1_1>480){
   Yarea1_1 = 480;
 }
 if(Yarea1_1<40){
   Yarea1_1 = 40;
 }
 if (Yarea1_2>440){
   Yarea1_2 = 440;
 }
 if(Yarea1_2<0){
   Yarea1_2 = 0;
 }
  
  angle-=speed;  
  xpos -= length5;  
    
 if(xpos>=Xarea1_1-15 && xpos<=Xarea1_2+15 && ypos<=Yarea1_1+15 && ypos>=Yarea1_2-15){  
    fill(255);  
    counter7++;  
  }  
  quad(Xarea1_1, Yarea1_1, Xarea1_2, Yarea1_1 , Xarea1_2, Yarea1_2, Xarea1_1, Yarea1_2);  
  fill(255,0,0);  
  ellipse(xpos, ypos, diameter,diameter);  
  textSize(20);    
  text(counter7,710,460);    
  text("BONUS", 710, 30);  
   
  int m = millis();
  int timer = 30-m/1000;
  int real = constrain(timer, 0, 30);
  textSize(40);
  text("Timer:", 170, 240);
  text(real, 330, 240);
 
  if(real == 0){
    textSize(40);
    text("Final Score:", 170, 360-50);
    text((counter1+counter2+counter3+counter4+counter5+counter6+counter7) - (death*50), 500, 360-50);
    timer = 0;
    length5 = 0;
    speed = 0;
   }    

}


