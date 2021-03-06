
/*
Konkuk University
SOS iDesign

Name: Song YoungJun
ID: songyj11

*/

PImage img;

void setup(){
background (248, 234, 187);
size (600, 600);
// noLoop();
smooth();
colorMode (RGB, 600);
//img = loadImage ("Report.jpg"); // put the image in the same folder as the processing file
}

void draw(){
println(mouseX + " : " + mouseY);
//image (img, 0, 0);
// here you add your code with all shapes and colors.
//point
point (162, 42);

//bezier
stroke (500, 352, 308);
noFill();
bezier (126, 187, 101, 156, 150, 111, 175, 142);
bezier (175, 142, 156, 121, 200, 86, 219, 107);
bezier (219, 107, 207, 89, 247, 52, 259, 70);
bezier (259, 70, 254, 61, 274, 45, 279, 54);
bezier (315, 0, 315, 40, 387, 40, 387, 0); 
bezier (558, 0, 558, 7, 586, 7, 586, 0);

//Only Line
stroke (0);
strokeWeight (1);
line (62, 112, 176, 59); //Weight 1
line (98, 424, 189, 331); //Weight 1
line (110, 431, 230, 304); //Weight 1
line (120, 495, 249, 363); //Weight 1
line (195, 0, 243, 18);
line (214, 0, 243, 18);


strokeWeight (2);
line (63, 117, 185, 60); //Weight 2
line (103, 426, 207, 320); //Weight 2
line (117, 490, 245, 360); //Weight 2
line (124, 499, 255, 366); //Weight 2
line (154, 130, 280, 28); //Weight 2
line (118, 187, 290, 32); //Weight 2
line (0, 155, 51, 100); //Weight 2
line (51, 100, 60, 108); //Weight 2
line (60, 108, 0, 177); //Weight 2

strokeWeight (3);
line (148, 320, 146, 600); //Weight 3
line (0, 352, 451, 358); //Weight 3
line (53, 145, 247, 44); //Weight 3
line (0, 152, 165, 293); //Weight 3
line (0, 444, 46, 444);
line (0, 468, 45, 466);
line (541, 91, 536, 227);
line (568, 91, 563, 227);
line (592, 91, 590, 227);
line (496, 129, 600, 129);
line (492, 155, 600, 155);
line (492, 184, 600, 184);

strokeWeight (4);
line (109, 0, 0, 385); //Weight 4
line (187, 146, 282, 77); //Weight 4
line (200, 0, 242, 142); //Weight 4

strokeWeight (5);
line (248, 262, 453, 472); //Weight 5

//Shape
strokeWeight(1);
fill(587, 564, 519);
ellipse (37, 61, 82, 82);
stroke(0);
strokeWeight(6);
ellipse (37, 61, 48, 48); //StrokeWeight 6

fill (0);
noStroke();
quad (51, 102, 58, 108, 48, 120, 41, 114);
quad (31, 125, 38, 134, 27, 144, 19, 135);
triangle (0, 156, 12, 162, 0, 175);

fill (mouseX, 263, 183);
quad (29, 208, 148, 53, 326, 159, 150, 64);

fill (331, mouseX/3, mouseY/3);
stroke(0);
strokeWeight(3);
rectMode(CORNERS);
rect (507, 510, 544, 544);

line (527, 524, 557, 522); //Weight 2
line (525, 531, 557, 528); //Weight 2, rectMode~528); is Set

noStroke();
fill (322, 223, 315);
ellipse (327, 428, 64, 64);

fill (282, 289, 190);
ellipse (459, 484, 108, 108);

fill (512, mouseY, 0);
triangle (452, 360, 380, 437, 477, 467);

stroke(0);
strokeWeight (2);
line (245, 425, 426, 427); //Weight 2
line (300, 512, 438, 511); //Weight 2
strokeWeight (4);
line (271, 249, 365, 552); //Weight 4

noStroke();
fill (0);
quad (0, 272, 171, 243, 170, 250, 0, 280);

fill (268, 52, 42);
quad (0, 298, 128, 264, 131, 266, 0, 303);

fill (592, 423, 388);
rectMode(CORNER);
rect (269, 0, 65, 46);

fill (19, 129, 310);
ellipse (393, 163, 70, 70);

stroke(475, 160, 63);
strokeWeight(2);
fill (465, 385, 327);
ellipse (493, 32, 52, 52);

noStroke();
fill (0);
quad (452, 50, 468, 74, 490, 57, 478, 34);
quad (474, 85, 485, 103, 509, 86, 498, 69);
quad (530, 9, 545, 0, 554, 16, 539, 24);

stroke(0);
strokeWeight(3);
rectMode (CORNERS);
fill (519, 491, 435);
rect (540, 131, 565, 157);
rect (565, 157, 592, 184);

fill (557, 169, 59);
rect (565, 131, 592, 156);

fill (531, 416, 310);
rect (540, 157, 564, 184);

fill (0);
quad (335, 204, 335, 209, 563, 280, 565, 275);

strokeWeight (2);
fill (578, 538, 475);
ellipse (151, 20, 30, 30);

//long rectangle
fill(0);
quad (364, 194, 368, 200, 561, 59, 556, 52);
quad (98, 387, 100, 392, 85, 403, 82, 398);
quad (121, 379, 119, 375, 98, 387, 100, 392);
quad (251, 286, 247, 280, 213, 306, 215, 310);

fill (585, 559, 508);
quad (213, 306, 215, 310, 121, 379, 119, 375);

fill (557, 169, 59);
quad (364, 194, 368, 200, 251, 286, 247, 280);

//dart triangle
noStroke();
fill (600-mouseX, mouseY, 33);
triangle (240, 144, 76, 251, 270, 250);

fill (176, mouseX, 600-mouseY);
quad (240, 144, 257, 133, 331, 251, 270, 250);

fill (mouseX/2+mouseY/2);
ellipse (232, 194, 70, 70);

fill (578, 538, 475);
ellipse (232, 194, 52, 52);

fill (mouseX/2+mouseY/2);
ellipse (238, 191, 8, 8);

//dart
fill (430, 385, 320);
quad (164, 156, 160, 170, 181, 174, 182, 165);
fill (600);
quad (181, 174, 182, 165, 188, 167, 186, 175);
fill (557, 169, 59);
triangle (188, 167, 186, 175, 225, 185);

fill (0);
quad (301, 111, 307, 118, 285, 142, 281, 137);
fill (600);
quad (285, 142, 281, 137, 277, 141, 282, 145);
fill (557, 169, 59);
quad (277, 142, 282, 145, 266, 158, 265, 155);
triangle (258, 161, 259, 164, 244, 179);
fill (600);
quad (265, 155, 266, 158, 259, 164, 258, 161);

fill (512, 376, 0);
quad (337, 312, 347, 302, 287, 242, 281, 246);
fill (0);
quad (287, 242, 281, 246, 272, 235, 279, 231);
fill (600);
quad (272, 235, 279, 231, 262, 213, 257, 216);
fill (557, 169, 59);
triangle (262, 213, 257, 216, 249, 201);

//check board pattern
stroke(0);
strokeWeight (2);
fill (578, 538, 475);
line (304, 100, 600, 557);
quad (304, 100, 343, 161, 382, 134, 346, 73); //backgrond
fill (308, 240, 216);
quad (304, 100, 313, 114, 329, 105, 320, 92);
quad (329, 105, 338, 120, 351, 113, 342, 97);
quad (334, 81, 342, 97, 355, 90, 346, 73);
quad (351, 112, 358, 128, 372, 119, 363, 104);
fill (0);
quad (323, 129, 332, 143, 347, 134, 338, 120);
quad (347, 134, 357, 150, 367, 146, 358, 128);
fill (571, 258, mouseX/2+300);
triangle (357, 149, 367, 144, 496, 360);
triangle (371, 142, 382, 133, 487, 315);

line (293, 14, 315, 0);
line (293, 14, 334, 81);
line (334, 81, 376, 55);
line (303, 30, 369, 0);
line (313, 46, 406, 0);
line (323, 62, 443, 0);
line (325, 0, 382, 93);
line (344, 0, 392, 86);
line (373, 79, 384, 71);
line (382, 92, 465, 39);
fill (308, 240, 216);
quad (303, 30, 313, 46, 326, 40, 318, 22);
quad (349, 8, 357, 22, 379, 12, 369, 0);
quad (379, 12, 392, 25, 420, 10, 406, 0);
fill (0);
quad (307, 5, 318, 22, 335, 14, 325, 0);
quad (326, 40, 337, 56, 355, 47, 345, 30);
quad (323, 62, 334, 81, 347, 72, 337, 56);
fill (571, 258, mouseX/2+300);
quad (376, 55, 384, 71, 496, 0, 487, 0);
triangle (382, 92, 392, 86, 513, 305);

//arc
noFill();
arc (0, 352, 100, 90, 1.5*PI, 2*PI, PIE);
stroke (439, 381, 235);
arc (100, 352, 100, 100, PI, 2*PI, OPEN);
stroke (477, 204, 136);
arc (200, 352, 100, 90, PI, 2*PI, OPEN);
stroke (416, 381, 322);
arc (300, 352, 100, 90, PI, 2.02*PI, OPEN);
stroke (0);
strokeWeight (1);
arc (50, 400, 95, 90, 0.95*PI, 2*PI, OPEN);
arc (150, 402, 100, 90, PI, 2*PI, OPEN);
arc (200, 452, 100, 90, PI, 2.15*PI, OPEN);
arc (245, 520, 100, 95, PI, 2*PI, OPEN);

strokeWeight (3);
stroke (477, 204, 136);
arc (294, 191, 80, 80, 1.33333*PI, 2.33333*PI, OPEN);
stroke (439, 381, 235);
arc (294, 191, 51, 51, 1.33333*PI, 2.33333*PI, OPEN);
noStroke();
fill (0);
arc (294, 191, 23, 23, 1.33333*PI, 2.33333*PI, OPEN);
fill (578, 538, 475);
arc (294, 191, 23, 23, 0.33333*PI, 1.33333*PI, OPEN);




}

