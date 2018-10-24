float d = 100;
float incr = 5;

boolean shrink; 

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  ellipse(width/2, height/2, d, d);

if(d > width){
  shrink = true;
} 

if(d < 0){
  shrink = false;
}

if(shrink == false){
  d += incr;  
}

if(shrink == true){
  d -= incr;
}


//println(d);
}
