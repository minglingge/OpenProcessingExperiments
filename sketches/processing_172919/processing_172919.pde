
 /*
 Autor: Joan Soler-Adillon (www.joan.cat)
 Tutorial de Processing
 2012
 */


//cramos un objeto
int numBalls = 20;
follower[] f = new follower[numBalls];

void setup(){
  size(300,200);
  //instanciamos el objeto en medio de la pantalla, con velocidades 40 y tamaÃ±o 20
  //f = new follower(width/2,height/2,40,40,20); 
  for( int i = 0; i< numBalls ; i++ ) {
    f[i] = new follower(random(0,width),random(0,height),random(10,50),random(10,50),i);
  }
  noStroke();
}

void draw(){
  //fondo con alfa
  fill(255,255,0,2);
  rect(0,0,width,height);
  //ejecutamos el objeto
  for( int i = 0; i< numBalls ; i++ ) {
    f[i].run();
  }
}

///////////////////////////////////////
///////////////////////////////////////
//Classe follower
class follower{
  //variables
  float myX, myY, vx, vy;
  int sz; 
  //constructor
  follower(float _x, float _y, float _vx, float _vy, int _sz){
    myX = _x;
    myY = _y;
    vx = _vx;
    vy = _vy;
    sz = _sz;
  }
  //funciÃ³n run (la que invocamos des del draw)
  void run(){
    update();
    drawing();
  }
  //actualizaciÃ³n (de posiciones, aquÃ­)
  void update(){
    //calculamos la distancia entre mouse i bola
    float distanceX = mouseX-myX;
    float distanceY = mouseY-myY;
 

    // actualizamos posiciÃ³n a lo tortuga de zenÃ³n
    myX += distanceX/vx;
    myY += distanceY/vy;
  }

  //dibujo
  void drawing(){
    fill(0,16);
    ellipse(myX,myY,sz,sz);
  }

}





