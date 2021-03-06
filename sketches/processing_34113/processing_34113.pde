
PImage painting;
PImage blockOne;
PImage blocktwo;
PImage blockthree;
//declare PImage blockOne
//declare PImage blockTwo
//declare PImage blockThree

int[] xpos={622,307,651};
int[] ypos={260,464,800};
int[] xStopL={285,307,656};
int[] xStopR={622,559,690};
int[] yStopB={738,708,800}; 
int[] yStopT={260,464,659};

//declaring all variables
int xpos1;
int ypos1;
int xpos2;
int ypos2;
int xpos3;
int ypos3;

//declaring all int x and y positions

int blockX1;
int blockY1;
int blockX2;
int blockY2;

//declaring all ints for blocks

int xStopL1, xStopR1, yStopB1, yStopT1;

import ddf.minim.*;

AudioPlayer HughesFirstSq;
Minim minim;

AudioPlayer EllingtonSecondSq;

//AudioPlayer 

void setup() {
  minim = new Minim(this);
  HughesFirstSq = minim.loadFile("LangstonHughes.mp3", 2048);
  EllingtonSecondSq = minim.loadFile("Duke Ellington-Harlem Nocturne.mp3", 2048);

  size(888, 901);
  xpos1=622;
  ypos1=260;
  painting=loadImage("broadwaybwed.jpg");
  blockOne=loadImage("Square1.jpg");
  noStroke();
  xpos2=306;
  ypos2=461;
  blocktwo=loadImage("bluesquaremid.jpg");
  xpos3=651;
  ypos3=800;
  blockthree=loadImage("redsquare.jpg");
 
 
  imageMode(CENTER);


  xStopL1 = 285;
  xStopR1 = 622;
  yStopB1 = height-150;
  yStopT1 = 260;
//  blockX=583;
//  blockY=192;
}



void draw () {
  image(painting,width/2,height/2);
  // background (painting);
   image(blockOne, xpos[0],ypos[0]);
   
   image(blocktwo, xpos[1],ypos[1]);
   
   image(blockthree,xpos[2],ypos[2]);
   println ("mouseX: " + mouseX  + "   mouseY:" + mouseY);
  if (mouseX>xpos[0]-39 && mouseX<xpos[0]+39 && mouseY>ypos[0]-70 && mouseY <ypos[0]+70){
    HughesFirstSq.play();
   rect(288,168,21,21);
      //image (255,255,255,15,15);
   rect(396,56,21,21);
     //image (255,255,255, 15,15);
   rect(740,59,21,21);
    // image (255,255,255,15,15);
   rect(676,404, 21,21);
    // image(255,255,255,15,15);
   rect(355,327,21,21);
    // image(255,255,255, 15,15);
  } else if(mouseX>xpos[1]-28 && mouseX<xpos[1]+28 && mouseY>ypos[1]-45 && mouseY <ypos[1]+45){
    EllingtonSecondSq.play();
   //draw white rects
     rect (445,571, 15,15);
    //  image(255,255,255,15,15);
    rect (431,763,15,15);
     // image(255,255,255,15,15);
    rect (232,655, 15,15);
     // image (255,255,255,15,15);
    rect (401,763, 15,15);
    //  image (255,255,255, 15,15);
  }
  else{
    HughesFirstSq.pause();
    EllingtonSecondSq.pause();
  }
      
 
   
  
  //} else if(mouseX>xpos[2]-39 && mouseX<xpos[2]+39 && mouseY>ypos[2]-70 && mouseY <ypos[2]+70){
  //  EllingtonSecondsq.play();
  
//   //draw white rects
  
      
      
        
//    EllingtonSecondSq.play();
    
  
//      }
  
//  }  
//  image(); //blue square

}  
void mouseDragged (){

  for (int i=0; i<xpos.length; i++){ 
    if (mouseX>xpos[i]-39 && mouseX<xpos[i]+39 && mouseY>ypos[i]-70 && mouseY <ypos[i]+70){
  //    if (abs(mouseX-xpos)>abs(mouseY-ypos)) {
      if(keyPressed && keyCode==LEFT || keyPressed && keyCode==RIGHT){
        //move in x direction
        xpos[i]=constrain(mouseX, 285, 622); 
  
      } else if(keyPressed && keyCode==UP || keyPressed && keyCode==DOWN){
        ypos[i]=constrain(mouseY, yStopT[i], yStopB[i]); 
        //move in y direction
      }
    }
  }

}

void stop()
{
  // always close Minim audio classes when you are done with them
  HughesFirstSq.close();
  EllingtonSecondSq.close();
  minim.stop();
  super.stop();
 }

