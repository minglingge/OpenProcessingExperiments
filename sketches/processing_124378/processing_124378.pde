
void setup() {
    size(500, 500);
    x = 250
    y = 50
}

void draw() {
    background(255);
    ellipse(x%width, (y++)%height, 20, 20);
}
