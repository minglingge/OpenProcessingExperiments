


//by Frederick van Amstel - usabilidoido.com.br
//Made with code from jacquelyn london and avogatro
  
//global var and constant
int fieldSize = 1000;
int cellSize = 6;
int pauseclick = 0;
int posX = fieldSize/2;
int posY = fieldSize/2;
boolean stoped= false;
boolean lines= false;
float hypA = 10;//  hyperbel radius A
float hypB = 15;//  hyperbel radius B
  
boolean [][][] field;
int bit24 = int(pow(2,24));
int bit16 = int (pow(2,16));
int bit8 = int(pow(2,8));
PGraphics pg; //create the off-screen graphics

void setup(){
  size(1000,1000);
  pg = createGraphics(fieldSize,fieldSize, JAVA2D);
  pg.beginDraw();
  // change color mode: default RGB
  pg.colorMode(HSB,360,360,10);
  pg.smooth();
  pg.endDraw();
  
  field = new boolean[fieldSize][fieldSize][3];
  for (int b=0;b<fieldSize;b++){
    for (int a=0;a<fieldSize;a++){
      //first 2 field is status for tested or not
      field[b][a][0]=false;
      field[b][a][1]=false;
      //chance to generate 2 branches at one time
      //in hyperbel area , there is more chance 
      if ((b*b/hypA/hypA-a*a/hypB/hypB<5)||(random(200)>0.5)) //random=raduis of bush
        field[b][a][2]=false;
      else
        field[b][a][2]=true;
    }
  }
  background(255);
  field[mouseX][mouseY][0]=true;
  field[mouseX][mouseY][1]=false;
}

void draw(){
  pg.beginDraw();
  // change size according to mouse speed
  cellSize = (abs(mouseX-pmouseX) + abs(mouseY-pmouseY))/5;
  if (cellSize <= 0) {
    cellSize = 1;
  } else if (cellSize > 10) {
    cellSize = 10;
  }
  int new_point_counter=0;
  //change color
  pg.stroke(mouseX,mouseY,mouseX,frameCount%(fieldSize));
  pg.fill(3,3,3,frameCount%(fieldSize/2));
  if (stoped == true){
    pg.fill(0);
  }else{
    //create data for draw
    // for every drawed point search randomly 1 or 2 branches, which are neighbors of the origin. 
    for (int b=0;b<fieldSize;b++){
      for (int a=0;a<fieldSize;a++){
        if ((field[b][a][0]==true)&&(field[b][a][1]==false)){
  
          float angle = random(0,TWO_PI);
          if ((b+round(sin(angle))<fieldSize)&& (a+round(cos(angle))<fieldSize)&&(b+round(sin(angle))>=0)&&((a+round(cos(angle)))>0)){
            if (field[b+round(sin(angle))][a+round(cos(angle))][0]==false){
              field[b+round(sin(angle))][a+round(cos(angle))][1] = true;
              field[b][a][1]=true;
              new_point_counter++;
            }
          }
          //additional chance to create second branche
          if (!field[b][a][2]){
            field[b][a][2]=true;
            field[b][a][1]=true;
            angle = random(0,TWO_PI);
            if ((b+round(sin(angle))<fieldSize)&& (a+round(cos(angle))<fieldSize)&&(b+round(sin(angle))>=0)&&((a+round(cos(angle)))>0)){
              if (field[b+round(sin(angle))][a+round(cos(angle))][0]==false){
                field[b+round(sin(angle))][a+round(cos(angle))][1] = true;
                field[b][a][1]=true;
                new_point_counter++;
              }
            }
          }
  
        }
      }
    }
    // draw new points
    if (new_point_counter>0){
      for (int b=0;b<fieldSize;b++){
        for (int a=0;a<fieldSize;a++){
          if ((field[b][a][0]==false)&&(field[b][a][1]==true)){
            field[b][a][1]=false;
            field[b][a][0]=true;
            pg.ellipse(b,a,cellSize,cellSize);
            posX = b;
            posY = a;
          }
        }
      }
    }
  }
  pg.endDraw();
  image(pg,0,0);
}

void keyPressed () {
  if(key == ' ' & pauseclick == 0) {
    stoped = true; 
    pauseclick = 1;
  } else {
    pauseclick = 0;
    stoped = false;
  }
  if (key == 'r' || key == 'R') {
    background(255);
    // doesn' work in Javascript mode
    pg.clear();
    stoped = true;
  }
  if (key == 's' || key == 'S') {
    pg.save("coral_reefs"+posX+posY+".png");
    stoped = true;
  }
  if (key == 'l' || key == 'L') {
    if (lines == false){
      lines = true;
    } else { lines = false; }
  }
}

void mouseReleased() {
  if (lines == true){
    //line(mouseX, mouseY, posX, posY);
    pg.beginDraw();
    pg.noFill();
    pg.stroke(mouseX,mouseY,mouseX,20);
    pg.curve(mouseX+200, mouseY+200, mouseX, mouseY, posX, posY, tan(posX), tan(posY));
    pg.endDraw();
  }
  for (int b=0;b<fieldSize;b++){
    for (int a=0;a<fieldSize;a++){
      //first 2 field is status for tested or not
      field[b][a][0]=false;
      field[b][a][1]=false;
      //chance to generate 2 branches at one time
      //in hyperbel area , there is more chance 
      if ((b*b/hypA/hypA-a*a/hypB/hypB<5)||(random(1)>0.5))
        field[b][a][2]=false;
      else
        field[b][a][2]=true;
    }
  }
  field[mouseX][mouseY][0]=true;
  field[mouseX][mouseY][1]=false;
  stoped = false;
  pauseclick = 0;
  frameCount=0;
} 
