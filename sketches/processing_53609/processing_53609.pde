
PImage img; 
int increment = 10;

void setup()  {
  size(800, 541);
  img = loadImage("forest.jpg");
  image(img, 0, 0, width, height);
  loadPixels();
  for (int x = 0; x < ((width*height)-(increment+1)); x+=increment) {
    quicksort(pixels, x, x+increment);
  }
  updatePixels();
}

void draw() {
}

void glitchIt(int jump) {
  image(img, 0, 0, 700, 500);
  loadPixels();
  for (int x = 0; x< ((width*height)-(jump+1)); x+=jump) {
    quicksort(pixels, x, x+jump);
  }
  updatePixels();
}

void mouseMoved() {
  float x = constrain (mouseX, 1, width);
  float y = constrain(mouseY, 1, height);
  int vall = int((sqrt(x*y))*2);
  glitchIt(vall);
}

int partition(int x[], int left, int right) {
  int i = left;
  int j = right;
  int temp; 
  int pivot = x [(left+right)/2];
  while (i<= j) {
    while(x[i] < pivot) {
      i++;
    }
    while (x[j] > pivot) {
      j--;
    }
    if (i <= j) {
      temp = x[i];
      x[i] = x [j];
      x[j] = temp;
      i++;
      j--;
    }
  }
  return i;
}

void quicksort(int x[], int left, int right) {
  int index = partition(x, left, right); 
  if(left < index - 30) {
    quicksort(x, left, index-1);
  }
  if (index > right) {
    quicksort(x, index, right);
  }
}


