int bgColorR = 18;
int bgColorG = 140;
int bgColorB = 0;
int cardPosition;
int cardSize;

void setup(){
  size(800,500);
  background(bgColorR, bgColorG, bgColorB);
  
  //cardSize = 80;
  cardSize = int(width*.1);
  //cardPosition = 200;
  cardPosition = int(width*.25);

}


void draw(){
  
  println(cardPosition);
  
  //To randomize position
  cardPosition = int(width*random(0,1));
  
  //CHANGING COLOR!!!
  //background(bgColorR++, bgColorG++, bgColorB--);
  
  //Drawing white card
  strokeWeight(1);
  stroke(0);
  rectMode(CENTER);
  fill(255);
  //rect(200, 200, 80, 112);
  rect(cardPosition, cardPosition, cardSize, cardSize*1.40);
  
  //Drawing ellipse
  noFill();
  stroke(206,42,6);
  strokeWeight(3);
  //ellipse(170, 155, 10, 10);
  ellipse(cardPosition-30, cardPosition-45, cardSize*.125, cardSize*.125);
  
  noFill();
  stroke(206,42,6);
  strokeWeight(3);
  //ellipse(230, 245, 10, 10);
  ellipse(cardPosition+30, cardPosition+45, cardSize*.125, cardSize*.125);

  //Drawing quad in middle
  noStroke();
  fill(206,42,6);
  //quad(200, 190, 210, 200, 200, 210, 190, 200);
  quad(cardPosition, cardPosition-10, cardPosition+10, cardPosition, cardPosition, cardPosition+10, cardPosition-10, cardPosition); 
  

}
