
//by Josh Z.
squarulator a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r;
squarulator s, t, u, v, w, x, y, z, a1, b1, c1, d1, e1, f1, g1, h1;
squarulator i1, j1, k1, l1, m1, n1, o1, p1, q1, r1, s1, t1, u1;
squarulator v1, w1, x1, y1, z1, a2, b2, c2, d2, e2, f2,g2,h2;
void setup()
{
  fill(10, 12);
  background (0);
  size (600, 600);
  a = new squarulator();
  a.spot = 290;
  a.expansion = 20;
  b = new squarulator();
  b.spot = 285;
  b.expansion = 30;
  c = new squarulator();
  c.spot = 280;
  c.expansion = 40;
  d = new squarulator();
  d.spot = 275;
  d.expansion = 50;
  e = new squarulator();
  e.spot = 270;
  e.expansion = 60;
  f = new squarulator();
  f.spot = 265;
  f.expansion = 70;
  g = new squarulator();
  g.spot = 260;
  g.expansion = 80; 
  h = new squarulator();
  h.spot = 255;
  h.expansion = 90;
  i = new squarulator();
  i.spot = 250;
  i.expansion = 100;
  j = new squarulator();
  j.spot = 245;
  j.expansion = 110;
  k = new squarulator();
  k.spot = 240;
  k.expansion = 120;
  l = new squarulator();
  l.spot = 235;
  l.expansion = 130;
  m = new squarulator();
  m.spot = 230;
  m.expansion = 140;
  n = new squarulator();
  n.spot = 225;
  n.expansion = 150;
  o = new squarulator();
  o.spot = 220;
  o.expansion = 160;
  p = new squarulator();
  p.spot = 215;
  p.expansion = 170;
  q = new squarulator();
  q.spot = 210;
  q.expansion = 180;
  r = new squarulator();
  r.spot = 205;
  r.expansion = 190; 
  s = new squarulator();
  s.spot = 200;
  s.expansion = 200;
  t = new squarulator();
  t.spot = 195;
  t.expansion = 210;
  u = new squarulator();
  u.spot = 190;
  u.expansion = 220;
  v = new squarulator();
  v.spot = 185;
  v.expansion = 230;
  w = new squarulator();
  w.spot = 180;
  w.expansion = 240;
  x = new squarulator();
  x.spot = 175;
  x.expansion = 250;
  y = new squarulator();
  y.spot = 170;
  y.expansion = 260;
  z = new squarulator();
  z.spot = 165;
  z.expansion = 270;
  a1 = new squarulator();
  a1.spot = 160;
  a1.expansion = 280;
  b1 = new squarulator();
  b1.spot = 155;
  b1.expansion = 290;
  c1 = new squarulator();
  c1.spot = 150;
  c1.expansion = 300;
  d1 = new squarulator();
  d1.spot = 145;
  d1.expansion = 310;
  e1 = new squarulator();
  e1.spot = 140;
  e1.expansion = 320;
  f1 = new squarulator();
  f1.spot = 135;
  f1.expansion = 330;
  g1 = new squarulator();
  g1.spot = 130;
  g1.expansion = 340; 
  h1 = new squarulator();
  h1.spot = 125;
  h1.expansion = 350;
  i1 = new squarulator();
  i1.spot = 120;
  i1.expansion = 360;
  j1 = new squarulator();
  j1.spot = 115;
  j1.expansion = 370;
  k1 = new squarulator();
  k1.spot = 110;
  k1.expansion = 380;
  l1 = new squarulator();
  l1.spot = 105;
  l1.expansion = 390;
  m1 = new squarulator();
  m1.spot = 100;
  m1.expansion = 400;
  n1 = new squarulator();
  n1.spot = 95;
  n1.expansion = 410;
  o1 = new squarulator();
  o1.spot = 90;
  o1.expansion = 420;
  p1 = new squarulator();
  p1.spot = 85;
  p1.expansion = 430;
  q1 = new squarulator();
  q1.spot = 80;
  q1.expansion = 440;
  r1 = new squarulator();
  r1.spot = 75;
  r1.expansion = 450; 
  s1 = new squarulator();
  s1.spot = 70;
  s1.expansion = 460;
  t1 = new squarulator();
  t1.spot = 65;
  t1.expansion = 470;
  u1 = new squarulator();
  u1.spot = 60;
  u1.expansion = 480;
  v1 = new squarulator();
  v1.spot = 55;
  v1.expansion = 490;
  w1 = new squarulator();
  w1.spot = 50;
  w1.expansion = 500;
  x1 = new squarulator();
  x1.spot = 45;
  x1.expansion = 510;
  y1 = new squarulator();
  y1.spot = 40;
  y1.expansion = 520;
  z1 = new squarulator();
  z1.spot = 35;
  z1.expansion = 530;
  a2 = new squarulator();
  a2.spot = 30;
  a2.expansion = 540;
  b2 = new squarulator();
  b2.spot = 25;
  b2.expansion = 550;
  c2 = new squarulator();
  c2.spot = 20;
  c2.expansion = 560;
  d2 = new squarulator();
  d2.spot = 15;
  d2.expansion = 570;
  e2 = new squarulator();
  e2.spot = 10;
  e2.expansion = 580;
  f2 = new squarulator();
  f2.spot = 5;
  f2.expansion = 590;
  g2 = new squarulator();
  g2.spot = 0;
  g2.expansion = 600;
  h2 = new squarulator();
  h2.spot = 295;
  h2.expansion = 10;
}
void draw()
{
  
  smooth();
  //stroke (255);
  //fill (255);
  //rect (295, 295, 10, 10);
  //noFill();
  //stroke (255);
  /*line (5,5,595,595);
   line (595,5,5,595);*/

  h2.show();
  a.show();
  b.show();
  c.show();
  d.show();
  e.show();
  f.show();
  g.show();
  h.show();
  i.show();
  j.show();
  k.show();
  l.show();
  m.show();
  n.show();
  o.show();
  p.show();
  q.show();
  r.show();
  s.show();
  t.show();
  u.show();
  v.show();
  w.show();
  x.show();
  y.show();
  z.show();
  a1.show();
  b1.show();
  c1.show();
  d1.show();
  e1.show();
  f1.show();
  g1.show();
  h1.show();
  i1.show();
  j1.show();
  k1.show();
  l1.show();
  m1.show();
  n1.show();
  o1.show();
  p1.show();
  q1.show();
  r1.show();
  s1.show();
  t1.show();
  u1.show();
  v1.show();
  w1.show();
  x1.show();
  y1.show();
  z1.show();
  a2.show();
  b2.show();
  c2.show();
  d2.show();
  e2.show();
  f2.show();
  g2.show();


}

class squarulator
{
  float spot;
  int expansion;


  void show()
  {
    fill(0,10);
    stroke (random(255), random(255), random(255));
    rect (spot, spot, expansion, expansion);
  }
}

