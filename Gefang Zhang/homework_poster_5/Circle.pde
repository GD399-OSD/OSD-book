//float R = random(255);
//float G = random (255);
//float B = random (255); 

  
class Circle{
  float x;
  float y;
  float r;
  
  boolean growing = true;
  
  Circle(float x_, float y_) {
    x = x_;
    y = y_;
    r=1;
  }
  
  void grow(){
    if(growing){
    r=r+1;
    }
  }
  
  boolean edges(){
    return (x + r > width || x - r < 0 || y+r > height || y-r < 0);
  }
  
  void show(){
    stroke(80,180,84);
    ellipse(x,y,r*2,r*2);
    noFill();
    strokeWeight(2);
  }


}