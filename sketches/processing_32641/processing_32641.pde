
void setup(){
  size(400,250);
}

  void draw(){
    println(mouseY);
  if(mouseY < 125){
  background(46,49,146);
  //stripe
  fill(255,255,255);
  rect(180, 0, 400, 20);
  rect(180, 50, 400, 20);
  rect(180, 100, 400, 20);
  rect(0, 150, 400, 20);
  rect(0, 200, 400, 20);
  }else{
  background(255,0,0);
  //stripe
  fill(255,255,255);
  rect(0, 120, 20, 130);
  rect(40, 120, 20, 130);
  rect(80, 120, 20, 130);
  rect(120, 120, 20, 130);
  rect(160, 120, 20, 130);
  rect(200, 0, 20, 250);
  rect(240, 0, 20, 250);
  rect(280, 0, 20, 250);
  rect(320, 0, 20, 250);
  rect(360, 0, 20, 250);
  
  }
println("Charlie is my golden, longhaired sin.");
println("His eyes tell all his dark brown chocolate thoughts.");
println("All he wants is loving without end,");
println("Ravenous for touching of all sorts.");
println("Left on his own, he cannot comprehend");
println("In lonely misery how I defend");
println("Even just one breath away from him.");



//flag
//rect(0, 0, 180, 120);
fill(255,255,255);
//ellipse(90, 60, 80, 80);
rect(80, 0, 20, 120);
rect(0, 50, 180, 20);

//list
fill(251,176,64);
triangle(130, 180, 120, 190, 140, 190);
triangle(380, 180, 370, 190, 390, 190);

//text
fill(255,255,255);
text("Do you know which country it is?",150,190);

}

