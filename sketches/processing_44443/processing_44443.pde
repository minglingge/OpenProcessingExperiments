
/////////////////////

PImage sweet, sexual;

String[] searchWords;
String[] raw;
String[][] subs;

int specificWidth = 200;
int fontSize = 10;
int lineSpacing = 10;

//
int maxQuoteLine = 1607;

//////////////////////
int dimX = 1024;
int dimY = 768;
int centerX;
int centerY;
color cloud;
color testo = color(51, 51, 51);
color perc = color(120, 120, 120);
float angleCat;
float rotation = 0;
float regolation;
float regoCostr;
int maxArc = 300;
float posX;
float posY;
int distTex = 170;
PImage back;
PImage title;
PImage cloud1;
PImage cloud2;
PImage cloud3;
PFont catfont;
PFont percfont;

float perc1;
float perc2;
float perc3;
float perc4;
float perc5;
float perc6;
float perc7;
float perc8;

float rot1 = 0;
float rot2 = PI/4;
float rot3 = PI/2;
float rot4 = (PI/4)*3;
float rot5 = PI;
float rot6 = (PI/4)*5;
float rot7 = (PI/2)*3;
float rot8 = (PI/4)*7;



int dim1;
int dim2;
int dim3;
int dim4;
int dim5;
int dim6;
int dim7;
int dim8;

int dimtext = 18;

color cat1 = color(159, 28, 32);
color cat2 = color(237, 28, 36);
color cat3 = color(238, 92, 35);
color cat4 = color(245, 129, 38);
color cat5 = color(79, 141, 202);
color cat6 = color(198, 211, 236);
color cat7 = color(126, 188, 231);
color cat8 = color(130, 211, 239);

void setup () {
  size (dimX, dimY);
  back = loadImage ("backgroundv3.png");
  title = loadImage ("Titlelist.png");
  cloud1 = loadImage ("SweetBridget.png");
  cloud2 = loadImage ("SwearKill.png");
  cloud3 = loadImage ("negativeBridget.png");

  centerX = 0;
  centerY = 0;
  smooth();

  // catfont = loadFont ("Swiss721BT-RomanCondensed-48.vlw");
  percfont = loadFont ("Swiss721BT-BoldCondensed-48.vlw");

  perc1 = 4;
  perc2 = 4;
  perc3 = 5;
  perc4 = 10;
  perc5 = 13;
  perc6 = 38;
  perc7 = 15;
  perc8 = 11;
  
  ///////////////////////
  
    raw = loadStrings("bj.txt");
  
 sweet = loadImage("sweet.jpg");
  //sexual = loadImage("sexual.jpg");
    parseSubs();
  
  ///////////////////////
} 

