
// Credit: Ren Ervin Bettendorf 

/* SCREENSAVERS FER DAYS BROSKIES */
void setup(){
  size(600,500);  
  background(0);
  frameRate(60);
}


// Global Variables

int dx = 7;
int dy = 9;

int x = 50;
int y = 50;

//=================

void draw(){
  
    fill(255);
   
    ellipse(x,y,25,25);
     
    for (int i=0; i<5; i++)
     ellipse(x+i*10, y+i*25, 25, 25);
  
    x = x + dx;
    y = y + dy;
    
    if ( x < 0 || x > 475){
       dx = -1 * dx;
    }
    if ( y < 0 || y > 475){
       dy = -1 * dy;  
    }   
}
