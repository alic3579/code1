void setup(){
  size(700, 500); 
  background(0); 
}

void draw(){
  //Border Around
    rectMode(CENTER);
    fill(255);
    rect(350,250,550,400);
  
  //Drawing pattern
    textSize(20); 
    fill(0);  
    for(int i = 0; i<=width; i+=2){
      for(int j = 0; j<=height; j+=2){
        if(i % 3== 0){
          text("/", i*10, j*10); 
        }else{
          text("\\", i*10, j*10);
        }
      }
    }
}
