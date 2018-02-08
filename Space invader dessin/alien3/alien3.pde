int x = 500;
int y = 500;
int t = 50;
int alienMvt = 75;


void setup() {
  size(1000, 1000);
}


void draw() {
  background(0);
  fill(255);
  noStroke();
  rectMode(CENTER);
  rect(x, y, 12*t, 3*t);
  rect(x, y-2*t, 10*t, t);
  rect(x, y-3*t, 4*t, t);
  rect(x, y+3*t, 2*t, t);
  if (alienMvt < 50) {
    rect(x-2*t, y+2*t, 2*t, t);
    rect(x+2*t, y+2*t, 2*t, t);
    rect(x-3*t, y+3*t, 2*t, t);
    rect(x+3*t, y+3*t, 2*t, t);
    rect(x-5*t, y+4*t, 2*t, t);
    rect(x+5*t, y+4*t, 2*t, t);
    alienMvt++;
  } else if (alienMvt >= 50 && alienMvt < 100) {
    rect(x-2.5*t, y+2*t, 3*t, t);
    rect(x+2.5*t, y+2*t, 3*t, t);
    rect(x-4*t, y+3*t, 2*t, t);
    rect(x+4*t, y+3*t, 2*t, t);
    rect(x-3*t, y+4*t, 2*t, t);
    rect(x+3*t, y+4*t, 2*t, t);
    alienMvt++;
  }
  if (alienMvt == 100) {
    alienMvt = 0;
  }
  fill(0);
  rect(x-2*t, y, 2*t, t);
  rect(x+2*t, y, 2*t, t);
}