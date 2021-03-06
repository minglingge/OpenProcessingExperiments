
float x=0;       // variable for the x position of the ellipse
float xInc=1;    //  this is how much we will move the x pos 

//this function is called once when the sketch first runs
void setup(){
  //we can set the size of the output window
  size(500,500);
  //the dimentions can be accessed by the variabels width and height
  println("width  ["+width+"]");
  println("height ["+height+"]");
  
  //initilise the x pos to be the middle of the screen
  x= width/2;
  
  //redraw the background black
  background(0);
}

void draw(){
  //redraw the window
  background(0);
  
  //draw the ellipse
  ellipse(x,height/2,20,20);
  
  //add 2 to the x position of the ellipse
  x+=xInc;
  
  //if the possition is greater than width (so centre of ellipse at edge of screen)
  // || or
  //the x pos is on the right edge of the window
  if(x > width || x < 0){
    //flip the sign of the amount we move
    // if its +ve it moves to the right
    // if its -ve it moves to the left
    xInc= xInc *(-1); 
  }
}
