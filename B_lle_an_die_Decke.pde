ArrayList<Ballon> ballons;
int ballonWidth = 10;

void setup () {

  size (600, 600);
  ballons = new ArrayList<Ballon>();
}

void draw () {
  background(255, 255, 255);
  stroke(0);
  line(0, 0, 600, 0);
  stroke(0);
  line(0,10,600,10);
  for (int i = ballons.size()-1; i >= 0; i--) {
    Ballon ballon = ballons.get(i);
    ballon.move();
    ballon.display();
  }
}

void mousePressed() {
  ballons.add(new Ballon(mouseX, mouseY, ballonWidth));
}
