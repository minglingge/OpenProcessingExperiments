
/*
 
Love
jacky@kwancreative.com
June 12,2009
 
*/
 
PFont myFont;
float t = 1;
 
 
void setup() {
  size(400, 200);
  
  myFont = createFont ("Arial", 48);
  textFont(myFont, 50);
  textAlign (0,CENTER);
 
}
  
void draw() {
   
  background(204,104,78);
  t -= 0.010;
  fill(255, 25, 19, 300 * abs(sin(t)) - 130);
  text("I",30,40);
  fill(0, 55, 170, 275 * abs(sin(t + HALF_PI * 0.1)) - 90); 
  text("Love");
  fill(90, 130, 155, 250 * abs(sin(t + HALF_PI* 0.3)) - 90);
  text("You");
  fill(66, 230, 75, 225 * abs(sin(t + HALF_PI* 0.5)) - 90);
  text("Sneha");  
 
} 

