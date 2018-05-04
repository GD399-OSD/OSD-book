PImage img;
PImage img2;
PImage img3;
import processing.sound.*;
SoundFile file;
String audioName="gun.mp3";
String path;
void setup(){
  
  size(620, 930);
  frameRate(60);
  smooth();
  
  img = loadImage("DEADPOOL4.png");
  img3 = loadImage("DEADPOOL2-02.png");
  img2 = loadImage("bullethole.png");
  
  background(18,19,19);
  
  
  path=sketchPath(audioName);
  file = new SoundFile(this, path);
}

void draw(){
  if (mousePressed==true) {
     image(img3, mouseX/2-120, mouseY/2-80, 468, 675);
 }
  
  image(img, 0, 0, width, height);
  
  
  if (mousePressed==true) {
     image(img2, mouseX-100, mouseY-50, 192, 108);
     file.play();
 } 
 
}