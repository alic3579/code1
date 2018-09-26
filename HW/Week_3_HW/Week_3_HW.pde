//red button activates bouncing meteor
//distance to red button changes bg color
//green button changes moon position

//RED BUTTON
int buttonSize;
int xPos, yPos;
color buttonColor, bgColor;
boolean isButtonOn = false;
int distance;

//METEOR
float x,y;
int radius = 35;
float xSpeed, ySpeed;

//MOON
int xMoonPos, yMoonPos;

//GREEN BUTTON
int greenButtonSize;
int xGreenPos, yGreenPos;
int greenDistance; //distance to green button
//boolean isGreenOn = false;


void setup(){
  size(1000,500);
  bgColor = color(184,187,195); //grey
  background(bgColor);
  noStroke();
 
  //RED BUTTON
      xPos = width/5*4;
      yPos = height/2;
      buttonSize = 200;
      

      
  //BOUNCING METEOR
      xSpeed = 7;
      ySpeed = 8;
       smooth(); 
      x = width/2; 
      y = height/2; 
      
  //POSITION OF MOON
      xMoonPos = int(random(width/5*2-50, width/5*2+50));
      yMoonPos = height/2-75;
  
  //GREEN BUTTON
      xGreenPos = width/5*4;
      yGreenPos = height/2+150;
      greenButtonSize = 25;
  
}


void draw(){
  
  background(bgColor);
  
  
  //RED BUTTON
      //Red button shadow
          fill(196,0,0);
          ellipse(xPos+10, yPos, buttonSize, buttonSize);
      
     
      //RED button
          fill(255,40,0);
          ellipse(xPos, yPos, buttonSize, buttonSize);
      
      
      //Distance between mouse and red button
      distance = int(dist(xPos, yPos, mouseX, mouseY));
      println(distance);
  
  
      //How to make background blinking red that fades back to grey??
      //Solid red background when mouseover
          if(distance<buttonSize/2){
            //bgColor = color(255, random(69,103), random(73,110)); //for flashing red
            bgColor = color(255,138,147,150);
          } else {
            bgColor = color(184,187,195);
          }
          

      //fill(0);
      //text("Red button is " + isButtonOn, 20, 20); //to check boolean
  

      fill(255);
      textSize(25);
      text("DO NOT PRESS", width/5*4-90, height/2);
  
  
  //Window looking at earth
  fill(143,146,153);
  ellipse(width/5*2, height/2, 400, 400);
  
  //BLUE SPACE
      float r = map(x, 0, width, 0, 255);
      //fill(24,41,88);
      if(isButtonOn == true){
         fill(r-10,41,88);
      } else {fill(24,41,88);
    }
      ellipse(width/5*2, height/2, 385, 385);
  
  //Earth
  fill(18,121,131);
  ellipse(width/5*2, height/2, 100, 100);

  //MOON
      fill(242,242,248);
      ellipse(xMoonPos, yMoonPos, 20, 20);
    
      // //Changing moon pos super fast
      // if(isGreenOn == true){
      //  xMoonPos = int(random(width/5*2-50, width/5*2+50));
      //}
  
  
  //GREEN BUTTON
      //Green button shadow
      fill(98,166,92);
      ellipse(xGreenPos+3, yGreenPos+150, greenButtonSize, greenButtonSize);
      
      //GREEN button
      fill(119,176,108);
      ellipse(xGreenPos, yGreenPos, greenButtonSize, greenButtonSize);
      
      greenDistance = int(dist(xGreenPos, yGreenPos, mouseX, mouseY));
      //println(greenDistance);

      // fill(0);
      // text("Green button is " + isGreenOn, 20, 20); //to check boolean
  
  
  
  //BOUNCING METEOR    
      x = x + xSpeed;
      y = y + ySpeed;
      
      //Can do: if x and y move outside distance/radius aka map function,
      //then reverse speed
      if( x >= (width/5*2+192.5 - radius/2) || x <= (width/5*2-192.5 + radius/2)){
        xSpeed = xSpeed * -1;
      }
      if( y >= (height/2+192.5 - radius/2) || y <= (height/2-192.5 + radius/2)){
        ySpeed = ySpeed * -1;
      }
      
      
    
      
      //Doesnt work: Tried to have it not bounce into the earth
      //if( x >= (width/5*2-50 - radius/2) || x <= (width/5*2+50 + radius/2)){
      //  xSpeed = xSpeed * -1;
      //}
      //if(y >= (height/2-50 - radius/2) || y <= (height/2+50 + radius/2)){
      //  ySpeed = ySpeed * -1;
      //}
      
  
      //Spawning bouncing meteor
       if(isButtonOn == true){
        //fill(250,69,10);
        fill(color(random(253,255),random(89,236),random(0,10)));
        ellipse(x, y, radius, radius);
      } 
    
    
}



void mousePressed(){
  if(distance<buttonSize/2){
    if(mousePressed){
    isButtonOn = !isButtonOn;
    println(isButtonOn);}
  }
    
    
  if(greenDistance<greenButtonSize/2){
    if (mousePressed){
    //isGreenOn = !isGreenOn;
    //println(isGreenOn);
    xMoonPos = int(random(width/5*2-50, width/5*2+50));}
            }
}
