
int waardeX;
int waardeY;
int richting;
boolean roel;
int teller;
int achtergrondX;
int achtergrondBreedte;
int achtergrondHoogte;



void setup(){
size(200,200);
waardeX = 80;
waardeY = 90;
richting = 5;
roel = false;
teller = 1;
achtergrondX = 0;
achtergrondBreedte = 200;
achtergrondHoogte = 10;
}
 
 
 
void draw(){ 
background(255);

drawBeweging();
drawAchtergrond();
drawMonstertje();
drawTest();
}

  
   
void drawMonstertje(){
rect(waardeX,waardeY,40,60);        
ellipseMode(CENTER);
ellipse(waardeX+20,waardeY-10,60,40); 
line(waardeX,waardeY+60,waardeX-20,waardeY+85);
line(waardeX+40,waardeY+60,waardeX+60,waardeY+85); 
fill(0);
ellipseMode(CENTER);
ellipse(waardeX,waardeY-10,20,10);
fill(0);
ellipseMode(CENTER);
ellipse(waardeX+40,waardeY-10,20,10);  
}



void drawBeweging(){
waardeX = waardeX + richting;
// Monstertje beweegt naar rechts
waardeX = waardeX + richting;  
// Als monstertje de rand raakt, dan omkeren en wordt er door de teller geteld
  if(waardeX < 0 || waardeX > width){
    richting = - richting;
    println(teller);
    teller = teller + 1;
  }
  
}

void drawAchtergrond(){
// Begin Loop
for(int i = 200; i >= 0; i = i - 10){
rect(achtergrondX,i,achtergrondBreedte,achtergrondHoogte);
}
// Einde Loop

}




void drawTest(){
 
 // Als de teller 10 is, wordt een boolean geactiveerd.  
  if(teller == 10){
    roel = !roel; // -> als true is, wordt false ... als false is, wordt true
    teller = 0;
  }

// Als de boolean aanstaat, dan wordt het monster rood.
  if(roel == true){
    fill(255,0,0);
  }

// Als de boolean uitstaat, dan wordt het monster blauw.
  if(roel == false){
    fill(0,0,255);
  }
   
  
}
   
    
    