void draw() {
  background (back);
  imageMode(CENTER);
  image (title, 1450, 105);


  dim1 = int((maxArc/100)*perc1);
  dim2 = int((maxArc/100)*perc2);
  dim3 = int((maxArc/100)*perc3);
  dim4 = int((maxArc/100)*perc4);
  dim5 = int((maxArc/100)*perc5);
  dim6 = int((maxArc/100)*perc6);
  dim7 = int((maxArc/100)*perc7);
  dim8 = int((maxArc/100)*perc8);

  float spostX = dimX/4;
  float spostY = dimY/2;

  pushMatrix();

  //  float spostX = 0;
  //float spostY = 0;

  translate(spostX, spostY);
  rotate(rotation);
  posX = mouseX - spostX;
  posY = mouseY- spostY;
  //  angleCat = PI/2 - atan2(posX, posY) - rotation;
  angleCat = atan2(posX, posY);
  regolation = 2 * (sqrt(sq(posX)+sq(posY)));
  regoCostr = constrain(regolation, 0, 300);
  //  println("X"+posX);
  //  println("Y"+posY);
  //println(degrees(angleCat));
  //    println("regoCostr"+regoCostr);
  //println(cloud);


  noStroke();

  //primo categoria= negative words
  fill (cat1);
  arc(centerX, centerY, dim1, dim1, -PI/8, PI/8);

  textFont (percfont, dimtext);

  pushMatrix();
  rotate(rot1);
  fill(testo);
  text("NEGATIVE", distTex, -2);
  fill(perc);
  text (int(perc1) +"%", distTex, 18);
  popMatrix();

  //seconda categoria = crime w.
  fill (cat2);
  arc(centerX, centerY, dim2, dim2, PI/8, (PI/8)*3);

  pushMatrix();
  rotate(rot2);
  fill(testo);
  text("CRIME", distTex, -2);
  fill(perc);
  text (int(perc2) +"%", distTex, 18);
  popMatrix();

  //terza cat = sex w.
  fill (cat3);
  arc(centerX, centerY, dim3, dim3, (PI/8)*3, (PI/8)*5);

  pushMatrix();
  rotate(rot3);
  fill(testo);
  text("SEX", distTex, -2);
  fill(perc);
  text (int(perc3) +"%", distTex, 18);
  popMatrix();

  // quarta cat = swear w.
  fill (cat4);
  arc(centerX, centerY, dim4, dim4, (PI/8)*5, (PI/8)*7);

  pushMatrix();
  rotate(rot4);
  fill(testo);
  text("SWEAR", distTex, -2);
  fill(perc);
  text (int(perc4) +"%", distTex, 18);
  popMatrix();

  // quinta cat = positive w.
  fill (cat5);
  arc(centerX, centerY, dim5, dim5, (PI/8)*7, (PI/8)*9);

  pushMatrix();
  rotate(rot5);
  fill(testo);
  text("POSITIVE", distTex, -2);
  fill(perc);
  text (int(perc5) +"%", distTex, 18);
  popMatrix();


  // sesta cat = sweet w.
  fill (cat6);
  arc(centerX, centerY, dim6, dim6, (PI/8)*9, (PI/8)*11);

  pushMatrix();
  rotate(rot6);
  fill(testo);
  text("SWEET", distTex, -2);
  fill(perc);
  text (int(perc6) +"%", distTex, 18);
  popMatrix();

  // settima cat. = family w.
  fill (cat7);
  arc(centerX, centerY, dim7, dim7, (PI/8)*11, (PI/8)*13);

  pushMatrix();
  rotate(rot7);
  fill(testo);
  text("FAMILY", distTex, -2);
  fill(perc);
  text (int(perc7) +"%", distTex, 18);
  popMatrix();

  // ottava cat = religious w.
  fill (cat8);
  arc(centerX, centerY, dim8, dim8, (PI/8)*13, (PI/8)*15);

  pushMatrix();
  rotate(rot8);
  fill(testo);
  text("RELIGIOUS", distTex, -2);
  fill(perc);
  text (int(perc8) +"%", distTex, 18);
  popMatrix();

  popMatrix();

  if (angleCat >= PI) {
    angleCat = angleCat - (2*PI);
  }
  if (angleCat <= -PI) {
    angleCat = angleCat + (2*PI);
  }

  imageMode(CORNERS);
  cloud = get(int(spostX+1), int(spostY));
  if (cloud == -4141084) {
    image (cloud1, 600, 110);
  }
  if (cloud == -2060464) {
    image (cloud2, 600, 110);
  }
  if (cloud == -5354160) {
    image (cloud3, 600, 110);
  }
  
  /////////////////////////////////
  
    image(sweet, 70, 720);
  //image(sexual, 10, 120);
  
  if (mouseX > 70 && mouseX < sweet.width &&  720 < mouseY && 720 + sweet.height > mouseY) {

    textSize(fontSize + 4);
    textLeading(lineSpacing);

    int quoteCount = int(map(mouseX, 10, sweet.width + 10, 0, maxQuoteLine));

    String subStr = subs[quoteCount][2];

    pushMatrix();
    translate(mouseX - 10, mouseY - calculateTextHeight(subStr, specificWidth, fontSize, lineSpacing)); 

    fill(255, 0);
    rect(0, 0, specificWidth, calculateTextHeight(subStr, specificWidth, fontSize, lineSpacing) - 20);
    fill(60);
    text(subStr, 2, 2, specificWidth, calculateTextHeight(subStr, specificWidth, fontSize, lineSpacing));
    popMatrix();
  }
}

