
PImage board;
PImage hand;
boolean mode;
String [] answers= {"Can you go away?", "I guess so..?", "Can we talk about this later? I want to take a nap.",  "Don't ask me!", "EW.", "Get lost!", "I don't care.", "I don't give a shit.", "LOL!", "No.", "Whatever.", "Why are you asking me?", "Why are you like this?", "Yes!"};

void setup() {
  mode = false;
  size (1430,805);
  board = loadImage("ouijaboard.jpg");
  hand = loadImage("hands.png");
}


void draw() {
    background(board);
    image(hand, mouseX-760, mouseY-57);
    if(mode==false){
    }
  
    else{
      textSize(50);
      textAlign(CENTER);
      fill(255);
      text(answers[int(random(0,14))], width/2, 75);
      noLoop();
    }
}

    void mouseClicked(){
      mode= !mode;
    }
      
      
    void keyPressed(){
      if(keyCode == ' ' ){
    reset();
    }
}
 
  void reset() {
  mode = false;
  size (1430,805);
  board = loadImage("ouijaboard.jpg");
  hand = loadImage("hands.png");
  loop();
}
 
    
