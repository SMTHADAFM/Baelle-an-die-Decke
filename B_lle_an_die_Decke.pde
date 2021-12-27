ArrayList<Ballon> ballons;

void setup () {

  size (800, 600);
  ballons = new ArrayList<Ballon>();
}

void draw () {
  background(255, 255, 255);
  stroke(0);
  line(0, 0, width, 0);
  stroke(255, 0, 0);
  line(0, 3, width, 3);
  for (int i = ballons.size()-1; i >= 0; i--) {
    Ballon ballon = ballons.get(i);
    ballon.move();
    ballon.display();
  }
}

void mousePressed() {
  ballons.add(new Ballon(mouseX, mouseY));
}
