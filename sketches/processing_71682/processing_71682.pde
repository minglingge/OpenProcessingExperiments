
void setup(){
  smooth();
  size( 415, 614);
  background( 238, 243, 255);
  noStroke();
  
  fill( 21, 22, 24);
  quad( 196, 12, 244, 12, 306, 606, 258, 608);
  quad( 1, 334, 399, 447, 398, 473, 0, 358);
  
  fill( 145, 32, 32);
  quad( 36, 12, 410, 34, 411, 83, 35, 41);
  
  fill( 196, 33, 36);
  rect( 78, 120, 291, 67);
  
  fill( 34, 42, 45);
  quad( 119, 63, 124, 59, 175, 106, 170, 112);
  triangle ( 288, 101, 336, 83, 336, 113);
  triangle ( 338, 361, 380, 380, 337, 416);
  
  fill( 56, 77, 168);
  rect( 320, 221, 68, 76);
  quad( 202, 256, 204, 256, 211, 298, 207, 298);
  quad( 198, 221, 201, 221, 211, 278, 205, 278);
  
  fill( 199, 39, 39);
  quad( 34, 245, 277, 225, 279, 251, 35, 270);
  
  fill( 232, 158, 33);
  quad( 307, 303, 333, 304, 331, 348, 305, 347);
  quad( 4, 464, 87, 466, 87, 527, 10, 529);
  quad( 199, 263, 202, 263, 205, 285, 202, 285);
 
  
  fill( 175, 33, 31);
  quad( 75, 394, 169, 501, 151, 513, 55, 409);
  quad( 117, 559, 396, 541, 397, 582, 119, 589);
  
}

void draw(){
  println("x:s" + mouseX + " y: " + mouseY);
  
}
