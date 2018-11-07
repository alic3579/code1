class Snow{
  color col;
  PVector position;
  PVector velocity;
  float size;
  
  Snow(){
    
    col = color(random(10,255));
    position = new PVector(int(random(width)), int(random(height)));
    velocity = new PVector(0, int(random(5,15)));
    size = random(5,10);
  }
  
  void display(){
    noStroke();
    fill(col);
    
    ellipse(position.x, position.y, size, size);
  }
  
  void falling(){
    position.add(velocity);
    
    if(position.y > height && velocity.y > 0){
      position.y = -20;
      position.add(velocity);
    }
  }
}
