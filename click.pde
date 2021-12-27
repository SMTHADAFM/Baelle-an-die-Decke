class Ballon {
  float x;
  float y;
  float w;
  float speed;
  float updrift;

  Ballon(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
    updrift = -0.1;
  }

  void move() {

    if (y - ballonWidth <= 0) {
      y = ballonWidth + 0;
    } else {
      speed = speed + updrift;
      y = y + speed;
    }
  }

  void display() {
    fill(255, 0, 0);
    ellipse(x, y, w, w);
  }
}
