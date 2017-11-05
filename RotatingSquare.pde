
class RotatingSquare {
  float rotation, delta;
  float size;
  int x,y;
  
  RotatingSquare(float size, int x, int y) {
    this.rotation = random(360);
    this.size = size;
    this.delta = random(1,4);
    this.x = x;
    this.y = y;
  }
  
  void update(float size) {
    rotation += delta;
    this.size = size;
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    strokeWeight(10);
    stroke(255);
    fill(0);
    rotate(radians(rotation));
    translate(-size/2, -size/2);
   
    rect(0,0, size, size);
    
    popMatrix();
  }
}