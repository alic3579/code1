//this sketch has the ellipse change colors whenever the mouse button is
//pressed. change the sketch so that the ellipse only changes colors when
//the mouse is pressed inside the ellipse.

int distance;
int cirSize = 200; //just for convenience

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
 
  
  distance = int(dist(width/2, height/2, mouseX, mouseY));
  println(distance);
  
    if (mousePressed && distance < cirSize/2) {
    fill(255);
  } else {
    fill(150);
  }
    ellipse(width/2, height/2, cirSize, cirSize);
  
}
