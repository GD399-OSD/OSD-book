PFont f;
PImage img;
import processing.pdf.*;


boolean record;

void setup(){
  
  size(620,930,P3D);
  noStroke();
  fill(255,190);
  f = createFont("M+ 1m light",16,true);
  textAlign(CENTER,BASELINE);
  
  smooth();
  frameRate(60);
}

void draw(){
  
  if (record) {
    beginRaw(PDF, "spider.pdf");
  }
  
  if (mouseY>700){
  fill(147,4,4); 
  textSize(16);
  text("With great power,",300,850);
  text("comes great responsibility.",300,870);
  }
  
  fill(0,10); 
  noStroke();
  rect(0,0,width,height);  
  
  translate(300,500);
  
  rotateX(-2600/100.00);
  rotateY(mouseY/100.0);
  
  for(int i = -250;i<250;i+=20){
    for(int j = -500;j<500;j+=20){
      
      //rotateX(0.1);
      rotateY(0.5);
      
      fill(147,4,4);
      textFont(f,12);
      text("Spider",i,j);
    }
  }
  
  if (record) {
    endRaw();
    record = false;
  }
}

void keyPressed() {
  if (key == 'r') {
    record = true;
    exit();
  }
}