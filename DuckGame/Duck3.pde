class Duck3{
  PVector pos;
  PVector vel;
  int size = 60;
  int c;
  
  Duck3(){
    pos = new PVector(size/2, height*5/6);
    vel = new PVector(random(5,7), 0);
    
  }
  
  void move(){
    pos.add(vel);
  }
  
  
  void display(){
    ellipseMode(CENTER);
    noStroke();
    c = color(254,127,156);
    fill(c);
    ellipse(pos.x, pos.y, size, size/2);
    ellipse(pos.x+(size/6), pos.y-(size/3), size/2,size/2);
    
    fill(color(253,136,47));
    ellipse(pos.x+(size/3), pos.y-(size/3), size/3,size/5);
    
    fill(0);
    ellipse(pos.x, pos.y-(size/3), size/8,size/8);
  }
 
  

}
