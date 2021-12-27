class Ballon {
  float x;
  float y;
  float w;
  float speed;
  float updrift;
  float gravitation;

  Ballon(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
    updrift = 0.1;
  }

  void move() {
    if (y < 10 && speed < 0.5) {
      return;
    }
    if (y - ballonWidth/2 <= 0) {
      speed = speed * -0.95;
      //y = ballonWidth/2 ;
    }
    speed = speed + updrift;
    y = y - speed;
  }

  void display() {
    fill(255, 0, 0);
    ellipse(x, y, w, w);
  }
}
