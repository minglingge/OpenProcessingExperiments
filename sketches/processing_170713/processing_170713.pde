
void setup(){
            size(200,200);
       
            }
            //defines the function
   void DrawSquare(int location){
                            fill(255);
                         
                            rect(location,location,width/4,height/4);
                    }
 void DrawOtherSquare(int location){
                            fill(255);
                         
                            rect(location,location/13,width/4,height/4);
                    }
                    void DrawAnotherSquare(int location){
                            fill(255);
                         
                            rect(location,location+130,width/4,height/4);
                    }
            void draw(){
           
                //Makes the background change color randomly
            if((dist(width/2,height/2,mouseX,mouseY)<width/2)){//The distance between the center and the mouse and compares it to see if it's less than the radius
               
                background(255,0,0);
                }
                 
                else{
                    background(random(255),random(255),random(255));
                    }
                 //makes the symbol and circle   
                ellipse(100,100,width,height);
                stroke(225);
                line(100,90,140,140);
                line(140,140,140,45);
                line(100,90,60 ,140);
              
line(60,140, 60 ,45);
                line(140,45,100,170);
                line(60,45,100,170);
                line(67,130,131,130);
                //calls the functions
                DrawSquare(10);
                DrawSquare(140);
                DrawOtherSquare(140);
                DrawAnotherSquare(10);
               
                if(mousePressed){
                    fill(0);}
           
                    else if (mousePressed){
                        fill(255);
                        }
                    
                
            
        
                for
                
                    (int y=0;y<500;y+=10){
                        line(0,y,y,0);//Diagnol lines
                
                  
                        }
             

                }
       


       
