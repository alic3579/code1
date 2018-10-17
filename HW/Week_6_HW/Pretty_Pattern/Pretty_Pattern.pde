int num = 100;
int [] xPos = new int[num];
int [] yPos = new int[num];

int [] size = new int[num];

int [] opacity = new int[num];

PShape smallRect;
PShape diamond;

void setup(){
  noStroke();

  size(1000,750);
  for(int i = 0; i<num; i++){
    opacity[i] = int(random(150,200));
    size[i] = int(random(0,100));
    
    xPos[i] = int(random(size[i]/2, width-size[i]/2));
    yPos[i] = int(random(size[i]/2, height-size[i]/2));

  }
  
  //creating shape smallRect
  smallRect = createShape(RECT, 0, 0, 30, 10);
  smallRect.setStroke(false);
  
  //creating shape diamond
  diamond = createShape();
  diamond.beginShape();
  diamond.fill(color(247, 227, 147), 200);
  diamond.noStroke();
  diamond.vertex(0, 25);
  diamond.vertex(25,0);
  diamond.vertex(50, 25);
  diamond.vertex(25, 50);
  diamond.endShape(CLOSE);
  
  
}


void draw(){
  background(0);
  
  for(int i = 0; i<num; i+=5){
    
    fill(color(158,205,232),opacity[i]);
    ellipse(yPos[i], xPos[i], size[i], size[i]);
    
    fill(color(240,191,221),opacity[i]);
    rect(xPos[i], yPos[i], size[i], size[i]);
    
    smallRect.setFill(color(255));
    shape(smallRect, xPos[i]-200, yPos[i]);
    
    shape(diamond, yPos[i]+50, xPos[i]+120);
    
    fill(color(206,243,163),opacity[i]);
    ellipse(yPos[i], xPos[i]+5, size[i]*1.2, size[i]*.5);
    
  }
}
