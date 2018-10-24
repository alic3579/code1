float pos[] = new float[100];

void setup() {
  size(600, 600);
}

void draw() {
  background(240);
  
  for (int i = 0; i < pos.length; i++) {
    ellipse(width/2, i*width/100, 50, 50);
  }
}
