
void setup(){
  frameRate(30);
  size(640,480);
}
//float h=height;//WTF?
//float w=width;//WTF?
float dif = 0;
float centered = 2.08;
float space = 10;
float rZeroX = (640/2)-((space*55)/2);//RECT pointZERO X axis
float rZeroY = (480/2)-((space*19)/2);//RECT pointZERO Y axis
float hmd_n=19;
float hmr_n=55;
float moverX = 0;
float moverY = 0;
float iif[][] = { {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1},
                  
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0},
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0},
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0},
                   
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1},
                   
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0},
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0},
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0},
                  {1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0},
                   
                  {1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1},
                  {1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
                   1,1,1,1,1,1,1,1}}; // IS-IS-FILLED, Row, 0 = Not Filled; 1 = Filled;
float RS = 5; //RECTANGLE SIZE

void draw(){
  background(#D9F7E2);
  rectMode(CENTER);
  
 
  if (key == 'L' && space <= 20|| key == 'l' && space <=20){
      dif=(centered-0.35)/2;
      centered=centered-(dif);
      space += 2;
  }
  if (key == 'I' && space <= 20|| key == 'i' && space <=20){
      dif=(centered-1.43)/2;
      centered=centered-(dif);
      space += 2;
  }
  if (key == 'F' && space <= 20|| key == 'f' && space <=20){
      dif=(centered-2.65)/2;
      centered=centered-(dif);
      space += 2;
  }
  if (key == 'E' && space <= 20|| key == 'e' && space <=20){
      dif=(centered-4)/2;
      centered=centered-(dif);
      space += 2;
  }
  if (key == 'L' && space >= 20|| key == 'l' && space >=20){
      dif=(centered-0.35)/2;
      centered=centered-(dif);
  }
  if (key == 'I' && space >= 20|| key == 'i' && space >=20){
      dif=(centered-1.43)/2;
      centered=centered-(dif);
  }
  if (key == 'F' && space >= 20|| key == 'f' && space >=20){
      dif=(centered-2.65)/2;
      centered=centered-(dif);
  }
  if (key == 'E' && space >= 20|| key == 'e' && space >=20){
      dif=(centered-4)/2;
      centered=centered-(dif);
  }
  if (key == BACKSPACE && space > 10){
      dif=(centered-2.08)/2;
      centered=centered-(dif);
      space -= 2;
  }
  
  fill(255,255,255);
  for(int p=0;p<hmr_n;p++){
    for(int i=0;i<hmd_n;i++){
      if(iif[i][p]==1){
        rZeroX = (640 / 2) - ( (space * (13 * centered)) );                 //////// *4=E ; *2.65=F ; *1.43=I ; *0.35=L ; *2.08 = CENTER
        rZeroY = (480 / 2) - ((space * 19) / 2);
        rect((rZeroX) + (space*p) + (moverX), (rZeroY) + (space*i) + (moverY), RS, RS);
      }
    }
  }

  String s = "Press 'L' to go to L                Press 'I' to go to I                Press 'F' to go to F                Press 'E' to go to E\n                                                             Press 'BackSpace' to go back";
  fill(#8F8CF0);
  text(s, 50, 458);
}

