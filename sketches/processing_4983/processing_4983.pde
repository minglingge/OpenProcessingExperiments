
// comments 
size(320, 480); 
background (255); 
scale(.5);
translate(20,230);
 
smooth(); 
noFill(); 
 
//Head 
quad(356, 22, 565, 113, 565, 140, 353, 57); 
quad(219, 74, 339, 58, 189, 505, 132, 394); 
quad(346, 64, 594, 162, 426, 505, 196, 508); 
quad(344, 59, 599, 159, 429, 508, 192, 511); 
triangle( 240, 67, 345, 20, 341, 53); 
 
//Face (top down) 
line(339, 85, 538, 160); 
quad(538, 160, 486, 271, 486, 245, 527, 156); 
 
//left eye 
quad(315, 158, 358, 170, 345, 209, 301, 199); 
quad(315, 167, 352, 177, 342, 206, 305, 197); 
//line(350, 181, 310, 184); 
 
//Right eye 
quad(445, 197, 478, 207, 466, 238, 434, 230); 
line(442, 206, 469, 227); 
 
//Nose 
line(432, 190, 426, 222); 
line(426, 222, 427, 334); 
line(383, 175, 384, 330); 
line(384, 330, 427, 334); 
line(364, 219, 368, 348); 
quad(382, 333, 425, 337, 413, 352, 368, 348); 
 
//Mouth 
quad(290, 384, 444, 397, 428, 437, 273, 430); 
line(275, 426, 425, 433); 
line(425, 433, 439, 397); 
fill(255); 
quad(278, 417, 431, 414, 435, 417, 277, 421); 
 
//Cheek/Jaw 
line(486, 245, 484, 375); 
line(484, 375, 426, 494); 
line(426, 494, 214, 496); 
line(214, 496, 263, 350); 
line(263, 350, 263, 312); 
 
//Ear 
strokeWeight(10); 
bezier(199, 89, 280, 56, 210, 400, 150, 325); 
strokeWeight(1); 
line(169, 82, 223, 102); 
line(125, 310, 177, 327); 
noFill(); 
bezier(169, 82, 220, 82, 170, 340, 125, 310); 
bezier(180, 87, 230, 82, 180, 340, 137, 314); 
bezier(169, 82, 58, 100, 48, 280, 125, 310); 
 
//Antenna 
quad(198, 13, 208, 18, 191, 91, 180, 86); 
 
//Neck 
quad(180, 496, 193, 519, 193, 554, 180, 530); 
quad(200, 518, 276, 515, 276, 537, 200, 555); 
quad(201, 563, 276, 545, 276, 564, 201, 584); 
quad(180, 540, 192, 562, 192, 579, 180, 558); 
 
//Chest 
quad(96, 689, 419, 584, 434, 747, 97, 747); 
 
//Right SHoulder 
strokeWeight(8); 
bezier(35, 549, 60, 493, 97, 664, 88, 747); 
strokeWeight(1); 
line(96, 679, 213, 641); 
line(60, 535, 161, 510); 
bezier(96, 679, 95, 610, 75, 550, 60, 535); 
fill(255); 
bezier(161, 510, 180, 516, 205, 574, 213, 641); 
bezier(35, 553, 0, 556, 2, 574, 2, 747); 
 
//Left Shoulder 
bezier(276, 537, 300, 545, 300, 574, 299, 589); 
line(320, 608, 415, 577); 
noFill(); 
bezier(276, 515, 304, 514, 329, 559, 320, 608); 
line(299, 589, 320, 608); 
line(276, 515, 388, 513); 
bezier(388, 513, 403, 524, 414, 549, 415, 577); 
 


