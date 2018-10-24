int yPosition = width/2;

void setup() {
  size(600, 600);
}

void draw() {
  if (yPosition > height) {
    yPosition = 0;
  } else {
    yPosition = yPosition+10;
  }
  
   ellipse(width/2, yPosition, 100, 100);
}
