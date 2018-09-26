int bgColorR = 18;
int bgColorG = 140;
int bgColorB = 0;

//x,y for CARD#1 position
int x,y;
int cardSize;

//color r = color(206,42,6);
//color quadColor;

int secondCardSize;


void setup(){
  size(800,500);
  background(bgColorR, bgColorG, bgColorB);
  
  //cardSize = 80;
  cardSize = int(width*.1);
  //cardPosition = 200;
  x = int(width*.25);
  y = int(height*.25);
  
  //Setting up red color
  //r = color(206,42,6);
  //quadColor = color(206,42,6);
  
  secondCardSize = int(width*.1);


}

//For mousePressed later on
//#CE2A06 is hex for the red color RGB (206,42,6)
int value = #CE2A06;


void draw(){
  
 
  //Mapping background to mouseX and mouseY
  float a = map(mouseX, 0, width, 0, 255);
  float b = map(mouseY, 0, height, 170, 220);
  
  //background(bgColorR, bgColorG, bgColorB); original background
  background(a, b, bgColorB);
  println(mouseX);
  println(mouseY);
  
  
  
  //Drawing CARD#1
        strokeWeight(1);
        stroke(0);
        rectMode(CENTER);
        fill(255);
        //rect(200, 200, 80, 112);
        rect(x, y, cardSize, cardSize*1.40);
        
        //Drawing ellipse
        noFill();
        stroke(value);
        strokeWeight(3);
        //ellipse(170, 155, 10, 10);
        ellipse(x-30, y-45, cardSize*.125, cardSize*.125);
        
        noFill();
        stroke(value);
        strokeWeight(3);
        //ellipse(230, 245, 10, 10);
        ellipse(x+30, y+45, cardSize*.125, cardSize*.125);
      
        //Drawing quad in middle
        noStroke();
        fill(value);
        //fill(quadColor);
        //quad(200, 190, 210, 200, 200, 210, 190, 200);
        quad(x, y-10, x+10, y, x, y+10, x-10, y); 
  
  

  //Drawing CARD#2 (bigger)
        pushMatrix();
        translate(200,0);
        scale(1.25);
        strokeWeight(1);
        stroke(0);
        rectMode(CENTER);
        fill(255);
        rect(x, y, secondCardSize, secondCardSize*1.40);
        

        //Drawing ellipse
        noFill();
        stroke(206,42,6);
        strokeWeight(3);
        ellipse(x-30, y-45, cardSize*.125, cardSize*.125);
        
        noFill();
        stroke(206,42,6);
        strokeWeight(3);
        ellipse(x+30, y+45, cardSize*.125, cardSize*.125);
      
        //Drawing quad in middle
        noStroke();
        fill(206,42,6);
        quad(x, y-10, x+10, y, x, y+10, x-10, y); 
        popMatrix();



  //Drawing CARD#3 (rotating quad and color change)
        pushMatrix();
        int r = mouseX-mouseY;
        translate(x*1.5,y*2.5);
        strokeWeight(1);
        stroke(0);
        rectMode(CENTER);
        fill(255);
        rect(0, 0, cardSize, cardSize*1.40);
        

        //Drawing ellipse
        noFill();
        stroke(206,42,6);
        strokeWeight(3);
        ellipse(0-30, 0-45, cardSize*.125, cardSize*.125);
        
        noFill();
        stroke(206,42,6);
        strokeWeight(3);
        ellipse(0+30, 0+45, cardSize*.125, cardSize*.125);
      
        //Drawing quad in middle
        rotate(radians(r));
        noStroke();
        fill(206,42,6);
        quad(0, 0-10, 0+10, 0, 0, 0+10, 0-10, 0);       
        popMatrix();


  //Only changes the quad red color to black once
  //if(mousePressed){
  //          quadColor = color(0);
  //        }


  //if(keyPressed){
  //  secondCardSize ++;
  //  }
  


  //Infinite size change
      if(key == CODED){
      if(keyCode == UP && secondCardSize <=200){
        secondCardSize +=5;
      } else if(keyCode == DOWN && secondCardSize >20){
        secondCardSize -=5;
      }
    }
  
  
}




// Doesnt work x.x
//        void mousePressed(){
//          if (r = color(206,42,6)){
//            r = 0;
//          } else {
//            r = color(206,42,6);
//          }
//        }
        
        

  void mousePressed(){
       if (value == color(206,42,6)){
         value = 0;
       } else {
         value = #CE2A06;
       }
  }
        


//  void keyPressed(){
//    if(key == CODED){
//      if(keyCode == UP){
//        secondCardSize +=5;
//      }
//      if(keyCode == DOWN){
//        secondCardSize -=5;
//      }
//    }
//  }
