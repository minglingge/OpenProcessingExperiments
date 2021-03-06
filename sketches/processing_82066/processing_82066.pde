
void setup()
{
  size(1000,800);
  background(#FFEED3, 10);  
}


void draw ()
{
  
  //Création d'une trame d'une seule ligne faite de rectangles
  for(int i = 50; i < 500; i = i+50)
  
  //Créations d'une succession de rotation de rectangles et de ronds en dégradé de gris
  {
    ;
    stroke(250);
    strokeWeight(10);
    fill(250, 50);
    rotate(PI/i);
    ellipse(i+500, i+20, i, i);
    
    fill(i, i);
    rotate(PI/i+150);
    ellipse(i+150, i, i+70, i);
    
    stroke(#0023FC+100, i);
    strokeWeight(6);
    fill(#00AEFC, 50);
    rotate(PI/i+30);
    rect(i+150, i, i+40, i);
    
    stroke(250);
    strokeWeight(10);
    fill(250, 50);
    rotate(PI/i+70);
    ellipse(i+500, i+20, i, i);
    
    fill(#FC9C00+70, i);
    rotate(PI/i);
    rect(i+300, i+60, i, i+20);
    
    fill(i, i);
    rotate(PI/i+20);
    ellipse(i+150, i, i+70, i);
    
    fill(#0023FC+300, 170);
    rotate(PI/i);
    ellipse(i+400, i+100, i, i);
   
  }
  
 noLoop(); 
}


