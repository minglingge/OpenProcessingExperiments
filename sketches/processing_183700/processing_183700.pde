
int  count =2;
Circular[] circular = new Circular [count];
PVector[] vectors = new PVector[count];
void setup (){
  

size(800,600);
ellipseMode( CENTER);
 

for (int index =0; index <count;index++){

  circular[index]=new Circular(100,new PVector(450,250));
 circular[index].id=index;
}
background(0);

}

void draw(){
//background(0);



for (int index =0; index <count;index++) 
{
   vectors[0] = new PVector(circular[0].pos.x,circular[0].pos.y);
  vectors[1] = new PVector(circular[0].pos2.x,circular[0].pos2.y);
/*  vectors[2] = new PVector(circular[1].pos2.x,circular[1].pos2.y);
  vectors[3] = new PVector(circular[2].pos2.x,circular[2].pos2.y);
  vectors[4] = new PVector(circular[3].pos2.x,circular[3].pos2.y);*/
  
  circular[0].s =200;
  circular[1].s=100;
  
  circular[0]. t-=radians( 0.0811);
  circular[1]. t+=radians( 0.09);
  
   circular[0].r2 =-50;
  circular[1].r2=70;
/*  circular[2]. t-=0.004811;
  circular[3]. t+=0.00211;
  circular[4]. t-=0.00311;*/
circular[index].postmp2.x= vectors[index].x  ;
circular[index].postmp2.y= vectors[index].y;  
if(index>0)
circular[index].pos.x= vectors[index].x  ;
if(index>0)
circular[index].pos.y= vectors[index].y;  

circular[index].update();
}
for (int index =0; index <count;index++)
circular[index].draw();


}
class Circular{
  PVector pos = new PVector(0,0);
  PVector pos2 = new PVector(0,0);
  PVector postmp2= new PVector(0,0);
  int id;
  
  float r=100+id*100,t,r2,s;

Circular(int r,PVector postmp){pos.x=postmp.x;pos.y=postmp.y;}
void draw(){stroke((1+id)*80,millis()/10,250-millis()/50,8); noFill(); 
r=s+id*25;
//ellipse(pos.x,pos.y,r,r); 

if (id>0)line(pos.x,pos.y,pos2.x,pos2.y);
//ellipse(pos2.x,pos2.y,1,1); 
}
  void update(){

  

pos2.x=postmp2.x+((r2)+r/2)*cos(t);
pos2.y=postmp2.y+((r2)+r/2)*sin(t); 
  

}}
