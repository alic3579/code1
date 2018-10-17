//change the color of an ellipse from black to white if the mouse is hovering over it 
int i, j;

void setup() {
  size(700,700);
  noStroke();
}

void draw() {
  background(255);
  
  

  //loop 36 times in x and y
  for (int i = 0; i <= width; i += width/35) {
    for (int j = 0; j <= height; j += height/35) {
      float d = dist(mouseX, mouseY, i, j); 
        if(d<width/35/2){
        fill(255); 
        } else {
          fill(0);
      ellipse(i, j, width/35, height/35); //can set up size variable
    }
  }
  }

}
