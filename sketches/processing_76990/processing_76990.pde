
float obamaOH[]   = {51,44,49,46,49,38,50,47,48,45,46,49,44,45,50,48,44,45,47,47,48,47,50,48,45,44,50,49,45,50,50,48,47,51,48,49,53,52,51,49,51,50,51,47,45,51,46,48,51,45};
float romneyOH[]  = {47,42,42,42,46,44,38,41,40,39,42,44,42,44,43,42,46,48,38,44,45,45,44,45,45,46,44,46,45,45,43,47,46,46,44,42,43,44,42,45,43,49,47,48,44,45,42,47,46,42};
float daysOH[]    = {309.0,297.5,281.5,271.0,269.5,267.0,249.5,228.0,225.0,204.0,202.0,199.0,192.0,185.5,185.5,171.5,161.0,156.5,137.0,136.5,118.0,111.0,102.0,87.5,85.0,84.5,80.0,79.5,78.0,59.0,57.0,56.0,55.0,51.5,50.0,50.0,46.0,46.0,43.0,38.5,36.5,33.0,30.5,30.5,30.5,29.0,29.0,27.0,24.5,23.5};
float obamaFL[]   = {51,43,45,42,44,49,47,46,49,50,45,45,45,43,46,41,48,50,45,46,45,45,46,45,48,51,48,47,43,49,50,48,48,49,48,47,49,48,53,51,50,50,46,47,47,49,48,44,46,47,48,47};
float romneyFL[]  = {48,46,45,47,48,41,44,43,42,45,43,47,46,44,45,47,44,46,49,42,41,46,45,48,43,45,47,48,45,46,46,47,44,44,46,48,44,47,44,47,45,46,43,46,49,45,47,51,49,51,49,44};
float daysFL[]    = {309.0,304.0,289.0,287.0,285.0,284.0,270.0,238.0,228.0,206.5,204.0,199.0,195.0,192.0,183.0,172.0,171.5,157.5,156.5,144.0,137.0,120.0,119.0,118.0,111.0,102.0,101.5,84.5,83.0,80.0,74.0,66.0,59.0,57.0,55.0,50.0,50.0,49.0,46.0,46.0,46.0,45.5,38.5,36.5,33.0,32.0,29.0,28.0,27.5,26.0,24.0,22.0};

float time = 0;                  
float speed = 0.05;

float lowestResult;   // lowest  poll result, from both candidates
float highestResult;  // highest poll result, from both candidates
float spread;         // highest result - lowest result


PFont f;


void setup() {
 
    size(800, 400);
    setUpNormalization();
    
    f = createFont("Helvetica", 16, true);
    background(225); 
    noStroke(); 
}

void draw() {
      
   
    time += speed;                   
    
    int index1 = (int)time % obamaFL.length;    // get integer part of "time", keep it in range
    int index2 = (index1 + 1) % obamaFL.length; // next index
    float interp = time - (int)time;       // get fractional part of "time"
    
    
    
    ////////////////   OBAMA
    float obama = obamaFL[index1] + interp * (obamaFL[index2] - obamaFL[index1]);
    obama = normalizePrez(obama);//////??????????
    float ypos = height - obama * 4.; // 100 points in poll, 400 pixels = height
    float xpos = (index1 + interp) / obamaFL.length * width;
 
    fill(0, 0, random(150, 255), 2);
    ellipse(xpos, ypos, ypos/2, ypos/2); 
    
    fill(255, 50); 
    rect( xpos, ypos, 2, 2 );
    triangle( xpos, ypos, 2, 2 , 4 ,4);
    
    ////////////////   ROMNEY
    float romney = romneyFL[index1] + interp * (romneyFL[index2] - romneyFL[index1]);
    romney = normalizePrez(romney);
    ypos = height - romney * 4.; // 100 points in poll, 400 pixels = height
 
    fill(random(150, 255), 0, 0, 2);
    ellipse(xpos, ypos, ypos/2, ypos/2);
    
    fill(255, 50); 
    rect( xpos, ypos, 2, 2 );
    triangle( xpos, ypos, width-2, 0-2 , width ,0);
    
    
    ////////////////    DRAW LABELS
    textFont(f, 14);
    textAlign(CENTER);
    fill(0, 0, 255);
    text("OBAMA", 45, 30);
    fill(255, 0, 0);
    text("ROMNEY", 50, 50);
  
}

float normalizePrez(float _percent) {
  
  return (_percent - lowestResult) / spread * 100.0;
}

void setUpNormalization(){
   
   float lowest = 100.;
   float highest = 0.;
   
   //scan trhough all results, to find lowest and highest
   for(int i = 0; i < obamaFL.length; i++)
   {
       if(obamaFL[i]  < lowest)  lowest  = obamaFL[i];
       if(romneyFL[i] < lowest)  lowest  = romneyFL[i];
       if(obamaFL[i]  > highest) highest = obamaFL[i];
       if(romneyFL[i] > highest) highest = romneyFL[i];
   }
 
   lowestResult  = lowest;
   highestResult = highest;
   spread = highest - lowest;  
}
void mousePressed()
{
   background(225); 

}

