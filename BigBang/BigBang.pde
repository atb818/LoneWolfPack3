//Processing - Group Collab HW
//by Andrew, Leiah, Orien

boolean starsExist;

PVector centerPos;

PImage sun;
PImage mercury; 
PImage venus;
PImage earth;
PImage mars;
PImage jupiter;
PImage saturn;
PImage uranus;
PImage neptune;
PImage asteroid;

starGen [] starArray = new starGen [3000];

void setup() {
  size(800, 800);
  background(30, 4, 44);

  sun = loadImage("sun.png");
  mercury = loadImage("mercury.png");
  venus = loadImage("venus.png");
  earth = loadImage("earth.png");
  mars = loadImage("mars.png");
  jupiter = loadImage("jupiter.png");
  saturn = loadImage("saturn.png");
  uranus = loadImage("uranus.png");
  neptune = loadImage("neptune.png");

  centerPos = new PVector (width/2, height/2);

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

  //8th Circle
  noFill();
  strokeWeight(1);
  ellipse(centerPos.x, centerPos.y, 750, 750);

  //7th Circle
  ellipse(centerPos.x, centerPos.y, 650, 650);

  //6th Circle
  ellipse (centerPos.x, centerPos.y, 550, 550);

  //5th Circle
  ellipse (centerPos.x, centerPos.y, 450, 450);

  //4th Circle
  ellipse (centerPos.x, centerPos.y, 350, 350);

  //3rd Circle
  ellipse (centerPos.x, centerPos.y, 250, 250);

  //2nd Circle
  ellipse (centerPos.x, centerPos.y, 150, 150);

  //1st Circle
  ellipse (centerPos.x, centerPos.y, 50, 50);

  //Sun
  imageMode(CENTER);
  image(sun, centerPos.x, centerPos.y, 45, 45);

  //Mercury
  imageMode(CENTER);
  image(mercury, centerPos.x, centerPos.y - 25, 10, 10);

  //Venus
  imageMode(CENTER);
  image(venus, centerPos.x, centerPos.y - 75, 15, 15);

  //Earth
  imageMode (CENTER);
  image(earth, centerPos.x, centerPos.y - 125, 15, 15);

  //Mars
  imageMode(CENTER);
  image(mars, centerPos.x, centerPos.y - 175, 12, 12);

  //Jupiter
  imageMode(CENTER);
  image(jupiter, centerPos.x, centerPos. y - 225, 50, 60);

  //Saturn
  imageMode(CENTER);
  image(saturn, centerPos.x, centerPos.y - 275, 80, 50);

  //Uranus
  imageMode(CENTER);
  image(uranus, centerPos.x, centerPos.y - 325, 20, 35);
  
  //Neptune
  imageMode(CENTER);
  image(neptune, centerPos.x, centerPos.y - 375, 20, 20);
}



