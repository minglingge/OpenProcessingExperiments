
//Shape 2 - Vertices
//Exercise #3
/*3. Draw a complex curved shape of your own design using bezier
 Vertex().*/

 size (400, 400);



  strokeWeight(1);

  noFill();


  for (int x = 0; x < 400; x+=7) {
    noFill();
    beginShape();
    vertex(0, 0);
    //bezierVertex(100, 300, 100, 300, 0, 0);
    bezierVertex(x, 200, x, 200, 400, 400);
    vertex(400, 400);
    endShape();
  }

  for (int y = 0; y < 400; y+=7) {
    noFill();
    beginShape();
    vertex(0, 0);
    //bezierVertex(100, 300, 100, 300, 0, 0);
    bezierVertex(200, y, 200, y, 400, 400);
    vertex(400, 400);
    endShape();
  }
  for (int z = 0; z < 400; z+=7) {
    noFill();
    beginShape();
    vertex(400, 0);
    //bezierVertex(100, 300, 100, 300, 0, 0);
    bezierVertex(200, z, 200, z, 0, 400);
    vertex(0, 400);
    endShape();
  }
  
  for (int a = 0; a < 400; a+=7) {
    noFill();
    beginShape();
    vertex(400, 0);
    //bezierVertex(100, 300, 100, 300, 0, 0);
    bezierVertex(a, 200, a, 200, 0, 400);
    vertex(0, 400);
    endShape();
  }
  





