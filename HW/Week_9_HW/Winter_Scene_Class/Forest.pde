class Forest{
  float plantHeight;
  int numLeaves;
  color plantColor;
  color opacity;
  int xPos;
  
  Forest(float _plantHeight, int _xPos){
    plantHeight = _plantHeight;
    xPos = _xPos;
  }
  
  void display(int _numLeaves, color _plantColor){
    
    fill(_plantColor);
    rect(xPos, plantHeight, 10, 500);
    
    numLeaves = _numLeaves;
    
    for(int i = 0; i < numLeaves; i++){
      noStroke();
      fill(_plantColor);
      ellipse(xPos, plantHeight + 30*i, 50 + i*5, 20);
      //the taller the tree the whiter it will be.. since it is more covered in snow
      opacity = int(map(plantHeight, height-200, height, 255, 0));
      fill(color(255),opacity);
      ellipse(xPos, plantHeight + 30*i, 50 + i*5, 20);
      
    }

  }
}
