
size (450, 450) ;
background (255);

//eyeblows
smooth();
fill (1);
round (3);
quad (50, 40, 50, 60, 150, 150, 150, 100);
quad (250, 100, 250, 150, 315, 60, 315, 40);

// eyes 
fill (255);
strokeWeight(8);
stroke (0, 0, 0);
ellipse (130, 175, 40, 40);
ellipse (270, 175, 40, 40);

//inside 
fill (1);
ellipse (130, 175, 10, 10);
ellipse (270, 175, 8, 8);

//nose
noFill ();
strokeWeight(4);
bezier (200, 200, 200, 250, 200 +40, 200+10, 200+40, 250+10);
//nasal cavity
strokeWeight(2);
ellipse (220, 260, 3, 5);

//mouse
strokeWeight(4);
ellipse (175, 320, 120, 30);
line (115, 320, 235, 320);

//face outline
bezier (350, 50, 350, 80, 330, 550, 50, 330);

//cigarette
fill (255);
quad (225, 320, 205, 320, 255, 400, 275, 400);
//cigarette fire
fill (206, 23, 23);
quad (268, 390, 250, 390, 255, 400, 275, 400);
//smoke
noFill ();
strokeWeight (1);
stroke (0, 2, 10);
bezier (278, 270, 303, 305, 255, 400, 268, 400);
bezier (280, 260, 292, 275, 265, 400, 268, 400);
bezier (265, 260, 315, 280, 238, 400, 275, 400);
