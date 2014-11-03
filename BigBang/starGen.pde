class starGen {

  float xPos;
  float yPos;
  PVector starGenPos;

  void starGenPrime(int _xPos, int _yPos) {
    xPos = _xPos;
    yPos = _yPos;
    starGenPos = new PVector (xPos, yPos);
  }

  void starGenUpdate() {
    stroke (255);
    point (xPos, yPos);
  }
}

