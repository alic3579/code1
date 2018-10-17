//create a button that generates the product of two random integers
//the multiplication sentence should be displayed somewhere on the screen 

//the sketch is started for you, but isn't quite right 


int x, y; 
int size; 
float dist; 
boolean buttonClicked; 


int result; 
int num1, num2; 

void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 50; 


}

void draw(){
    background(0); 


    textSize(32); 
    
    int result = multiply(num1, num2); 
    String resultSentence = num1 + " x " + num2 + " = " + result; 
    
    text(resultSentence, 0, height*.8);
    
    if(buttonClicked){    
       fill(0, 255, 0); 
    }else{
       fill(255, 0, 0); 
    }
    

   
    ellipse(x, y, size, size);  
}

void mousePressed(){
  dist = dist(mouseX, mouseY, x, y); 
  if(dist <= size/2){
    buttonClicked = true; 
    num1 = int(random(0,100)); 
    num2 = int(random(0,100)); 
  }else{
    buttonClicked = false;
  }
}

int multiply(int a, int b){
    int product = a * b; 
    return product;
    
}
