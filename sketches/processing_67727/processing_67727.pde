
/**
 * Array Objects. 
 * 
 * Demonstrates the syntax for creating an array of custom objects. 
 * 
 */

int unit = 80;
int count;
Module[] mods;


void setup() {
  size(1000, 1000);
  background(0);
  noStroke();

  int wideCount = width / unit;
  int highCount = height / unit;
  count = wideCount * highCount;
  mods = new Module[count];

  int index = 0;
  for (int y = 0; y < highCount; y++) {
    for (int x = 0; x < wideCount; x++) {
      mods[index++] = new Module(x*unit, y*unit, unit/2, unit/2, random(5, 50));
    }
  }
}


void draw() {
  for (int i = 0; i < count; i++) {
    mods[i].update();
    mods[i].draw();
  }
}

