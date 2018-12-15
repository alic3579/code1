ArrayList <Duck> duckies = new ArrayList<Duck>(); 
ArrayList <Duck2> duckies2 = new ArrayList<Duck2>(); 
ArrayList <Duck3> duckies3 = new ArrayList<Duck3>(); 

int score = 0;
int life = 10;

//int counter = 0;
//int counter2 = 0;
//int counter3 = 0;

//for gameover screen
float x,y;
float theta;
int t = 100;


import processing.sound.*;
SoundFile file;



void setup(){
 size(750,500);
 
 textAlign(CENTER);
 
 file = new SoundFile(this, "quack.mp3");
 
}

void draw(){
  background(color(51,171,240));
  
  for(int i = 0; i<duckies.size(); i++){
    Duck d = duckies.get(i);
    d.display();
    d.move();
    
    
    float dis = dist(mouseX, mouseY, d.pos.x, d.pos.y);
    
    if(dis < d.size/2 && mousePressed){
      duckies.remove(i);
      score += 1;
    }
    
    if(d.pos.x >= width){
      if(life > 0){
      duckies.remove(i);
      life -= 1;
      file.play();
      }
    }
    
    if(score >= 20 && score <= 30){
      d.vel.x = random(2,4);
    }
    
    if(score > 30){
      d.vel.x = random(4,6);
    }
    

    
  }
  
  //so only 50 ducks at max will spawn in first line
  //if(counter < 50){
    if(frameCount % 40 == 0){
      duckies.add(new Duck());
      //counter += 1;
    }
  //}
  

    
  ////////////////
  
  for(int j = 0; j<duckies2.size(); j++){
        Duck2 d = duckies2.get(j);
        d.display();
        d.move();
    
        float dis = dist(mouseX, mouseY, d.pos.x, d.pos.y);
        
        if(dis < d.size/2 && mousePressed){
          duckies2.remove(j);
          score += 1;
        }
        
        if(d.pos.x <= 0){
          if(life > 0){
            duckies2.remove(j);
            life -= 1;
            file.play();
        }
        }
        
        
        if(score >= 25 && score <= 35){
          d.vel.x = random(3,5);
        }
        
        if(score > 35){
          d.vel.x = random(5,7);
        }
  }
    
    //if(counter2 < 40){
        if(frameCount % 80 == 0){
          duckies2.add(new Duck2());
          //counter2 += 1;
        }
    //}
 
  
  
//////////////



  for(int k = 0; k<duckies3.size(); k++){
        Duck3 d = duckies3.get(k);
        d.display();
        d.move();
    
        float dis = dist(mouseX, mouseY, d.pos.x, d.pos.y);
        
        if(dis < d.size/2 && mousePressed){
          duckies3.remove(k);
          score += 2;
        }
        
        
        if(d.pos.x >= width){
          if(life > 0){
            duckies3.remove(k);
            life -= 1;
            file.play();
        }
        }
        
        if(score >= 30){
          d.vel.x = random(7,10);
        }
        

  }
    
    //if(counter3 < 20){
        if(frameCount % 150 == 0){
          duckies3.add(new Duck3());
          //counter3 += 1;
        }
    //}
    
    
    
//////////////////

  fill(255);
  textSize(25);
  text("Score: " + score, width-80, 40);
  text("Life: " + life, 70, 40);
  
  noStroke();
  fill(41,171,135);
  arc(150, 400, 400, 275, 0, PI+HALF_PI+QUARTER_PI, PIE);
  arc(600, 280, 100, 75, 0, PI+QUARTER_PI, PIE);
  
  
  
  //bullseye at mouse
        fill(255,0,0);
        rectMode(CENTER);
        rect(mouseX, mouseY-15, 4,15);
        rect(mouseX, mouseY+15, 4,15);
        rect(mouseX-15, mouseY, 15,4);
        rect(mouseX+15, mouseY, 15,4);
        noFill();
        stroke(255,0,0);
        strokeWeight(3);
        ellipse(mouseX, mouseY, 30, 30);
        
//////////////////////////


  if(life <= 0){
    noStroke();
    
    fill(0, t);
    t += 1;
    rectMode(CENTER);
    rect(width/2, height/2, width, height);
    
    fill(255);
    textSize(30);
    text("Final Score: " + score, width/2, height*2/3);
    
    theta+=1;
    x = cos(radians(theta))*100 + width/2;
    y = height/2;
    fill(random(0,255),random(0,255),random(0,255));
    textSize(125);
    text("GAME OVER", x, y);

  }
  
}
