PVector pos, vel, accel; 

void setup(){
  size(600, 600); 

  pos = new PVector(width/2, 25); 
  vel = new PVector(0,4);
  accel = new PVector(0,0.5);
  

  smooth(); 
}

void draw(){
  background(0); 
  
  pos.add(vel);
  vel.add(accel);

  ellipse(pos.x, pos.y, 50, 50); 

  if(pos.y >= height){
    pos.y = 25;
    vel = new PVector(0,4);

  }
}
