void setup(){
  size(750,500);
  rectMode(CENTER);
}

void draw(){
  background(255);
  noStroke();
  
  //Single loop with changing size of ellipse
  for(int i = 0; i<=width; i+=30){
    int s = int(map(i, 0, width, 0, 50));
    fill(254,127,156);
    ellipse(i, height/2, s,s);
  
  //Mouse position dynamic loop
  int c = int(map(i,0,width,0,255));
  fill(0,c,0);
  rect(i * mouseX/2, 150, 50, 50);
  }
}
