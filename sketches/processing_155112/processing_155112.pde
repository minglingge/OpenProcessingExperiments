
int x;
boolean jaw;

void setup(){
  setupAudio();
  size(500,500);
background(78);
x=425;
}

void draw(){
  getVolume();
  float jawy=map(volume,0,255,0,20);
  float eye=map(volume,0,255,0,5);
  background(78);
noStroke();
fill(255);
ellipseMode(CENTER);
ellipse(250,150,300+eye,500+eye); //do // in the front of this line for FUN!!!!!!!
rectMode(CENTER);
rect(250,250, 280, 100);
fill(78);
rect(250, 390, 200, 85);
noStroke();
fill(135);
stroke(0);
triangle(150, 300, 110, 300, 150, 340);
triangle(350,300,390,300,350,340);
fill(255);
rect(167, 377+jawy,20,30,3);
rect(187, 377+jawy,20,30,3);
rect(214, 377+jawy,20,30,3);
rect(241, 377+jawy,20,30,3);
rect(261, 377+jawy,20,30,3);
fill(150,146,93);
rect(298, 377+jawy,20,30,3);
fill(255);
rect(319, 377+jawy,20,30,3);
rect(339, 377+jawy,20,30,3);
fill(186);
rect(250, 425+jawy, 200, 75);
//if(x>500){
//      jaw=false;
//    }
//  if(x<425){
  //  jaw=true;
 // }
  //if(jaw==false){
    //x=x-10;
  //}
  //if(jaw==true){
    //x=x +10;
 // }


fill(0);
noStroke();
strokeWeight(2);
stroke(134, 78, 9);
triangle(378,50,250,187,134,300);  // put // here as well for mor FUN!!!!
fill(130);
strokeWeight(12);
noStroke();
stroke(0);
triangle(110,300, 150,387.5, 150, 535); 
triangle(390,300, 350, 387.5, 350, 535); 
fill(78,32,94);
strokeWeight(1);
ellipse(175,225, 100,100); 
ellipse(325, 225, 100,100); 
triangle(250,265, 215-eye, 300+eye, 285+eye, 300+eye);
fill(255);
ellipse(175,225,30,30);
ellipse(325,225,30,30);
fill(0);
ellipse(180,230,5+eye,5+eye);
ellipse(320,220,5+eye,5+eye);
}
