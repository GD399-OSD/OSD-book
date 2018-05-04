//import processing.sound.*;
//SoundFile file;
//String audioName="Bubbling.mp3";
//String path;
ArrayList<Circle>circles;
ArrayList<PVector> spots;
PImage img;
PImage img2;
PFont f;
PImage img3;

void setup(){
  size(620,930);
  spots=new ArrayList<PVector>();
  img=loadImage("ggt2.png");
  img2=loadImage("bar.png");
  img3=loadImage("cup.png");
  img.loadPixels();
  f=createFont("m+ 1m",16,true);
  textAlign(CENTER,BASELINE);
  
  frameRate(120);
  
  for (int x=0; x<img.width; x++){
    for(int y = 0; y<img.height ; y++){
      int index = x+y*img.width;
      color c = img.pixels[index];
      float b = brightness(c);
      if ( b> 1){
        spots.add(new PVector(x,y));
      }
    }
   }
   
   circles= new ArrayList<Circle>();
   
   //path=sketchPath(audioName);
   //file = new SoundFile(this, path);
}

void draw(){
  
  background(249);
  textSize(16);
  //file.play();
  
  image(img2,0,0,width,height);
  image(img3,0,0,width,height);
  
  int total = 50;
  int count=0;
  int attempts=0;
  
  while(count<total){
   Circle newC = newCircle();
  if(newC!=null){
    circles.add(newC);
    count++;
  }
  attempts++;
  if(attempts >1000){
    noLoop();
    println("FINISHED");
    break;
  }
  }
  
 for (Circle c : circles){
    if(c.growing){
    if(c.edges()){
      c.growing=false;
    } else{
      for(Circle other : circles){
        if( c!=other){
        float d= dist(c.x,c.y,other.x,other.y);
        if ( d-2< c.r + other.r){
          c.growing=false;
          break;
         }
        }
      }
    }
  }
  c.show();
  c.grow();
  }
}

Circle newCircle(){
  int r = int(random(0,spots.size()));
  PVector spot = spots.get(r);
  
  float x=spot.x+30;
  float y =spot.y+30;
  
  boolean valid=true;
  for (Circle c : circles){
    float d= dist(x,y,c.x,c.y);
    if (d < c.r){
      valid=false;
      break;
    }
  }
  
  if(valid){
  return new Circle(x,y);
  } else {
    return null;
  }
}