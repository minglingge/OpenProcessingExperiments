
int num = 150;
Ellipse e[] = new Ellipse[num];
 
void setup(){
 
    size(650,650,P3D);
    for(int i = 0;i<num;i++)
        e[i] = new Ellipse(width/2,height/2,350,i);
    noFill();//(232);
    noSmooth();
}
 
void draw(){
   background(204,0,51);
    for(int i = 0;i<num;i++)
        e[i].draw();
        text("NISI SAPIENTIA FRUSTRA", 200, 7);
      text("Logarithms", 200, 100);
      text("Decimal Point", 470, 250);
      text("17264", 110, 500);
      text("29%", 500, 510); 
      text("92.3%", 170, 300);
      text("Equality", 340, 550);
      text("Diversity", 150, 400);
      text("JOHN NAPIER", 270, 325);
      text("Learn it", 400, 420);
      text("Live it", 100, 220);
      text("1964", 400, 170);
      text("WITHOUT WISDOM ALL IS IN VAIN", 164, 640);
      textSize(20);
}
 
class Ellipse{
 
    float x,y,z;
    
    float dens = 0.1;
    float r = 100.0;
 
    float rate = 100.0;
    float speed = 0.015;
        int segno;
 
    Ellipse(float _x,float _y,float _z,int _id){
        x=_x;
        y=_y;
        z=_z;
        id=_id;
                segno = (int)random(32);
 
        rot = new PVector(random(-1,1),random(-1,1),random(-1,1));
    }
     
    void follow(){
        x+=(mouseX-x)/(20.0);
         
        y+=(mouseY-y)/(20.0);
    }
 
    void draw(){
        //follow();
         
        rot.add(
                noise((id+frameCount)/rate)*speed,
                noise((id+34.0+frameCount)/rate)*speed,
                noise((id+409.0+frameCount)/rate)*speed
        );
 
        pushMatrix();
        translate(x,y,z);
 
        pushMatrix();
        rotateX(rot.x);
        rotateY(rot.y);
        rotateZ(rot.z);
 
                int cnt = 0;
                 
        beginShape();
        for(float f = -PI;f<PI;f+=dens){
                        float X = cos(f)*r;
            float Y = sin(f)*r;
                                   
   
                        if(abs(cnt-segno)<5){
                         // pushStyle();
                         // fill(255,map(modelZ(X,Y,0),-r,r,0,255));
                         // text("<-"+segno,modelX(X,Y,0),modelY(X,Y,0));
                         // popStyle();
                          stroke(#ffdddd,map(modelZ(X,Y,0),-r,r,1,180-abs(cnt-segno)*30));
                         
                        }else{
                           
                         stroke(#ffffff,map(modelZ(X,Y,0),-r,r,1,60));
                         
                        }
                         
             strokeWeight(map(modelZ(X,Y,0),-r,r,5,5));
             
            vertex(X,Y,0);
                        cnt++;
        }
        endShape(CLOSE);
                 
                 if(frameCount%2==0)
                segno++;
                if(segno>=cnt){
                 segno=0;
                }
/*
                cnt = 0;
                for(float f = -PI;f<PI;f+=dens){
                   if(cnt==segno){
                      stroke(#ff0000,map(modelZ(X,Y,0),-r,r,0,200)); 
                       float X = cos(f)*r;
            float Y = sin(f)*r;
                        strokeWeight(map(modelZ(X,Y,0),-r,r,5,1.8));
                        line(X,Y,lerp(X,0,0.1),lerp(Y,0,0.1));
                        }
                         cnt++;
                }
                */
        popMatrix();
        popMatrix();
 
                 
    }
}
