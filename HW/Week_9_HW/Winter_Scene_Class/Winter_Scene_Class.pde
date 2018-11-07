int num = 100;
int numTrees = 10;
Snow[] flakes;

Forest[] trees;

void setup(){
  size(750,750);
  smooth();
  
  flakes = new Snow[num];
  trees = new Forest[numTrees];
  
  for(int i= 0; i<num; i++){
    flakes[i] = new Snow();
  }
  
  for(int j = 0; j<numTrees; j++){
    trees[j] = new Forest(random(height-200,height), int(random(0, width)));
  }
}

void draw(){
  background(0);
  
  for(int i = 0; i<num; i++){
    flakes[i].display();
    flakes[i].falling();
  }
  
  for(int j = 0; j<numTrees; j++){
    trees[j].display(1+j*10, color(0, j*10, 100));
  }
}
