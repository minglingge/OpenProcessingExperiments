
//Variable de couleur
int a;
//Rayon du cercle
int R;
//Centre du cercle
int xc;
int yc;
//angle qui détermine la position de l'arc
float angle1=random(0, PI);
 
 
void setup()
{
 //Epaisseur des traits
  strokeWeight(0.5);
 //Couleur de fond
  background(#51078E);
 //Taille du sketch
  size (400,400);
  //on déclare les variables
  a=(#F282D2);
  R=height-50;
  xc=width/2;
  yc=height/2;
  frameRate(160);
}
void draw()
{
 //Pour adoucir les trait.
   smooth();
  
 //Pour la couleur des arcs.
   fill(a);
  
 //On definit l'arc.
   angle1=(angle1+TWO_PI)%TWO_PI;
    
 //On trace le premier arc.
   arc (xc,yc,R,R,(angle1+frameCount)%TWO_PI,(angle1+frameCount+PI/1000)%TWO_PI);
  
/*fill(0);*/
  
 //On trace le deuxième arc.
   arc (xc,yc,R-100,R-100,(angle1+frameCount)%TWO_PI,(angle1+frameCount+PI/1000)%TWO_PI);
 //On trace le trosiième arc. 
   arc (xc,yc,R-150,R-150,(angle1+frameCount)%TWO_PI,(angle1+frameCount+PI/1000)%TWO_PI);
 
 fill(#F282D2);
 stroke(#F282D2);
 strokeWeight(2);
 triangle(400,400,400,0,200,195); 
 triangle(0,0,400,0,400,400); 
}



