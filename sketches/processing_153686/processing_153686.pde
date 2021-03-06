
int counter;

void setup() {  //setup function called initially, only once
  size(250, 250);
  background(255);  //set background white
  colorMode(HSB);   //set colors to Hue, Saturation, Brightness mode
  counter = 0;
}

void draw() {  //draw function loops 
  counter++;
  noStroke();
  fill(random(255),100,255,50);
  
  if(mousePressed == true) { //add some interaction
    ellipse(mouseX, mouseY, 20, 20);
  }
  else {
    ellipse(width/2, height/2, 80*sin(counter), 80*sin(counter));
  }
}class Slider {

int yPos;
int xStart;
int xEnd;
int value;
int p;

    Slider(int y) {
       yPos = y;
       xStart = 50+iconSize/2;
       xEnd = 350+iconSize/2;
       value =  xStart;
       p = map(value, 0, 100, xStart, xEnd);
      
    }

    void display() {

        setColor(sliderColor);
        
        line(xStart, yPos, xEnd, yPos);
        
        ellipse(value, yPos, 20,20);
        setColor(whiteColor);
        
        p = int(map(value, xStart, xEnd, 0, 100));
        text(p, 440, yPos);
   }

    void changeValue() {
        
    }

}

iconSize = 128;
width = 400 + iconSize;
height = 800 + iconSize;

colorMode(RGB, 256); 
color eventColor = color (200,200,0);
color sliderColor = color (0,0,0);
color iconColor = color(256,256,256);
color whiteColor = color (256,256,256);
color blackColor = color (0,0,0);
color bgColor = color(123,123,123);

color redColor = color(256, 0, 0);
color greenColor = color(0, 256, 0);
color blueColor = color(0, 0, 256);

Slider slider1 = new Slider(height - 70);
Slider slider2 = new Slider(height - 140);
Slider slider3 = new Slider(height - 210);

Slider slider4 = new Slider(height - 310);
Slider slider5 = new Slider(height - 380);
Slider slider6 = new Slider(height - 450);
int whichSlider = 0;

ArrayList<Slider> sliders;

font = loadFont("FFScala.ttf"); 
textFont(font); 
textSize(20);

int step;



void setup() {  
  size(width, height);
  background(123);  
  colorMode(RGB, 256);  
  
  sliders = new ArrayList<Slider>();
  sliders.add(slider1);
  sliders.add(slider2);
  sliders.add(slider3);
  sliders.add(slider4);
  sliders.add(slider5);
  sliders.add(slider6);
  whichSlider = 999;

  
  
  step = 5;
  frameRate(10);
  

}

void draw() {  //draw function loops 
  fill(256);
  
    background(123,123,123);
    
    doIcon(step);
    
    for (n = 0; n < sliders.size(); n++) {
        sliders.get(n).display();
    }  
  
   
   
}

void setColor(color c) {
    fill(c);
    stroke(c);
}


void mousePressed() {
    whichSlider = findSlider(mouseX, mouseY);
}

void mouseDragged() {
    findSlider(mouseX, mouseY);
    if ((whichSlider > -1) && (whichSlider < sliders.size())){sliders.get(whichSlider).value= constrain(mouseX, sliders.get(whichSlider).xStart, sliders.get(whichSlider).xEnd);}
}
   
int findSlider(int mX, int mY) {
whichSlider = 999;
for (d = 0; d < sliders.size(); d++) {
        if(dist(mX, mY, sliders.get(d).value, sliders.get(d).yPos) < 50) {whichSlider = d; break;}
    } 
    return whichSlider;
}    






void doIcon(int s){
    setColor(whiteColor);
    rect(width/2-iconSize/2,height/2-iconSize/2 - 200,iconSize, iconSize);
    setColor(blackColor);
    rect(width/2-iconSize/2-1,height/2-iconSize/2 - 200-1,iconSize+3, iconSize+3);
    
    setColor(whiteColor);
    
    for (y = 1; y <= iconSize; y=y+s){
    
        for (x = 1; x <= iconSize ; x=x+s ){
            iR = (random(sliders.get(3).value)+random(sliders.get(0).value)+ 56);
            iG = (random(sliders.get(4).value)+random(sliders.get(1).value)+ 56);
            iB = (random(sliders.get(5).value)+ random(sliders.get(2).value) +56);
            
            iconColor = color(iR, iG, iB);
            
            setColor(iconColor);
            rect(x + width/2-iconSize/2-1, y + height/2-iconSize/2 - 200-1, s, s);
           
        }  
     
    }   
    
    
    

}
