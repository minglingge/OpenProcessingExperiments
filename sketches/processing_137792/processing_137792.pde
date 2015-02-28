
// ICE #12 
/*
  Problem:
   -  Parallel Arrays -- grow each figure's dimval by its deltaDimVal 
         until it is larger than the screen.
   -  When the dimValue is too big,  reset its dimVal to zero, and
   -  assign random valiues to the figure's colorVal, xVal, yVal 
        and deltaDimValue array elements.
   -  Figures with odd array indexes must be rectangles.
   -  Figures with even arra indexes must be circles.
 */

  // x coordinates for figures
float  [ ] xVals   = {  50, 100, 150, 190, 230, 280, 310, 360 };
  // y coordinates for figures
float  [ ] yVals   = {  40, 110, 130, 170, 330, 120, 150,  90 };
  // sizes or dimensions for figures
float  [ ] dimVals = {   5,  15,  24,  54,  13,  23,  13,  41 };
  // amounts added to the sizes or dimensions for each frame
float  [ ] deltaDimVals = { 4, 8, 1, 13, 11, 2, 5, 9 };
  // colors of figures
color  [ ] colorVals = { color( random(255), random(255), random(255) ),
                         color( random(255), random(255), random(255) ),
                         color( random(255), random(255), random(255) ),
                         color( random(255), random(255), random(255) ),
                         color( random(255), random(255), random(255) ),
                         color( random(255), random(255), random(255) ),
                         color( random(255), random(255), random(255) ),
                         color( random(255), random(255), random(255) )
                       };


void setup( )
{
  size( 400, 400 );
  noStroke( );
  rectMode( CENTER );
  frameRate( 24 );
  smooth( );
}

void draw( )
{
   background( 0 );
   growFigures( );
   drawFigures( ); 
}

void growFigures( )
{  
  for (int i = 0; i< deltaDimVals.length; i++)
  {
    dimVals [i] += deltaDimVals [i];
    if (dimVals [i] > width)
    {
      dimVals [i] = 0;
      xVals [i] = random (width);
      yVals [i] = random (height);
      colorVals [i] = color(random(255), random(255), random(255) );
      
    }
  }
  
 
}

void drawFigures( )
{
  for (int i = 0; i< deltaDimVals.length; i++)
  {
  fill (colorVals [i]);
  rect (xVals [i] %width, yVals [i]%height, dimVals [i], dimVals [i]);
  ellipse (xVals [i] %width, yVals [i]%height, dimVals [4], dimVals [4]);
  }
}

