

float rotacion;
float posx;
float posy;
XMLElement xmlAscd;
String urlAscd;
int indice;
float offset;
float angle;
int numero;
// -----------------------------------------
// Método setup de la composición
// -----------------------------------------
void setup()
{
  size(600,600);
  background(255);
  smooth();
  frameRate(30);

urlAscd = "http://asociacioncolombianadediseno.wordpress.com/feed/";
xmlAscd = new XMLElement(this,urlAscd);

  angle += posx;
 indice =indice+1;
}

// -----------------------------------------
// Método setup de la composición
// -----------------------------------------
void draw()
{
  // URL de consulta del API de flickr
  
 int numero = (int)random(2);
String urlAscd = "http://asociacioncolombianadediseno.wordpress.com/feed/";
 XMLElement xmlAscd = new XMLElement(this,urlAscd);

  // Busco los elementos que necesito
  XMLElement[] xmlItems = xmlAscd.getChildren("channel/item");

  // Extraigo la información del elemento que necesito y la dejo en variables

String title= xmlItems[numero].getChild ("title").getContent();

XMLElement[] xmlImagenes = xmlItems[numero].getChildren ("media:content");

String imagen = "";
if(xmlImagenes.length > 1)
imagen= xmlImagenes[1].getString("url");

println (imagen);

 

 
 
  
fill(0,200);
rect(20,240,540,40);


//translate(posx, posy);
   PImage imagen2= loadImage (imagen);
   if(imagen2 != null)
  image(imagen2,posx,posy,250,250);
 float offsetTarget = map(mouseX, 0, width, width/2 - width/2, 0);
  offset += (offsetTarget-offset)*0.05; 
  tint(255, 153);
   
 text("ascd", posx, posy);

{
    posx = random(10,width );
posy = random(10,height);

PFont f= loadFont ("Silom-14.vlw");
textFont(f,15);
fill(0);



 if (posx >=width-200){
     posx=0;


 } 
  if (posy >=height-200){

     posy=0;

 } 
} 
fill(255);

 translate(100,100);
text(title,0,165);
noStroke();

}

