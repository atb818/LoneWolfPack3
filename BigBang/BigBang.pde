//Processing - Group Collab HW
//by Andrew, Leiah, Orien


//Bruce Willis is the best

boolean starsExist;

starGen [] starArray = new starGen [3000];
float shootXPos;
float shootYPos;

void setup() {
  size(800, 800);
  background(30, 4, 44);

  shootXPos = 0;
  shootYPos = random(0, height);

  //Initialize b/g star generation
  starsExist = false;
  print("starsExist = false. ");
  for (int i=0; i<starArray.length; i++) {
    starArray[i] = new starGen();
    starArray[i].starGenPrime(int(random(0, width)), int(random(0, height)));
  }
}

void draw() {
  //shooting star movement
  shootXPos++;
  shootYPos = shootYPos + random(-2f, 2f);
  if (shootXPos >= width) {
    shootXPos = 0;
    shootYPos = random(0, height);
  }
}

void mouseClicked() {
  //spawn bg stars
  if (starsExist == false) {
    bigBang();
  }

  //spawn shooting star
  if (starsExist == true) {
    shootingStar();
  }
}
void keyPressed() {
  float starShine = random(5, 10);
    if (key == CODED) {
    if (keyCode == RIGHT) {
      noStroke();
      fill(85, 175, 255, 80);
      ellipse(shootXPos, shootYPos, starShine, starShine);
      fill(255);
      ellipse(shootXPos, shootYPos, 2, 2);
    }
  }
}



void bigBang() {
  //on click, explode/randomly generate stars/particles
  starsExist = true;
  //call b/g star generation
  for (int i=0; i<starArray.length; i++) {
    starArray[i].starGenUpdate();
  }
  print("starsExist = true. ");
}

