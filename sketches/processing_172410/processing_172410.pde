
float org_h = 476.459, org_w = 477.095;
float amp = 15;

float[][] s = {{0,0,132.328,305.328},
{132.328,0,212.453,171.719},
{344.781,0,131.678,171.719},
{132.593,171.719,172.72,133.609},
{0,305.328,305.313,171.767},
{305.313,171.719,171.146,305.376},

{27.375, 37, 76.375, 230.063},
{166.609, 29.25, 143.891, 111.583},
{370.25, 33, 82, 104.25},
{162.905, 200.882, 111.095, 75.282},
{338.271, 212.813, 105.229, 223.187},
{39.667, 337, 225, 109},

{30.125,41.25,14.042,222.125},
{48.604,41.25,14.042,222.125},
{67.958,41.25,14.042,222.125},
{86.5,41.25,14.042,222.125},

{172.167,34.9,29.5,100.667},
{206.833,34.9,29.5,100.667},
{241.467,34.9,29.5,100.667},
{275.813,34.9,29.5,100.667},

{374.75,37.587,14.625,95.411},
{394.3,37.587,14.625,95.411},
{413.933,37.587,14.625,95.411},
{433.384,37.587,14.625,95.411},

{166.4,204.735,22.875,67.625},
{193.625,204.735,22.875,67.625},
{220.563,204.735,22.875,67.625},
{247.787,204.735,22.875,67.625},

{343.5,218.579,19.031,211.656},
{368.636,218.579,19.031,211.656},
{393.867,218.579,19.031,211.656},
{419.083,218.579,19.031,211.656},

{44.521,342.208,49.229,98.323},
{99.808,342.208,49.229,98.323},
{155.221,342.208,49.229,98.323},
{210.688,342.208,49.229,98.323}}; 

float[][] cr = {{217,29,43},
{250,240,62},
{41,32,135},
{240,149,27},
{229,239,246},
{52,48,56},

{229,59,0},
{37,37,31},
{232,0,76},
{23,165,81},
{253,241,10},
{53,27,131},
{254,236,0},{254,236,0},{254,236,0},{254,236,0},
{3,69,154},{3,69,154},{3,69,154},{3,69,154},
{254,254,252},{254,254,252},{254,254,252},{254,254,252},
{254,237,0},{254,237,0},{254,237,0},{254,237,0},
{230,3,75},{230,3,75},{230,3,75},{230,3,75},
{234,90,10},{234,90,10},{234,90,10},{234,90,10}
};
void setup(){
  size(476,477);
}

void draw(){
  
  for(int i=0;i<6;i++){
    color c = color(cr[i][0],cr[i][1],cr[i][2]);
    fill(c);
    stroke(c);
    strokeWeight(0);  
    rect(s[i][0],s[i][1],s[i][2],s[i][3]);
  }
  loadPixels();
  
  for (int i = 0; i < height; i++) {
    for(int j = 0; j < width; j++){
      color cc = pixels[i*width+j];
      float ccr = red(cc)+random(-amp,amp), ccg = green(cc)+random(-amp,amp), ccb = blue(cc)+random(-amp,amp);
      pixels[i*width+j] = color(ccr,ccg,ccb);
    }
  }
  updatePixels();

  for(int i=6;i<12;i++){
    color c = color(cr[i][0],cr[i][1],cr[i][2]);
    fill(c);
    stroke(c);
    strokeWeight(0);  
    rect(s[i][0],s[i][1],s[i][2],s[i][3]);
  }
  
  for(int i=12;i<36;i++){
    color c = color(cr[i][0]-random(-amp,amp),cr[i][1]-random(-amp,amp),cr[i][2]-random(-amp,amp));
    fill(c);
    stroke(c);
    strokeWeight(0);  
    rect(s[i][0],s[i][1],s[i][2],s[i][3]);
  }
}
