ArrayList<Snow> flakes;

int numTrees = 10;
Forest[] trees;

void setup(){
  size(750,750);
  smooth();
  
  flakes = new ArrayList<Snow>();
  trees = new Forest[numTrees];
  
  
  for(int j = 0; j<numTrees; j++){
    trees[j] = new Forest(random(height-200,height), int(random(0, width)));
  }
}

void draw(){
  background(0);
  
  for(int i = 0; i<flakes.size(); i++){
    Snow s = flakes.get(i);
    s.display();
    s.falling();
    s.gravity();
  }
  
  for(int j = 0; j<numTrees; j++){
    trees[j].display(1+j*10, color(0, j*10, 100));
  }
}

//how to add particle through other non-manual methods.. ex through time/frame rate
void mousePressed(){
  flakes.add(new Snow());
}
