float x = 500;
float y = 500;
int t = 7;
int alienMvt = 1;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(125);
  alien(17*width/20, height/4);
  joueur(17*width/20, 3*height/4);
  //tireJoueur(3*width/4, 3*height/4);
  rectMode(CORNER);
  fill(0);
  textSize(24);
  text("Les aliens envaissent la terre, vous le seul rempare restant pour defendre l'humanité !", width/20, height/20, 14*width/20, 19*height/20);
}


void alien(float x, float y) {
  fill(255);
  noStroke();
  rectMode(CENTER);
  rect(x, y, 7*t, 4*t);
  rect(x+3*t, y+2.5*t, t, t);
  rect(x-3*t, y+2.5*t, t, t);
  rect(x+3*t, y-3.5*t, t, t);
  rect(x-3*t, y-3.5*t, t, t);
  rect(x+2*t, y-2.5*t, t, t);
  rect(x-2*t, y-2.5*t, t, t);
  fill(0);
  rect(x+2*t, y-0.5*t, t, t);
  rect(x-2*t, y-0.5*t, t, t);
  fill(255);
  if (alienMvt < 50) {
    rect(x+4*t, y, t, 2*t);
    rect(x-4*t, y, t, 2*t);
    rect(x+5*t, y+1.5*t, t, 3*t);
    rect(x-5*t, y+1.5*t, t, 3*t);
    rect(x+1.5*t, y+3.5*t, 2*t, t);
    rect(x-1.5*t, y+3.5*t, 2*t, t);
    alienMvt++;
  } else if (alienMvt >= 50 && alienMvt < 100) {
    rect(x+4*t, y+0.5*t, t, 3*t);
    rect(x-4*t, y+0.5*t, t, 3*t);
    rect(x+5*t, y-1*t, t, 4*t);
    rect(x-5*t, y-1*t, t, 4*t);
    rect(x+4*t, y+3.5*t, t, t);
    rect(x-4*t, y+3.5*t, t, t);
    alienMvt++;
  } 
  if (alienMvt == 100) {
    alienMvt = 0;
  }
}

void joueur(float x, float y) {
  rectMode(CENTER);
  noStroke();
  fill(255);
  rect(x, y-3.5*t, 3*t, 4*t);
  rect(x, y+5*t, 3*t, t);
  rect(x, y+2*t, 9*t, 5*t);
  rect(x, y-7*t, t, 3*t);
  rect(x, y+6.5*t, t, 2*t);
  rect(x+4*t, y-t, t, t);
  rect(x-4*t, y-t, t, t);
  rect(x, y-t, 5*t, t);
  rect(x+5*t, y+4*t, t, 3*t);
  rect(x-5*t, y+4*t, t, 3*t);
  rect(x+6*t, y+5*t, t, 3*t);
  rect(x-6*t, y+5*t, t, 3*t);
  rect(x+7*t, y+4*t, t, 5*t);
  rect(x-7*t, y+4*t, t, 5*t);
  fill(255, 0, 0);
  rect(x, y+0.5*t, t, 2*t);
  rect(x+t, y+1.5*t, t, 2*t);
  rect(x-t, y+1.5*t, t, 2*t);
  rect(x+2.5*t, y+5.5*t, 2*t, 2*t);
  rect(x-2.5*t, y+5.5*t, 2*t, 2*t);
  rect(x+2*t, y+4*t, t, t);
  rect(x-2*t, y+4*t, t, t);
  rect(x+4*t, y-2.5*t, t, 2*t);
  rect(x-4*t, y-2.5*t, t, 2*t);
  rect(x+7*t, y+0.5*t, t, 2*t);
  rect(x-7*t, y+0.5*t, t, 2*t);
  fill(0, 0, 255);
  rect(x+3*t, y, t, t);
  rect(x-3*t, y, t, t);
  rect(x+4*t, y+t, t, t);
  rect(x-4*t, y+t, t, t);
}