//Processing - Group Collab HW
//by Andrew, Leiah, Orien


//Bruce Willis is the best

boolean starsExist;


starGen [] starArray = new starGen [3000];

void setup() {
  size(800, 800);
  background(30, 4, 44);

  //Initialize b/g star generation
  starsExist = false;
  print("starsExist = false. ");
  for (int i=0; i<starArray.length; i++) {
    starArray[i] = new starGen();
    starArray[i].starGenPrime(int(random(0, width)), int(random(0, height)));
  }
}

void draw() {
}

void mouseClicked() {
  if (starsExist == false) {
    bigBang();
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

//Arc
noFill();
  stroke(255);
  strokeWeight(1);
  float x = width/2;
  float y = 0;
  float d = width - 200;
  pushMatrix ();
  translate(width, height);
  rotate(PI);
  arc(x, y, d-20, d-20, 0, PI);
  popMatrix();
  }

