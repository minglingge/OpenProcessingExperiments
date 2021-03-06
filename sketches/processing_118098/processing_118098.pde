
import pitaru.sonia_v2_9.*;

PImage[] stars = new PImage[4]; //initialization of image array
PFont whoa;

Guy guy; 
Enviro enviro;
Flower flower;
Timer timer;
Rain[] rains;

int imageIndex = 0;


void setup() 
{
  size (400, 400);
  smooth();
  noStroke();
  noLoop();
  frameRate(25);
  Sonia.start(this);
  
  raindrops = new Sample("rain.wav");
  woo = new Sample("wow.wav");

  timer = new Timer(3000);  // every 1.5 seconds, lightning strikes
  timer.start();        // start the timer

  enviro = new Enviro();
  guy = new Guy();
  flower = new Flower();
  rains = new Rain[1000];

  whoa = loadFont ("LucidaHandwriting-Italic-48.vlw");
  textFont(whoa,30);

  for (int i =0; i < stars.length; i++) {         //loading images by name and number into array IN SETUP
    stars[i] = loadImage("Stars" + i + ".jpg");
  }
}

void draw() 
{

  background (backRGB);  //changing blue background
  stroke(255);
  
  enviro.display();
}

color backRGB = color (0, 0, 255);    //background color and initializing for sun drawing
int sunX = 0;
int sunY = 0;
int sunSpeed = 5;

boolean cloud = false;

Sample woo;
Sample raindrops;

class Enviro {

  void display() {
    
    enviro.grass();

    if (cloud) {    // if the clouds are present do the following
      image(stars[imageIndex], 0, 0);   //display stars at 0,0 IN DRAW
      imageIndex = (imageIndex + 1) % stars.length;      //increment and restart when array is finished
      
      if (key == 'r') {  //array of rain drops falling from clouds
       
        raindrops.play();
          
        rains[totalRain] = new Rain();    //initialization and incrementation
        totalRain++;

        if (totalRain >= rains.length) {    //restarting the array after all variables passed through
          totalRain = 0;
        }

        for (int i=0; i  < totalRain; i++) {   //let's see that rain
          rains[i].display();
          rains[i].move();
        }
      }

      if (timer.isFinished()) {            // lets see some lightning
        enviro.lightning();
        timer.start();
      }
      enviro.grass();
      enviro.clouds();                    // that other good stuff
      guy.display();
      guy.mouth();
    }
    else {        //do the other stuff if no clouds
      enviro.bouncingSun();
      flower.display();
      guy.display();
      guy.mouth();
      if (key == 'f') {       //if f is pressed, guy will pop up on the side dependent on the timer

        woo.play();

        if (timer.halfFinished()) {
          stroke(255);
          rotate(radians(45));
          guy.display();
          guy.mouth();
        }
        if (timer.isFinished()) {
          stroke(255);
          translate(280, 120);
          rotate(radians(-90));
          guy.display();
          guy.mouth();
        }
      }
    }
  }

  void grass()
  {
    stroke(255);
    rectMode(CORNER); //grass
    fill(0, 250, 0);
    rect(0, 320, 400, 80);
  }   

  void clouds()
  {
    stroke(255);        //clouds
    fill(180);
    ellipse(70, 30, 100, 50);
    ellipse(140, 30, 100, 50);
    ellipse(250, 30, 100, 50);
    ellipse(320, 30, 100, 50);
  }

  void bouncingSun()
  {
    stroke(255);
    fill (250, 250, 0);      //sun
    sunX = sunX + sunSpeed;

    if ((sunX > width) || (sunX < 0)) {    //bouncing sun

      sunSpeed = sunSpeed * -1;
      backRGB = backRGB + 60;
    }
    ellipse (sunX, sunY, 180, 180);

    whoasun();
  }

  void whoasun() {
    strokeWeight(3);
    fill((random(0, 255)), (random(0, 255)), (random(0, 255)));
    text("Whoa", sunX - 40, sunY+30);
  }


  void lightning() { 
    int x = (int) random(50, 350); //initialize x start
    int x1 = 50;          //initialize x end
    int y = 55;          //initialize y start
    int y2 = 55;          //initialize y end


    while (y2 < 350 ) {        // loop the line and make it look like lightning!!            
      x1 = (x-50) + (int) random(80);    // the direction of the lines
      stroke (253, 208, 35);
      line (x, y, x1, y2);
      y=y2;   
      y2 += (int) random(50);   
      x = x1;
    }
  }
}

