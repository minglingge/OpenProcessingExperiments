
import geomerative.*;

// Declare the objects we are going to use, so that they are accesible from setup() and from draw()
RFont f;
RShape grp;
RPoint[] points;

void setup(){
  // Initilaize the sketch
  size(800,400);
  frameRate(24);

  // Choice of colors
  background(255);
  fill(25,25,112);
  stroke(255);
  
  // VERY IMPORTANT: Allways initialize the library in the setup
  RG.init(this);
  
  //  Load the font file we want to use (the file must be in the data folder in the sketch floder), with the size 60 and the alignment CENTER
  grp = RG.getText("WYNN MUSTIN", "FreeSans.ttf", 100, CENTER);

  // Enable smoothing
  smooth();
}

void draw(){
  // Clean frame
  background(255);
  
  // Set the origin to draw in the middle of the sketch
  translate(width/2, 3*height/4);
  
  // Draw the group of shapes
  fill(185,211,238);
  stroke(0);
  RG.setPolygonizer(RG.ADAPTATIVE);
  grp.draw();
  
  // Get the points on the curve's shape
  //RG.setPolygonizer(RG.UNIFORMSTEP);
  //RG.setPolygonizerStep(map(float(mouseY), 0.0, float(height), 0.0, 1.0));
  
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(map(mouseY, 0, height, 3, 200));
  points = grp.getPoints();
  
  // If there are any points
  if(points != null){
    noFill();
    stroke(0);
    beginShape();
    for(int i=0; i<points.length; i++){
      vertex(points[i].x, points[i].y);
    }
    endShape();
 
    fill(255);
    stroke(0);
    for(int i=0; i<points.length; i++){
      ellipse(points[i].x, points[i].y,11,11);  
    } 
  }
}


