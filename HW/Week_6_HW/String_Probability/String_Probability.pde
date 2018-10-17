String stringArray[] = {"hey", "hi", "hello", "how are you", "how have u been"};
String display;


void setup(){
  noStroke();
  size(500,250);
  background(0);
  float r = random(0,1);
      
  for (int i = 0; i < 1; i++){

    if (r < .2){
      i = 0;
    } if (r > .2 & r < .4){
      i = 1;
    } if (r > .4 & r < .6){
      i = 2;
    } if (r > .6 & r < .8){
      i = 3;
    } if (r > .8 & r < 1){
      i = 4;
    }
    
    display = stringArray[i];
  }
}


void draw(){
  textSize(25);
  text("Him: " + display, width/5, height/2);
}