int calculateTextHeight(String string, int specificWidth, int fontSize, int lineSpacing) {
  String[] wordsArray;
  String tempString = "";
  int numLines = 0;
  float textHeight;

  wordsArray = split(string, "1607 ");

  for (int i=0; i < wordsArray.length; i++) {
    if (textWidth(tempString + wordsArray[i]) < specificWidth) {
      tempString += wordsArray[i] + " ";
    }
    else {
      tempString = wordsArray[i] + " ";
      numLines++;
    }
  }

  numLines++; //adds the last line

  textHeight = numLines * (textDescent() + textAscent() + lineSpacing);
  return(round(textHeight));
  
  /////////////////////////////////
  
}

void mouseDragged() {
  //click = get(mouseX, mouseY); 

  if (angleCat >= -PI/8 + rotation && angleCat< PI/8 + rotation) {
    perc3=((regoCostr)/maxArc)*100;
  }
  if (angleCat >= (PI/8) + rotation && angleCat< (PI/8)*3 + rotation) {
    //   dim2=int(regoCostr);
    perc2=((regoCostr)/maxArc)*100;
  }
  if (angleCat >= (PI/8)*3 + rotation && angleCat< (PI/8)*5 + rotation) {
    //  dim3=int(regoCostr);
    perc1=((regoCostr)/maxArc)*100;
  }
  if (angleCat >= (PI/8)*5 + rotation && angleCat< (PI/8)*7 + rotation) {
    //  dim4=int(regoCostr);
    perc8=((regoCostr)/maxArc)*100;
  }
  if (angleCat >= (PI/8)*7 + rotation && angleCat< PI + rotation || angleCat <= -(PI/8)*7 + rotation && angleCat> -PI + rotation) {
    //  dim5=int(regoCostr);
    perc7=((regoCostr)/maxArc)*100;
  }
  if (angleCat >= -(PI/8)*7 + rotation && angleCat< -(PI/8)*5 + rotation) {
    //  dim6=int(regoCostr);
    perc6=((regoCostr)/maxArc)*100;
  }
  if (angleCat >= -(PI/8)*5 + rotation && angleCat< -(PI/8)*3 + rotation) {
    //  dim6=int(regoCostr);
    perc5=((regoCostr)/maxArc)*100;
  }
  if (angleCat >= -(PI/8)*3 + rotation && angleCat< -(PI/8) + rotation) {
    //  dim6=int(regoCostr);
    perc4=((regoCostr)/maxArc)*100;
  }
}
void mouseClicked() {

  if (angleCat >= -PI/8  && angleCat < PI/8  && regolation > 300 && regolation < 600) {
    rotation = rotation + 3*(PI/2);
  }
  if (angleCat >= (PI/8)  && angleCat< (PI/8)*3  && regolation > 300 && regolation < 600) {
    rotation = rotation + 7*(PI/4);
  }
  if (angleCat >= (PI/8)*3  && angleCat< (PI/8)*5  && regolation > 300 && regolation < 600) {
    rotation = 0;
  }
  if (angleCat >= (PI/8)*5  && angleCat< (PI/8)*7  && regolation > 300 && regolation < 600) {
    rotation = rotation + (PI/4);
  }
  if (angleCat >= (PI/8)*7  && angleCat< PI && regolation > 300 && regolation < 600 ||  angleCat <= -(PI/8)*7  && angleCat> -PI  && regolation > 300 && regolation < 600) {
    rotation = rotation + PI/2;
  }
  if (angleCat >= -(PI/8)*7  && angleCat< -(PI/8)*5  && regolation > 300 && regolation < 600) {
    rotation = rotation + 3*(PI/4);
  }
  if (angleCat >= -(PI/8)*5  && angleCat< -(PI/8)*3  && regolation > 300 && regolation < 600) {
    rotation = rotation + PI;
  }
  if (angleCat >= -(PI/8)*3  && angleCat< -(PI/8)  && regolation > 300 && regolation < 600) {
    rotation = rotation + 5*(PI/4);
  }
}


