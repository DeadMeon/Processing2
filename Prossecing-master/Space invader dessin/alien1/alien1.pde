int x = 500;
int y = 500;
int t = 50;
int alienMvt = 1;


void setup() {
  size(1000, 1000);
}


void draw() {
  background(0);
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