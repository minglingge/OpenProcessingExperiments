
float a;
 int red=70;
int green=35;
int blue=35;

void setup() {
size(600,500);
frameRate(4);
}

void draw() {
background(red,green,blue);

if(blue<250)blue+=2;
if(green<150)green++;

fill(255,255,0);
stroke(255,255,0,255);
ellipse(40,a,50,50);
a=a-6;
if(a<0)  

{a=height;}

if(a<50) {
  noLoop();
  } 


 //*nuvens//*
stroke(255);
fill(255);
ellipse(180,150,100,50);
ellipse(500,70,100,50);
ellipse(100,100,100,50);
ellipse(400,40,100,50);
ellipse(380,180,100,50);
fill(255,90);
stroke(255,90);
ellipse(500,200,100,50);
ellipse(530,50,100,50);

//*montanha//*
fill(0,255,0);


quad(0,300,200,100,600,500,0,500);

//*morro terra//*
fill(140,150,0);
stroke(149,150,0);
quad(288,380,480,380,600,500,288,500);

stroke(0);
//*parede pedra trás//*
fill(90);
quad(200,300,230,295,230,380,200,380);
rect(230,295,5,85);

//*parede pedra frente//*
fill(50);
quad(175,310,205,305,205,385,175,385);
rect(205,305,5,80);

//*teto branco//*
fill(210);
stroke(200);
triangle(215,315,207.5,320,225,315);
//*janela vertical//*
stroke(200,0,0);
line(215,315,215,380);
line(220,315,220,380);
line(230,315,229,380);

//*janela horizontal//*
line(215,315,230,315);
line(215,320,230,320);
line(215,325,230,325);
line(215,330,230,330);
line(215,335,230,335);
line(215,340,230,340);
line(215,345,230,345);
line(215,350,230,350);
line(215,355,230,355);
line(215,360,230,360);
line(215,365,230,365);
line(215,370,230,370);
line(215,375,230,375);

line(207.5,320,215,315);
line(207.5,325,215,320);
line(207.5,330,215,325);
line(207.5,335,215,330);
line(207.5,340,215,335);
line(207.5,345,215,340);
line(207.5,350,215,345);
line(207.5,355,215,350);
line(207.5,360,215,355);
line(207.5,365,215,360);
line(207.5,370,215,365);
line(207.5,375,215,370);
line(207.5,380,215,375);

//*fundo preto//*
stroke(0);
fill(0);
quad(236,325.5,260,328,260,358,236,358);
rect(260,333,13,20);
rect(258,352,15,28);
ellipse(290,380,20,10);
ellipse(290,390,20,10);

//*grade//*
line(289,352,289,380);
line(287,352,287,380);
line(285,352,285,380);
line(283,352,283,380);
line(281,352,281,380);
line(279,352,279,380);
line(277,352,277,380);
line(275,352,275,380);

line(275,352,290,352);
line(275,354,290,354);
line(275,356,290,356);
line(275,358,290,358);
line(275,360,290,360);
line(275,362,290,362);
line(275,364,290,364);
line(275,366,290,366);
line(275,368,290,368);
line(275,370,290,370);
line(275,372,290,372);
line(275,374,290,374);
line(275,376,290,376);
line(275,378,290,378);
line(275,380,290,380);


//*triangulos//*
fill(200);
stroke(0);
triangle(272,355,272,380,283,355);
triangle(265,355,265,380,275,355);
triangle(258,350,258,380,270,350);

stroke(240);
fill(190);
rect(236,320,20,2.5);
quad(236,325.5,260,328,260,330.5,236,328);

quad(235,332,270,330.5,270,335,235,337);
quad(270,330.5,280,332,280,337,270,335);

fill(190);
rect(236,350,15,5);
rect(242,348,15,5);
quad(257,348,290,352.5,290,357.5,257,353);




fill(90);
stroke(0);
rect(230,355,28,25);


//*janelas//*
stroke(240,0,0);
line(240,338,240,349);
line(245,337,245,347);
line(250,337,250,347);
line(255,337,255,347);
line(260,337,260,347);
line(265,337,265,348);
line(270,337,270,348);

//*morro terra//*
fill(140,150,0);
stroke(149,150,0);
quad(0,350,260,380,260,390,0,500);
rect(250,450,40,50);
triangle(150,435,0,500,150,500);
rect(150,450,100,50);



//*pedras//*
fill(50);
ellipse(255,385,20,10);
ellipse(255,395,20,10);
ellipse(245,400,20,10);
ellipse(235,405,20,10);
ellipse(225,410,20,10);
ellipse(215,415,20,10);
ellipse(205,420,20,10);

//*água//*
stroke(255);
line(267,400,250,420);
stroke(255);
line(267,380,267,400);
line(269,380,269,400);
line(272,380,272,400);
line(277,380,277,400);
line(281,380,281,400);
line(285,380,285,400);

stroke(48,139,206);
line(260,380,290,380);
line(260,381,290,382);
line(260,381,290,384);
line(260,381,290,386);
line(280,380,280,400);
line(265,380,265,400);
line(266,380,266,400);
line(268,380,268,400);
line(270,380,270,400);
line(271,380,271,400);
line(273,380,273,400);
line(274,380,274,400);
line(275,380,275,400);
line(276,380,276,400);
line(278,380,278,400);
line(279,380,279,400);
line(282,380,282,400);
line(283,380,283,400);
line(284,380,284,400);
line(286,380,286,400);
line(287,380,287,400);
line(288,380,288,400);


line(260,400,200,418);
line(261,400,201,418);
line(262,400,202,418);
line(263,400,203,418);
line(264,400,204,418);
line(265,400,205,418);
line(266,400,206,418);
line(267,400,207,418);
line(268,400,208,418);
line(269,400,209,418);
line(270,400,210,418);
fill(48,139,206);
quad(270,400,288,400,288,418,210,418);
quad(215,415,290,415,255,450,180,450);

//*pedras cascata//*
fill(50);
stroke(120);
ellipse(168,442,45,20);
ellipse(290,400,20,10);
ellipse(285,410,20,10);
ellipse(280,420,30,10);
ellipse(277,430,30,10);
ellipse(275,440,40,10);
ellipse(269,450,40,10);
ellipse(185,430,35,15);


ellipse(200,420,25,10);

fill(255,90);
ellipse(230,130,100,50);

//*árvores//*
stroke(0);
fill(140,100,0);
rect(150,350,5,30);
rect(140,350,5,30);
rect(130,350,5,30);
rect(120,350,5,30);
rect(110,350,5,30);
rect(100,350,5,30);

rect(80,400,5,30);
rect(70,400,5,30);
rect(60,400,5,30);
rect(50,400,5,30);
rect(40,400,5,30);
rect(30,400,5,30);

rect(150,430,5,30);
rect(140,430,5,30);
rect(130,430,5,30);
rect(120,430,5,30);
rect(110,430,5,30);
rect(100,430,5,30);


//*troncos lado direito//*
rect(300,350,5,30);
rect(310,350,5,30);
rect(320,350,5,30);
rect(330,350,5,30);
rect(340,350,5,30);
rect(350,350,5,30);
rect(360,350,5,30);
rect(370,350,5,30);
rect(380,350,5,30);
rect(390,350,5,30);
rect(400,350,5,30);
rect(410,350,5,30);
rect(420,350,5,30);
rect(430,350,5,30);
rect(440,350,5,30);
rect(450,350,5,30);
rect(460,350,5,30);
rect(470,350,5,30);

rect(305,360,6,30);
rect(315,360,6,30);
rect(325,360,6,30);
rect(335,360,6,30);
rect(345,360,6,30);
rect(355,360,6,30);
rect(365,360,6,30);
rect(375,360,6,30);
rect(385,360,6,30);
rect(395,360,6,30);
rect(405,360,6,30);
rect(415,360,6,30);
rect(425,360,6,30);
rect(435,360,6,30);
rect(445,360,6,30);
rect(455,360,6,30);
rect(465,360,6,30);


rect(305,460,6,30);
rect(315,460,6,30);
rect(325,460,6,30);
rect(335,460,6,30);
rect(345,460,6,30);
rect(355,460,6,30);
rect(365,460,6,30);
rect(375,460,6,30);
rect(385,460,6,30);
rect(395,460,6,30);
rect(405,460,6,30);
rect(415,460,6,30);
rect(425,460,6,30);
rect(435,460,6,30);
rect(445,460,6,30);
rect(455,460,6,30);
rect(465,460,6,30);

//*back//*
rect(105,340,5,30);
rect(115,342,5,30);
rect(125,344,5,30);
rect(135,346,5,30);
rect(145,348,5,30);
rect(155,348,5,30);
rect(165,346,5,30);
rect(175,344,5,30);
rect(185,344,5,30);


//*folhas//*

fill(0,100,0);

ellipse(108,345,15,30);
ellipse(118,345,15,30);
ellipse(128,345,15,30);
ellipse(138,345,15,30);
ellipse(148,345,15,30);
ellipse(158,345,15,30);
ellipse(168,345,15,30);
ellipse(178,345,15,30);
ellipse(188,345,15,30);

//*frente//*
ellipse(153,345,15,25);
ellipse(143,345,15,25);
ellipse(133,345,15,25);
ellipse(123,345,15,25);
ellipse(113,345,15,25);
ellipse(103,345,15,25);

ellipse(83,400,15,25);
ellipse(73,400,15,25);
ellipse(63,400,15,25);
ellipse(53,400,15,25);
ellipse(43,400,15,25);
ellipse(33,400,15,25);

ellipse(103,420,15,30);
ellipse(113,420,15,30);
ellipse(123,420,15,30);
ellipse(133,420,15,30);
ellipse(143,420,15,30);
ellipse(153,420,15,30);
//galhos lado direito//*
ellipse(303,345,15,30);
ellipse(313,345,15,30);
ellipse(323,345,15,30);
ellipse(333,345,15,30);
ellipse(343,345,15,30);
ellipse(353,345,15,30);
ellipse(363,345,15,30);
ellipse(373,345,15,30);
ellipse(383,345,15,30);
ellipse(393,345,15,30);
ellipse(403,345,15,30);
ellipse(413,345,15,30);
ellipse(423,345,15,30);
ellipse(433,345,15,30);
ellipse(443,345,15,30);
ellipse(453,345,15,30);
ellipse(463,345,15,30);
ellipse(473,345,15,30);


//*lado direito triangulos//*
triangle(308,330,302,370,314,370);
triangle(318,330,312,370,324,370);
triangle(328,330,322,370,334,370);
triangle(338,330,332,370,344,370);
triangle(348,330,342,370,354,370);
triangle(358,330,352,370,364,370);
triangle(368,330,362,370,374,370);
triangle(378,330,372,370,384,370);
triangle(388,330,382,370,394,370);
triangle(398,330,392,370,404,370);
triangle(408,330,402,370,414,370);
triangle(418,330,412,370,424,370);
triangle(428,330,422,370,434,370);
triangle(438,330,432,370,444,370);
triangle(448,330,442,370,454,370);
triangle(458,330,452,370,464,370);
triangle(468,330,462,370,474,370);


triangle(308,430,302,470,314,470);
triangle(318,430,312,470,324,470);
triangle(328,430,322,470,334,470);
triangle(338,430,332,470,344,470);
triangle(348,430,342,470,354,470);
triangle(358,430,352,470,364,470);
triangle(368,430,362,470,374,470);
triangle(378,430,372,470,384,470);
triangle(388,430,382,470,394,470);
triangle(398,430,392,470,404,470);
triangle(408,430,402,470,414,470);
triangle(418,430,412,470,424,470);
triangle(428,430,422,470,434,470);
triangle(438,430,432,470,444,470);
triangle(448,430,442,470,454,470);
triangle(458,430,452,470,464,470);
triangle(468,430,462,470,474,470);


fill(255);
stroke(255);
line(267,400,220,420);
line(268,400,221,420);
line(274,400,227,420);
line(280,400,250,420);


//*pássaros//*
if(mouseX < 200) {
    fill(0);
    stroke(0);
    line(200,250,210,255);
    line(210,255,220,250);
    
}
 if(mouseX < 100) {
    fill(0);
    stroke(0);
    line(100,150,110,155);
    line(110,155,120,150);
    
  }
 if(mouseX < 400) {
    fill(0);
    stroke(0);
    line(400,250,410,255);
    line(410,255,420,250);
    
  } 
 
    if(mouseX < 310) {
    fill(0);
    stroke(0);
    line(300,250,310,255);
    line(310,255,320,250);
    
}
}
