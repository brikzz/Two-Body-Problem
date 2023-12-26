Planet Sun;
Planet Earth;

void setup(){
  size(800, 800);
  background(0,0,0);
  rectMode(CENTER);
  
  Sun = new Planet(400,400);
  Earth = new Planet(400,200);
  
}

void draw(){
  
}

//dx=otherx-my x
//dy=othery - my y
//get the distance
//normalize
//get force
