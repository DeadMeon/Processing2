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
  rect(x, y, t, t); 
  rect(x, y-2*t, t, t); 
  rect(x, y+2*t, t, t); 
  if (alienMvt < 50) {
    rect(x+t, y+t, t, t); 
    rect(x-t, y-t, t, t); 
    alienMvt++;
  } else if (alienMvt >= 50 && alienMvt < 100) {
    rect(x-t, y+t, t, t); 
    rect(x+t, y-t, t, t); 
    alienMvt++;
  }
  if (alienMvt == 100) {
    alienMvt = 0;
  }
}