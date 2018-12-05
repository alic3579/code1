int num = 25; 
float xPos [] = new float[num]; 
int size = 20; 
float theta;

int waveOffSet;


void setup(){
  size(500, 500);
  waveOffSet = height/2; 
  
  int spacing = width/num; 
  
  for(int i = 0; i<num; i++){
    xPos[i] = i*spacing + size/2; 
  }
}

void draw(){
  background(100); 
  
 
  for(int i = 0; i<num; i++){
    ellipse(xPos[i], sin(theta + i*.2)*height/2 + waveOffSet, size, size );  
  }
  
  theta += .01; 
}
