//Processing - Group Collab HW
//by Andrew, Leiah, Orien



PVector centerPos;

int numClicks = 0;

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
boolean asteroidIs = false;


starGen [] starArray = new starGen [3000];
float shootXPos;
float shootYPos;

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

  shootXPos = 0;
  shootYPos = random(0, height);

  //Initialize b/g star generation
  print("starsExist = false. ");
  for (int i=0; i<starArray.length; i++) {
    starArray[i] = new starGen();
    starArray[i].starGenPrime(int(random(0, width)), int(random(0, height)));
  }
}

void draw() {
  //shooting star movement
  shootStarMove();
//  shootXPos++;
//  shootYPos = shootYPos + random(-2f, 2f);
//  if (shootXPos >= width) {
//    shootXPos = 0;
//    shootYPos = random(0, height);
//  }
}

void mousePressed() {
  numClicks++;

  //spawn bg stars
  if (numClicks == 1) {
    bigBang();
  }

  //sun/planets
  if (numClicks == 2) {
    spawnSun();
  }

  if (numClicks == 3) {
    spawnMercury();
  }

  if (numClicks == 4) {
    spawnVenus();
  }

  if (numClicks == 5) {
    spawnEarth();
  }

  if (numClicks == 6) {
    spawnMars();
  }

  if (numClicks == 7) {
    spawnJupiter();
  }

  if (numClicks == 8) {
    spawnSaturn();
  }

  if (numClicks == 9) {
    spawnUranusHehe();
  }

  if (numClicks == 10) {
    spawnNeptune();
  }
}

//SPAWN PLANETS--

void bigBang() {
  //on click, explode/randomly generate stars/particles
  //call b/g star generation
  for (int i=0; i<starArray.length; i++) {
    starArray[i].starGenUpdate();
  }
  print("starsExist = true. ");
}

void spawnSun () {

  //Sun
  imageMode(CENTER);
  image(sun, centerPos.x, centerPos.y, 45, 45);
}

void spawnMercury() {
  //1st Circle
  noFill();
  strokeWeight(1);
  ellipse (centerPos.x, centerPos.y, 50, 50);

  //Mercury
  imageMode(CENTER);
  image(mercury, centerPos.x, centerPos.y - 25, 10, 10);
}

void spawnVenus() {
  //2nd Circle
  noFill();
  strokeWeight(1);
  ellipse (centerPos.x, centerPos.y, 150, 150);

  //Venus
  imageMode(CENTER);
  image(venus, centerPos.x, centerPos.y - 75, 15, 15);
}

void spawnEarth() {
  //3rd Circle
  noFill();
  strokeWeight(1);
  ellipse (centerPos.x, centerPos.y, 250, 250);

  //Earth
  imageMode (CENTER);
  image(earth, centerPos.x, centerPos.y - 125, 15, 15);
}

void spawnMars() {
  //4th Circle
  noFill();
  strokeWeight(1);
  ellipse (centerPos.x, centerPos.y, 350, 350);

  //Mars
  imageMode(CENTER);
  image(mars, centerPos.x, centerPos.y - 175, 12, 12);
}

void spawnJupiter() {
  //5th Circle
  noFill();
  strokeWeight(1);
  ellipse (centerPos.x, centerPos.y, 450, 450);

  //Jupiter
  imageMode(CENTER);
  image(jupiter, centerPos.x, centerPos. y - 225, 50, 60);
}

void spawnSaturn() {
  //6th Circle
  noFill();
  strokeWeight(1);
  ellipse (centerPos.x, centerPos.y, 550, 550);

  //Saturn
  imageMode(CENTER);
  image(saturn, centerPos.x, centerPos.y - 275, 80, 50);
}

void spawnUranusHehe() {
  //7th Circle
  noFill();
  strokeWeight(1);
  ellipse(centerPos.x, centerPos.y, 650, 650);

  //Uranus
  imageMode(CENTER);
  image(uranus, centerPos.x, centerPos.y - 325, 20, 35);
}

void spawnNeptune() {
  //8th Circle
  noFill();
  strokeWeight(1);
  ellipse(centerPos.x, centerPos.y, 750, 750);

  //Neptune
  imageMode(CENTER);
  image(neptune, centerPos.x, centerPos.y - 375, 20, 20);
}

