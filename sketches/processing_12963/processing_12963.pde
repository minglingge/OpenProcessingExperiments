
size(200,200);
//눈깔
for(float a=0.1; a<PI*2; a=a+0.1){

  ellipse(50,100,40+40*sin(a),20+20*cos(a));
  ellipse(150,100,40+40*sin(a),20+20*cos(a));
}

//눈
line(0,70,200,70);
line(0,130,200,130);
//입
line(70,160,130,160);   
                