void keyPressed()  //different modes
{
  if (key == ' ') {  //if space is pressed, loop !!
    loop();
  } 
  else if (key == 'c') {  //if c is pressed, draw the cloud mode
    cloud = !cloud;
    redraw();
  }
}

int[] flowers = new int[20];

class Flower {
  
  
  void display() {
    
    //random flowers
    for (int i = 0; i < flowers.length; i++) {
      flowers[i] = flowers[i];

      int flowersX= (int) random(0, 400);  
      int flowersY= 320;
      int flowerWidth = (int) random (10, 30);
      int flowerHeight = (int) random (10, 30);
      int flowerR = (int) random(255);
      int flowerG = (int) random(255);
      int flowerB = (int) random(255);
      int flowerA = (int) random(100);
      strokeWeight(1);
      line (flowersX, flowersY, flowersX, 290);
      fill(flowerR, flowerG, flowerB);
      ellipse(flowersX, 290, flowerWidth, flowerHeight);
    }
  }
}

class Guy {
  void display() {

    strokeWeight(3);
    line(160, 300, 240, 300); //legs
    line(240, 300, 260, 320); //right
    line(160, 300, 140, 320); //left

    int leftarmX = (int) random(100, 110);  //left arm
    int leftarmY = (int) random(100, 110);
    line(200, 180, 170, 190); 
    line(170, 190, leftarmX, leftarmY);

    int rightarmX = (int) random(300, 310);  //right arm
    int rightarmY = (int) random(100, 110);
    line(200, 180, 230, 190); //right arm
    line(230, 190, rightarmX, rightarmY);

    stroke(255);              //body
    line(200, 150, 200, 300); 

    stroke(255);                  //head
    strokeWeight(3);
    fill(255, 204, 150);              
    ellipse(200, 100, 100, 100);

    stroke(0);                          //eyes
    float eyeR = random(255);
    float eyeG = random(255);
    float eyeB = random(255);
    fill(eyeR, eyeG, eyeB);           
    ellipse(225, 90, 30, 40);
    ellipse(175, 90, 30, 40);
    float eyeR2 = random(255);          //pupils
    float eyeG2 = random(255);
    float eyeB2 = random(255);
    fill(eyeR2, eyeG2, eyeB2);          
    ellipse (175, 90, 10, 10);
    ellipse (225, 90, 10, 10);
  }
void mouth() {
  strokeWeight(3);       //mouth
  line(180, 125, 220, 125);
  fill(250, 0, 0);
  rectMode(CORNER);
  if (mousePressed == true) {    // if LMB then tongue will move randomly
    rect(random(180,210), 125, 10, 15);
  }
}
}
int totalRain = 0;

class Rain {

  float x;        //initialize x position
  float y;        //initialize y position
  float ySpeed;   //initialize drop speed
  color c;        //initialize color
  float r;        //initialize size


  Rain()        //values 
  {
    r = 5;
    x = random (50, 350);
    y = 55;
    ySpeed = random(1, 5);
    c = color(0, 50, 255);
  }

  void move() {          //falling rain and speed 
    y += ySpeed;
  }

  boolean reachedGrass() {

    if (y > 330) {        //if the rain hits the grass then it stops
      return true;
    } 
    else {
      return false;
    }
  }

  void display() {

    fill (c);
    for (int i = 2 ; i < r ; i++) {        //cool raindrops made of multiple circles
      noStroke();
      ellipse(x, y+i*4, i*2, i*2);
    }
  }
}

class Timer {

  int startTime;      // start timer for lightning
  int endTime;       // how long until lightning strikes
  int halfTime;      // half the timer length

  Timer(int tempEndTime) {
    endTime = tempEndTime;
    halfTime = (endTime/2);
  }

  void start() {
    startTime = millis();
  }
  boolean halfFinished() {
    int passedTime = millis() - startTime;
    if (passedTime > halfTime) {
      return true;
    }
    else {
      return false;
    }
  }
  boolean isFinished() {
    int passedTime = millis() - startTime;
    if (passedTime > (endTime-1000)) {
      return true;
    } 
    else {
      return false;
    }
  }
}



