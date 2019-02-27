// Variable
int laserHauteur = 0;
int click = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  rectMode(CORNER);

//Boucle
  strokeWeight(1);

// manche
  stroke(0);
  fill(127);
  rect(180, 200, 30, 80);
  fill(180);
  rect(185, 200, 20, 30);
  fill(255, 0, 0);
  ellipse(195, 230, 5, 5);
  fill(0, 255, 0);
  ellipse(195, 240, 5, 5);
  fill(174, 239, 252);
  ellipse(195, 250, 5, 5);
  stroke(0);
  noFill();
  rect(187, 260, 15, 15);
  laserOuverture();
}

//Click
void mousePressed() {
  if (click == 0) {
    click = 1;
  } else {
    click = 0;
  }
}

//Laser
void laserOuverture() {
  noStroke();
  fill(0, 255, 0, 180);
  rectMode(CORNERS);
  if (click == 1) {
    while (laserHauteur < 200) {
      rect(180, laserHauteur, 210, 200);
      strokeWeight(3);  
      laserHauteur++;
    }
  } else {
    rect(180, laserHauteur, 210, 200);
    strokeWeight(3);
    while (laserHauteur > 0) {
      laserHauteur--;
      rect(180, laserHauteur, 210, 200);
      strokeWeight(3);
    }
  }
}