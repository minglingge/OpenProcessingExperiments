
//Author: Herbert Hsu
//Purpose: Assignment to illustrate the idea of dreams. Dreams to me is rapidly changing image, so I design it chaning color with the mouse position.
//Functioning:Changing color with mouse position
//Reference: In class exercise and examples from Generative Art(Pearson2011)

// global variables
Cell[][] _cellArray;
int _numX, _numY;
int _cellSize = 10;
 
// ================ main program ======
 
void setup() {
  size(500, 300);
  frameRate(4);
  _numX = floor(width/_cellSize);
  _numY = floor(height/_cellSize);
  restart();
}
 
void restart() {
  _cellArray = new Cell[_numX][_numY];
  for (int x = 0; x<_numX; x++) {
    for (int y = 0; y<_numY; y++) {
      Cell newCell = new Cell(x, y);
      _cellArray[x][y] = newCell;
    }
  }
 
  for (int x = 0; x < _numX; x++) {
    for (int y = 0; y < _numY; y++) {
      int above = y-1;
      int below = y+1;
      int left = x-1;
      int right = x+1;
      if (above < 0) {
        above = _numY-1;
      }
      if (below == _numY) {
        below = 0;
      }
      if (left < 0) {
        left = _numX-1;
      }
      if (right == _numX) {
        right = 0;
      }
      _cellArray[x][y].addNeighbour(_cellArray[left][above]);
      _cellArray[x][y].addNeighbour(_cellArray[left][y]);
      _cellArray[x][y].addNeighbour(_cellArray[left][below]);
      _cellArray[x][y].addNeighbour(_cellArray[x][below]);
      _cellArray[x][y].addNeighbour(_cellArray[right][below]);
      _cellArray[x][y].addNeighbour(_cellArray[right][y]);
      _cellArray[x][y].addNeighbour(_cellArray[right][above]);
      _cellArray[x][y].addNeighbour(_cellArray[x][above]);
    }
  }
}
 
void draw() {
//  background(200);
  fill(200, 20);
  rect(0, 0, width, height);
  for (int x = 0; x < _numX; x++) {
    for (int y = 0; y < _numY; y++) {
      _cellArray[x][y].calcNextState();
    }
  }
  translate(_cellSize/2, _cellSize/2);
  for (int x = 0; x < _numX; x++) {
    for (int y = 0; y < _numY; y++) {
      _cellArray[x][y].drawMe();
    }
  }
}
 
void mousePressed() {
  restart();
}
 
// ================ object ============
class Cell {
  float x, y;
  boolean state;
  boolean nextState;
  Cell[] neighbors;
  float age;
  int neighborCount;
 
  Cell(float ex, float why) {
    x = ex * _cellSize;
    y = why * _cellSize;
    if (random(2) > 1) {
      nextState = true;
    }
    else {
      nextState = false;
    }
    state = nextState;
    age = 0;
    neighborCount = 0;
    neighbors = new Cell[0];
  }
 
  void addNeighbour(Cell cell) {
    neighbors = (Cell[])append(neighbors, cell);
  }
 
  void calcNextState() {
    // calculating number of living neighbours
    //int liveCount = 0;
    neighborCount = 0;
    for (int i=0; i < neighbors.length; i++) {
      if (neighbors[i].state == true) {
        neighborCount++;
      }
    }
    // apply rules
    if (state == true) {  // rule 1
      if ((neighborCount == 2) || (neighborCount==3)) {
        nextState = true;
      }
      else {
        nextState = false;
      }
    }
    else {  // rule 2
      if (neighborCount == 2) {
        nextState = true;
      }
      else {
        nextState = false;
      }
    }
  }
 
  void drawMe() {
    state = nextState;
    noStroke();
    //stroke(50-age, 10, 0);
    if (state == true) {
      fill(255*(noise(mouseX)), 255*(noise(mouseY)), 20*neighborCount, 40);
      age=age--;
        ellipse(x, y, _cellSize+9*age, _cellSize);
    }
    else {
      fill(255, 255, 255, 40);
      age =age+1;
    }
    if (age>2){age=age-2;}
    ellipse(x, y, _cellSize+age+neighborCount, _cellSize+age);
  
}
}
void keyPressed(){
saveFrame("image.jpg");
}

