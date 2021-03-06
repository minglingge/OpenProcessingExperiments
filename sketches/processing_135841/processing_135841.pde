
//PGraphics g;
port[] ports;
port tenu;
voyageur[] voyageurs;
int numb=5;
float RayonCercles=14;
float taille;
port[][] rayons;

void setup() {
  size(600, 600); 
  stroke(255);
  colorMode(HSB);
  strokeWeight(2);
  fill(0,2);
  ports = new port[0];
  rayons = new port[0][2];
  voyageurs = new voyageur[0];
    taille=width/(numb+1.0); 
  for (int a=0;a<numb;a++) {
    for (int b=0;b<numb;b++) { 
      ports = (port[]) append(ports, new port(taille+a*taille, taille+b*taille));
    }
  }
  for (int a=0;a<(numb*numb*2);a++) {
    port p = ports[floor(random(ports.length))];
    new voyageur(p);
  }
  for (port p1:ports) {
    port[] ps = new port[0];
    for (port p2:ports) {
      float d=dist(p1.basex, p1.basey, p2.basex, p2.basey);
      if (d<(taille+1)) {
        ps = (port[]) append(ps, p2);
        ajouteRayons(p1, p2);
      }
    }
    p1.copains = ps;
  }
//  g.endDraw();
}

void draw() {
  background(0);
  strokeWeight(1);
  fill(0);stroke(255,128);
  if(tenu!=null){tenu.tiens();} 
  for(port[] pz:rayons){
    line(pz[0].x, pz[0].y, pz[1].x, pz[1].y);
  }
  for(port p:ports){
    p.affiche();
  } 
  stroke(255);
  strokeWeight(2); 
  for (voyageur v:voyageurs) {
    v.dessine();
  }
  for(voyageur v:voyageurs){
    if(v.gone==false){
      v.demarre();
      break;
    }
  }
}

class port {
  float x, y,basex, basey, an, v, rx, ry;
  int aquai=0;
  port[] copains;
  port(float _x, float _y) {
    x=basex=_x;
    y=basey=_y;
   // g.ellipse(x,y,RayonCercles*2, RayonCercles*2);
    an=random(TWO_PI);
    v=random(-0.3,0.3);
    rx=random(2);
    ry=random(2);
    affiche();
  }
  void affiche(){ 
    ellipse(x,y,RayonCercles*2, RayonCercles*2); 
  }
  void tiens(){ 
      x=mouseX;y=mouseY;
      float d=dist(x,y,basex,basey);
      float t= taille*0.5;
      if(d>t){
        x=basex+((x-basex)/d)*t;
        y=basey+((y-basey)/d)*t;
      }
  }
}

class voyageur {
  color c, c2;
  boolean gone=false;
  float vitesse;
  port portDest, portDepart;
  float x, y, di; 
  voyageur(port p) {
    di=random(8,9.5);
    vitesse =random(0.5,2.3);
    float cc=random(255);
    c = color(cc,255,255);
    c2 = color(cc,255,255,140);
    portDepart=p;
    x=p.x;y=p.y;
    voyageurs = (voyageur[]) append (voyageurs, this);
  }
  void dessine() { 
    vitesse+=random(-0.001,0.001);
   // stroke(c);
    if(gone){
      float d=dist(x,y,portDest.x, portDest.y);
      int stepc = int(d/vitesse);
      int step=stepc-1;
      if(step<=0){
        gone = false;
        portDepart = portDest;
        portDepart.aquai++;
        if(random(8)<1){
          demarre();
        }
      } else {
         x=portDest.x+((x-portDest.x)/stepc)*step;
         y=portDest.y+((y-portDest.y)/stepc)*step;
      }
    } else {
      float d=dist(x,y,portDepart.x, portDepart.y);
      if(d>RayonCercles){
         x=portDepart.x+((x-portDepart.x)/d)*RayonCercles;
         y=portDepart.y+((y-portDepart.y)/d)*RayonCercles;
      }
    }
    for(voyageur v:voyageurs){
      float d=dist(v.x, v.y, x, y);
      if(v!=this){
      if(d<di){
         float an=random(TWO_PI);
         x+=cos(an)*0.01;y+=sin(an)*0.01;
         v.x=x+((v.x-x)/d)*di;
         v.y=y+((v.y-y)/d)*di;
         if(v.gone==false){
           v.demarre();
         }
      }
      }
    }
    noStroke();
    fill(c2);
    ellipse(x,y,8,8);
    stroke(255);
    point(x,y);
    
  }
  void demarre(){
    port[] pz =  portDepart.copains;
    portDepart.aquai--;
      port p=pz[floor(random(pz.length))];
       portDest = p;
       gone=true; 
  }
}

void mousePressed(){
  for(int a=0;a<ports.length;a++){
    port p=ports[a];
    float d=dist(p.x, p.y, mouseX, mouseY);
    if(d<RayonCercles){
      tenu=p;break;
    }
  }
}

void mouseReleased(){
  tenu=null;
}

void ajouteRayons(port p1, port p2){
  boolean found=false;
  for(port[] p:rayons){
     if((p[0]==p1 && p[1]==p2)||(p[0]==p2 && p[1]==p1)){
       found=true;
       break;
     }
  }
  if(!found){
    port[] pp={p1, p2};
    rayons = (port[][]) append(rayons, pp);
  }
}
