class Snow{
  color col;
  PVector position;
  PVector velocity;
  PVector gravity;
  float size;
  
  Snow(){
    
    col = color(random(10,255));
    position = new PVector(int(random(width)), int(random(height)));
    velocity = new PVector(0, int(random(1,3)));
    gravity = new PVector(0, .02);
    size = random(5,10);
  }
  
  
  void falling(){
    position.add(velocity);
    
    if(position.y > height){
      position.y = -20;
      velocity.y = int(random(1,3));
      gravity.y = .02;
    }
  }
  
  void gravity(){
    velocity.add(gravity);
  }
  
  void display(){
    noStroke();
    fill(col);
    
    ellipse(position.x, position.y, size, size);
  }
  
}
