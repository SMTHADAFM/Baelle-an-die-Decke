class Ballon {
  float x;
  float y;
  float w = 48;
  float speed;
  float updrift;

  Ballon(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    speed = 0;
    updrift = 0.2;    
  }
  
  void move() {
    // Set new Position
    speed = speed + updrift;
    y -= speed;
    
    if(y < 0) {
     speed = speed * -0.55;
     y = 0;
    }
  }

  void display() {
    fill(255, 0, 0);
    ellipse(x, y, w, w);
  }
}
