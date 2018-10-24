void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(150);
  for (int i = 0; i < 10; i++) {
    int x = 15;
    rect(i*60+x, 150, 30, 300);

  }
}
