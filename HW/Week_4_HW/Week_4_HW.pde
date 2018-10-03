int n1, n2; 
String differenceSentence; 

float ball_xPos, ball_yPos;
float ball_xSpeed, ball_ySpeed;

PShape s;

int moon_x, moon_y;

float lerp_x = width/3;
float lerp_y = height/3*2;


void setup(){
  size(750, 500); 
  textSize(25);
  
  //BOOLEAN BALL
    ball_xPos = width/2;
    ball_yPos = height/3;
    ball_xSpeed = 5;
    ball_ySpeed = 6;
  
  
  //CUSTOM SHAPE
    s = createShape();
    s.beginShape();
    s.noStroke();
    s.vertex(0, 100);
    s.vertex(200, 100);
    s.vertex(170, 50);
    s.vertex(155, 60);
    s.vertex(100, 0);
    s.endShape(CLOSE);
  
  //RETURNING VOID
    howReturnVoid();

  //MOON THAT CHANGES COLOR
    moon_x = width/5*4;
    moon_y = height/2;


}





void draw(){
  background(0);
  
  //RETURN INT
    differenceSentence = "Int: " + str(n1) + " - " + str(n2) + " = " + subtraction(n1, n2); 
    fill(255);
    text(differenceSentence, width/20*2, height/10*2); 
  
  //FOR BOOLEAN BALL
     ball_xPos = ball_xPos + ball_xSpeed;
     ball_yPos = ball_yPos + ball_ySpeed;
      
     fill(255);
     ellipse(ball_xPos, ball_yPos, 30, 30);
      
     checkBoundaries(1);
  
  //RETURN STRING
    String string = returnAString();
    text(string, width/20*2, height/10*3);
  
  //CUSTOM SHAPE
    shape(s,width/2+50, height/2+50);
  
  //MOON THAT CHANGES COLOR BASED ON MOVING BALL
    float moonColor = map(distanceBwShapes(ball_xPos, ball_yPos, moon_x, moon_y), 0, 255, 0, 255);
    fill(60, 0, moonColor);
    ellipse(moon_x, moon_y, 40, 40);
    //println(distanceBwShapes(ball_xPos, ball_yPos, moon_x, moon_y));
  
  
  //LERP
    lerp_x = lerp(lerp_x, moon_x, 0.03);
    lerp_y = lerp(lerp_y, moon_y, 0.03);
    fill(175,0,255);
    ellipse(lerp_x, lerp_y, 25, 25);

  

}






void mousePressed(){
  n1 = int(random(10,20)); 
  n2 = int(random(0,10)); 
  moon_x = mouseX;
  moon_y = mouseY;
}


int subtraction(int num1, int num2){
  int differenceLocal = num1 - num2; 
  return differenceLocal; 
}


void checkBoundaries(float shapeNumber){
  if (shapeNumber == 1){
    if (isBallOutsideBox(ball_xPos, ball_yPos)){
      ball_xSpeed *= -1;
      ball_ySpeed *= -1;
    }
  }
}


boolean isBallOutsideBox(float x, float y){
  if (x< width/2 || x > width || y < height/3 || y > height/3*2){
    return true;
  }
  return false;
}


String returnAString( ){
  String a = "I am the string you are seeking";
  return a;
} 


void howReturnVoid(){
  println("Is this returning void??");
}


float distanceBwShapes(float shape1X, float shape1Y, float shape2X, float shape2Y) {
  float dist = dist(shape1X, shape1Y, shape2X, shape2Y);
  return dist;
}
