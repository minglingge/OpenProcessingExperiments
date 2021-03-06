
// Sketch5-5: Visualizing Time Series (AAPL Stock prices) 
float[] price; 
String [] aqi;
String [] station;
float[] aqidate;
float X1, Y1, X2, Y2, Y50, Y100, Y150, Y200, Y250, Y300;
float minValue, maxPrice, minAQI, maxAQI;
float margin, canvas, yearsNum, yearX, yearXSpace;
PFont font = createFont("Sans-Serif", 12);

void setup() {   
// drawing setup   
size(1200, 400);   
margin = 50;
canvas = width - (margin*2);//1100
yearsNum = 10;
yearX = canvas/yearsNum/2;//55
yearXSpace = canvas/yearsNum;//110

X1 = margin; //for margins and for map function
Y1 = margin;   //for margins and for map function
X2 = width - 50;   //for margins and for map function
Y2 = height - Y1;   //for margins and for map function

smooth();
textFont( font);
// Read the data file...   
String[] lines = loadStrings("Sac-AQI-2004-2014.csv"); 

// How long is the dataset   
price = new float[lines.length];
aqi = new String[lines.length];
station  = new String[lines.length];

// Parse the needed data   
for (int i=0; i<lines.length; i++) { 
  // First split each line using commas as separator     
  String[] pieces = split(lines[i], ",");    
  // get the AQI vale for the day   
  price[i] = float(pieces[3]); 
  aqi[i] = pieces[0]; 
  station[i] = pieces[1]; 
  } 

// determine min and max values 
//minAQI = min(price); 
minAQI = 0; 
minValue = min(price);
maxPrice = max(price);  
maxAQI = 300; 
} // setup()

// Global variables set in drawData() and read in draw()
float closestDist;
String closestText;
String closestText2;
float closestTextX;
float closestTextY;

void draw() {   
background(0);  

  // Use the built-in width and height variables to set the
  // closest distance high so it will be replaced immediately
  closestDist = width*height;
  
stroke(52,52,52);
line(X1, Y2, X2, Y2);
Y50 = map(50, minAQI, maxAQI, Y2, Y1);
Y100 = map(100, minAQI, maxAQI, Y2, Y1);
Y150 = map(150, minAQI, maxAQI, Y2, Y1);
Y200 = map(200, minAQI, maxAQI, Y2, Y1);
Y250 = map(250, minAQI, maxAQI, Y2, Y1);
Y300 = map(300, minAQI, maxAQI, Y2, Y1);
line(X1, Y50, X2, Y50); //Tick line 50
line(X1, Y100, X2, Y100);//Tick line 100
line(X1, Y150, X2, Y150);//Tick line 150
line(X1, Y200, X2, Y200);//Tick line 200
line(X1, Y250, X2, Y250);//Tick line 250
line(X1, Y300, X2, Y300);//Tick line 300
 textAlign(RIGHT); 
  fill(255);
  text("0", X1-20, Y2);
  text("50", X1-20, Y50);
  text("100", X1-20, Y100);
  text("150", X1-20, Y150);
  text("200", X1-20, Y200);
  text("250", X1-20, Y250);
  text("300", X1-20, Y300);
  
//Draw Purple Vertical Line  
fill(124, 44, 125,255);   
//rect(X1-5, Y300, 5,map(100, minAQI, maxAQI, 0, 400));
rect(X1-5, Y300, 5,100);

//Draw Red Vertical Line  
fill( 250, 2, 24,255);
rect(X1-5, Y200, 5,50);

//Draw Orange Vertical Line  
fill( 252, 125, 33,255);
rect(X1-5, Y150, 5,50);

//Draw Yellow Vertical Line  
fill( 253, 238, 33,255);
rect(X1-5, Y100, 5,50);

//Draw Green Vertical Line  
fill( 35, 227, 39,175);
rect(X1-5, Y50, 5,50);

textAlign(CENTER); 
fill(255);
text("2004", X1+yearX, height-20); 
text("2005", X1+yearX+yearXSpace, height-20);
text("2006", X1+270, height-20);
text("2007", X1+375, height-20); 
text("2008", X1+480, height-20); 
text("2009", X1+585, height-20); 
text("2010", X1+690, height-20); 
text("2011", X1+795, height-20); 
text("2012", X1+905, height-20); 
text("2013", X1+1020, height-20); 
//text("2014", X1+yearX+yearXSpace*10, height-20); 


//text("2004", (width/10)-15, height-20); 
//text("2005", ((width/10)-10)*2, height-20); 
//text("2006", ((width/10)-15)*3, height-20); 



drawGraph(station, aqi, price, minAQI, maxAQI);


  // Use global variables set in drawData()
  // to draw text related to closest circle.
  if (closestTextX < 250.5) {
    if (closestDist != width*height) {
      fill(255);
      textAlign(CENTER);
      text(closestText, closestTextX, closestTextY-100);//Date & AQI
      text(closestText2, closestTextX, closestTextY-85);//Station ID
    }
  }
  
} // draw()

void drawGraph(String[] station, String[] aqi, float[] data, float yMin, float yMax) {
  // Drawing attributes for the ellipses. 
 float radius = 2; 
  noStroke( ); 
  for (int i=0; i < data.length; i++) {
    float x = map(i, 0, data.length-1, X1, X2);
    float y = map(data[i], yMin, yMax, Y2, Y1);
    
      if (data[i] <= 0){
        noFill();
      }
      else if (data[i] <= 50){
        fill( 35, 227, 39,175);//Green
      }     
      
      else if ((data[i] >= 51) && (data[i] <= 100))
      {
        fill( 253, 238, 33,255);//Yellow
      } 
      else if ((data[i] >= 101) && (data[i] <= 150))
      {
        fill( 252, 125, 33,255);//Orange
      } 
      else if ((data[i] >= 151) && (data[i] <= 200))
      {
        fill( 250, 2, 24,255);//Red
      } 
      else {
        fill( 124, 44, 125,255);//Purple
      }
      
        ellipse(x,y,radius,radius);
      
   float d = dist(x, y, mouseX, mouseY);
  // Because the following check is done each time a new
  // circle is drawn, we end up with the values of the
  // circle closest to the mouse.
  
  if ((d < radius + 2) && (d < closestDist)) {
    closestDist = d;
    
    closestText = aqi[i] +  " - AQI: " + data[i] + "|: " + closestTextX; 
    closestText2 = "Station ID: " + station[i]; 
    closestTextX = x;
    closestTextY = y-radius-4;   
  }  
        
    }//for loop
  
}//drawGraph



