float xPieton, yPieton;
float tPieton = 15;
float vPieton = 0.4;

float xVoiture, yVoiture;
float tVoiture = 50;
float vVoiture = 0;
float aVoiture = 0.05;
float vMax = 5;

boolean pietonVivant = true;

void dessinerPaysage() {
  background(#9CBA7F);
  // route
  rectMode(CENTER);
  noStroke();
  fill(0);
  rect(width / 2, height / 2, width, tVoiture);
  // passage pieton
  fill(255);
  for (float y = (height - tVoiture) / 2 + 5; y < (height + tVoiture) / 2; y += 10) {
    rect(width / 2, y, tVoiture, 5);
  }
}

void dessinerPieton() {
  ellipseMode(CENTER);
  noStroke();
  fill(127);
  ellipse(xPieton, yPieton, tPieton, tPieton);
}

void bougerPieton() {
  yPieton += vPieton;
  if (yPieton > height) {
    yPieton = 0;
  }
}

void dessinerVoiture() {
  rectMode(CENTER);
  noStroke();
  fill(#ADD8E6);
  rect(xVoiture, yVoiture, tVoiture, tVoiture / 2);
}

void accelerer() {
  vVoiture = constrain(vVoiture + aVoiture, 0, vMax);
}

void freiner() {
  vVoiture = constrain(vVoiture - aVoiture, 0, vMax);
}  

void bougerVoiture() {
  xVoiture += vVoiture;
  if (xVoiture > width) {
    xVoiture = 0;
  }
  hit();
  if (pietonVivant == true) {
    accelerer();
  } else { 
    freiner();
  }
}



boolean hit() {
  if (xVoiture+tVoiture/2>xPieton && yVoiture+tVoiture/4>yPieton && xVoiture-tVoiture/2<xPieton && yVoiture-tVoiture/4<yPieton) {
    pietonVivant = false;
    println("aie");
    //delay(500);
  }
  return pietonVivant;
}

void setup() {
  size(600, 200);
  xPieton = width / 2;
  yPieton = 0;
  xVoiture = 0;
  yVoiture = height / 2;
}

void draw() {
  dessinerPaysage();
  dessinerPieton();
  hit();
    if (pietonVivant ==true) {
    bougerPieton();
  } else if (pietonVivant == false) {
    freiner();
    fill(255, 0, 0);
    ellipse(width/2, height/2, 50, 50);
  }
  dessinerVoiture();
  bougerVoiture();
  

}