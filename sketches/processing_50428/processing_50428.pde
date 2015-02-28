
void setup () {
  
  size (500, 500);
  background (255);
  
  strokeCap (ROUND);
  strokeWeight (5);
  strokeJoin (BEVEL);
  fill (245, 52, 15);
  triangle (190, 150, 290, 150, 240, 450);
  
  strokeWeight (3);
  stroke (66, 190, 0);
  line (170, 35, 190, 150);
  line (180, 43, 195, 150);
  line (190, 35, 200, 150);
  line (200, 43, 205, 150);
  line (210, 35, 212, 150);
  line (220, 43, 221, 150);
  
  line (230, 35, 230, 150);
  line (240, 43, 240, 150);
  line (250, 35, 250, 150);
  
  line (260, 43, 259, 150);
  line (270, 35, 268, 150);
  line (280, 43, 275, 150);
  line (290, 35, 280, 150);
  line (300, 43, 285, 150);
  line (310, 35, 290, 150);
  
  stroke (0, 0, 0);
  fill (0, 0, 0);
  quad (200, 190, 280, 190, 280, 210, 200, 210);
  
  fill (228, 242, 0);
  ellipse (220, 200, 20, 10);
  ellipse (260, 200, 20, 10);
  
  line (270, 280, 320, 235);
  
  fill (0, 0, 0);
  quad (320, 228, 325, 228, 325, 253, 320, 253);
  ellipse (323, 226, 20, 10);
  fill (125);
  strokeWeight (2);
  quad (323, 40, 333, 35, 325, 228, 320, 228);
  

}
