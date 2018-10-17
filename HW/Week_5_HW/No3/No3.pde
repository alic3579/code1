//Nested loop and map function

void setup(){
  size(750,500);
  noStroke();
}

void draw(){
  background(255,0,0);
  
  int num = 30;
  int size = width/num;
  
  for(int i = 0; i<width; i+=width/num){
    for(int j = 0; j<height; j+=height/num){
      
      float d = dist(mouseX, mouseY, i, j);
      float s = map(d, 0, 50, 25, 50);
      
      float opacity = map(d,0,width/2,0,255);
      
      fill(color(int(random(255))),opacity);
      rect(i, j, s, s);
    }
  }
  
 
      fill(255,0,0);
      textSize(30);
      text("REC", width/10+20, height/10);
      
      fill(255,0,0);
      ellipse(width/10, height/10-12, 20, 20);
  
}
