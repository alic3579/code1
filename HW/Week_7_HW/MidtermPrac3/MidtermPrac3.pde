//currently the sketch has a 50/50 chance of moving left or right 
//update the sketch so that whenever the mouse is clicked, there is 25% chance it will 
//move up, down, left, or right 
int xPos, yPos; 
void setup(){
  size(600, 600); 
  xPos = width/2; 
  yPos = height/2; 
}

void draw(){
  background(0); 
  ellipse(xPos, yPos, 50, 50); 
  


}

void mousePressed(){
    float r = random(0,1); 
  
  if(r <.25){
    xPos +=10; 
  } if(r>.25 && r <.5){
    xPos -=10;
  } if(r>.5 && r<.75){
    yPos +=10;
  } if(r>.75 && r<1){
    yPos -=10;
  }
  
}
