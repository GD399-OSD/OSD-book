int y = -200; 
int max_num_col = 100;
int num_col = floor(random(1,max_num_col)); 
int[] xPosition;   
int[] yOffset; 
PFont font;
PImage img;
float green;
void setup(){
  size(620, 930);
  frameRate(60);
  smooth();

  //img = loadImage("matrix3.jpg");
  //img = loadImage("lighting.png");
 
  
  font = createFont("M+ 1m light", 10, true);
  textFont(font);
 
  xPosition   = new int[num_col];
  yOffset = new int[num_col]; 
 
  for (int i=0; i<num_col; i=i+1) {
    xPosition[i]   = floor(random(width/16))*16;
    yOffset[i] = floor(random(-height,height));
  }
}

void draw(){
  
  
  fill(0,10); 
  noStroke();
  rect(0,0,width,height);  
 

  fill(57,175,25); 
  textSize(16);
  
  
 
  for (int i=0; i<num_col; i=i+1) {
    int i_char = floor(random(500));
    char T = char(i_char);
    text(T, xPosition[i], y+yOffset[i]);
  }
 
  y = y + floor(16/2); 
  if (y>16*1.2) {
    y = -200;
    num_col = floor(random(1,max_num_col));
    xPosition   = new int[num_col];
    yOffset = new int[num_col];
    for (int i=0; i<num_col; i=i+1) {
      xPosition[i]   = floor(random(width/16))*16;
      yOffset[i] = floor(random(-height,height));
    }
  }
  
  if (mouseY>700){
  fill(57,175,25); 
  textSize(36);
  text("Your mind makes it real.",150,850);
  }
  
  if (mouseY>300 && mouseY<390){
  noFill();
  stroke(57,175,25);
  strokeWeight(3);
  ellipse(0,0,900,900);
  } else if (mouseY>200 && mouseY<290){
  noFill();
  stroke(57,175,25);
  strokeWeight(2);
  ellipse(0,0,600,600);
  } else if (mouseY>100 && mouseY<190){
  noFill();
  stroke(57,175,25);
  strokeWeight(1);
  ellipse(0,0,300,300);
  } else if (mouseY>400 && mouseY<490){
  noFill();
  stroke(57,175,25);
  strokeWeight(5);
  ellipse(0,0,1200,1200);
  } else if (mouseY>500 && mouseY<590){
  noFill();
  stroke(57,175,25);
  strokeWeight(5);
  ellipse(0,0,1500,1500);
  } else if (mouseY>600 && mouseY<690){
  noFill();
  stroke(57,175,25);
  strokeWeight(5);
  ellipse(0,0,1800,1800);
  }
}