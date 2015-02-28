

class Ball
{
  int x, y, vx, vy;
  Ball(int start_x, int start_y, int x_vel, int y_vel)
  {
    x = start_x;
    y = start_y;
    vx = x_vel;
    vy = y_vel;
  }
   
  void update()
  {
    // update position with velocity
    x += vx;
    y += vy;
     
    // check for collision on x axis
    if (x <= 0 || x >= width) {
      vx = -vx;
    }
     
    // check for collision on y axis
    if (y <= 0 || y >= height) {
      vy = -vy;
    }
  }
}
 
int enemy_radius;
int ball_radius;
int score;
boolean in_play;
Ball[] enemys;
Ball green_ball;
 
PImage img; 
PImage img2; 
PImage img3; 
PImage img4;

int x =0;
int y = 0;

void setup()
{
  noStroke();
  ellipseMode(RADIUS);
  size(800, 600);
   
  score = 0;
  in_play = true;
  green_ball = generate_ball();
  enemys = new Ball[100];
  enemys[0] = generate_ball();
  frameRate(30);
  img4 = loadImage("haikei.jpg");
   img = loadImage("rabbit.png");
   img2 = loadImage("ninzin.png");
   img3 = loadImage("lion.png");
}
 
void draw()
{
  if (in_play)
  {
    // set background to yellow
    image(img4,0,0);
     
    // draw score
    fill(0);
    textSize(30);
    text("Score: " + score, 20, 40);
     
    // draw red ball at mouse position mapping x coordinate to size
    //                                         y coodrinate to transparency
    if( keyPressed && keyCode == RIGHT ) { 
    x += 5; 
  }
if( keyPressed && keyCode == LEFT ) { 
  x -= 5;
}
 if( keyPressed && keyCode == DOWN ) { 
    y += 5; 
  }
if( keyPressed && keyCode == UP ) { 
  y -= 5;
}
    image(img,x, y,90,90);
     
    // enemys size is inversed to mouseX
    enemy_radius = (int) map(x, 0, width, 40, 15);
     
    // draw and update green ball
    fill(0, 255, 0);
    image(img2,green_ball.x, green_ball.y, 80,80);
    green_ball.update();
     
    // draw and update enemys
    fill(0, 0, 255);
    for (int i = 0; i < score + 1; i++)
    {
      enemys[i].update();
      image(img3,enemys[i].x, enemys[i].y, 100,100);
       
      // check for collision between emeys and red ball
      if (dist(x, y, enemys[i].x, enemys[i].y) < (ball_radius + enemy_radius) * 0.9)
      {
        in_play = false;
      }
    }
     
    // check for collision between red ball
    if (dist(x, y, green_ball.x, green_ball.y) < ball_radius + enemy_radius)
    {
      score++;
      enemys[score] = generate_ball();
      green_ball = generate_ball();
    }
  }
  else
  {
    fill(0);
    textSize(70);
    text("GAME OVER!!!", width / 2 - 230, height / 2);
  }
}
 
Ball generate_ball()
{
  int x, y, vx, vy;
   
  // make sure that new ball is far from red ball
  do
  {
    x = (int) random(width);
    y = (int) random(height);
  } while (dist(mouseX, mouseY, x, y) < ball_radius + enemy_radius + 50);
  vx = (int) random(4);
  vy = (int) random(4);
  return new Ball(x, y, vx, vy);
}
 
void mousePressed()
{
  setup();
}


