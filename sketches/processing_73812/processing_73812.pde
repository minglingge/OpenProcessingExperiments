
Eggboy john;
Eggboy billy;

//background colors  
int br1 = 60;  int bg1 = 75;  int bb1 = 250;  
float gravity = 0.1;
Eggboy[] eggboyZ = new Eggboy[5];


//----------------------------------------------------------------------------------------------
   void setup() 
//----------------------------------------------------------------------------------------------    
 
 { 
  
  
  
   
  size( 800,800);        // size of the window
    smooth();                // antialiasing
    
    john = new Eggboy(color(50,200,200),250,400,5);
    billy = new Eggboy(color(60,250,75),550,10,5);
    
    for (int i = 0; i < eggboyZ.length; i++){
         eggboyZ[i] = new Eggboy(color(60,random(255),75),random(800),random(800),5);
    }
   
    
  }  

//----------------------------------------------------------------------------------------------
   void draw() {  
//----------------------------------------------------------------------------------------------  
  if (keyPressed) {
     br1=br1-2;
     }  
     
   if(mouseX < width/3)  {
   background(br1,bg1,bb1);
   } else if (mouseX < 2*width/3) {
    background(br1,bb1,bb1);
   } else {
    background (br1,br1, bg1);
   }

for (int i = 0; i < eggboyZ.length; i++){
  
  eggboyZ[i].display();
  eggboyZ[i].move();
  eggboyZ[i].bounce();
}

john.display();
john.move();
john.bounce();
billy.display();
billy.bounce();
billy.move();
}

//----------------------------------------------------------------------------------------------
class Eggboy {
//----------------------------------------------------------------------------------------------
  
    float posY;
    float posX; 
    float localX;
    float localY;
    float yspeed;
    float speed;
    color c;   
    
     
    int r1 =  224;    int g1 =  200;    int b1 =  154;
    int r2 =  237;    int g2 =  223;    int b2 =  177;
    int r3 =  255;    int g3 =  234;    int b3 =  215;
    int r4 =  232;    int g4 =  219;    int b4 =  184;
    int r5 =  137;    int g5 =  211;    int b5 =  173;
                      int g6 =   99;    int b6 =   99;     
     
    // creature's right hand local origin, and right hand offsets
    int rHandX  = 290;
    int rHandY  = 135;
    int rHandTX = 0;
    int rHandTY = 0;
     
    //x+288 , y+135
     
    // to make mouse moves relative
    int relX = 685;
    int relY = 540;
     
Eggboy(color eggC, float posX , float posY, float tempYspeed) {
  
//  posX = localX;
//  posY = localY;
  localX = posX;
  localY = posY;
  yspeed = tempYspeed;
  speed = 0;
  c = eggC;
}  

//----------------------------------------------------------------------------------------------     
   void display( ) {
//----------------------------------------------------------------------------------------------

  rectMode(CORNERS);
  ellipseMode(CENTER);
  
//     if ( mousePressed  &&  ( mouseButton == LEFT ) ) {
//        localX = localX = mouseX;
//        localY = localY = mouseY;
//    }
//   
//     if ( mousePressed  &&  ( mouseButton == RIGHT ) ) {
//      rHandTX = relX - mouseX;
//      rHandTY = relY - mouseY;     
//    }
   
strokeWeight(2);
stroke(r1 , g1 , b1);  
    line( localX-150 , localY+125 , localX-225 , localY+175 );       //LEFT ARM
    line( localX-225 , localY+175 , localX-250 , localY+125 );
  
    line( localX+50  , localY+100 , localX+225 , localY+175 );       //RIGHT ARM
    line( localX+225 , localY+175 , localX+(rHandX-rHandTX) , localY+(rHandY-rHandTY));
  
    line( localX-75  , localY+175 , localX-150 , localY+250 );
    line( localX-150 , localY+250 , localX-150 , localY+325 );       //LEGS 

    line( localX+25  , localY+175 , localX+150 , localY+250 );       
    line( localX+150 , localY+250 , localX+150 , localY+325 );
stroke(r1 , g1 , b1);
strokeWeight(2);
fill(r2 , g2 , b2);
rectMode(CENTER);
    rect( localX+(rHandX-rHandTX) , localY+(rHandY-rHandTY) , 75 , 25 );       //RIGHT HAND
rectMode(CORNERS);
    rect( localX-325 , localY+125 , localX-250 , localY+150 );  //LEFT HANDDDDDDDDDD
    rect( localX+150 , localY+325 , localX+225 , localY+350);        //FEET
    rect( localX-225 , localY+325 , localX-150 , localY+350);
fill(c);
stroke(r1 , g1 , b1);
strokeWeight(2);
    ellipse( localX , localY-25 , 400 , 650);       //HEAD
fill(255);
stroke(r2 , g4 , b4);
strokeWeight(2);
      ellipse( localX-75 , localY-50 , 100 , 300);
      ellipse( localX+75 , localY-50 , 100 , 300);    //EYES BIG
fill(50);
strokeWeight(0);
      ellipse( localX+75 , localY-25 , 50 , 100);     //EYES SMALL
      ellipse( localX-75 , localY-25 , 50 , 100);
fill(r4 , g5 , b5);
      ellipse( localX , localY+100 , 100 , 50);       //NOSE
fill(r5 , g6 , b6);
      ellipse( localX , localY+200 , 50  , 100);      //MOUTH
    
   }
   
   
 void mouseReleased (){
          rHandX  = rHandX - rHandTX;
          rHandY  = rHandY - rHandTY;
          rHandTX = 0;
          rHandTY = 0;
        }

//void move(){
//  if (keyPressed){
//    if (key == 'f' || key == 'F'){
//  posY = posY + yspeed;
//    }if (posY>height){
//    posY=0;
//       }
//     }
//   }    
// 
// void bounce() {
//    // Add speed to location
//    posY = posY + speed; 
//
//    // Add gravity to speed
//    speed = speed + gravity; 
//
//    // If square reaches the bottom 
//    // Reverse speed 
//    if (posY > height-250) { 
//      speed = speed * -.95;  
//    } 
//  }
//    
//}

   
//   
//   
void move(){
  if (keyPressed){
    if (key == 'f' || key == 'F'){
  localY = localY + yspeed;
    }if (localY>height){
    localY=0;
       }
     }
   }    
 
 void bounce() {
    // Add speed to location
    localY = localY + speed; 

    // Add gravity to speed
    speed = speed + gravity; 

    // If square reaches the bottom 
    // Reverse speed 
    if (localY > height-350) { 
      speed = speed * -.95;  
    } 
  }
 

// drag the right hand around using the offsets??  
//      void mouseReleased { 
//      rHandX  = rHandX - rHandTX;
//      rHandY  = rHandY - rHandTY;
//      rHandTX = 0;
//      rHandTY = 0;
//     }
 

//##################################


//

//     
//    // mouseReleased() is called once every time a mouse button is pressed
//    //     set new right hand local origin, and clear offsets
}
