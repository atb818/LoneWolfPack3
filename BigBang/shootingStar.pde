void shootingStar() {
  float shootStarSize = 3f;

  noStroke();
  fill(255);
  ellipse(shootXPos, shootYPos, shootStarSize, shootStarSize);
}

void shootStarMove() {
  shootXPos++;
  shootYPos = shootYPos + random(-3f, 3f);
  if (shootXPos >= width) {
    shootXPos = 0;
    shootYPos = random(0, height);
  }
  if (shootYPos >= height) {
    shootXPos = random(0, width);
    shootYPos = 0;
  }
  if (shootYPos < 0) {
    shootXPos = random(0, width);
    shootYPos = height;
  }
}

void keyPressed() {
  //'shooting' stars...
  float starShine = random(5, 10);
  if (key == ' ' && numClicks >= 1 ) {
    noStroke();
    fill(85, 175, 255, 80);
    ellipse(shootXPos, shootYPos, starShine, starShine);
    fill(255);
    ellipse(shootXPos, shootYPos, 2, 2);
  }
}
