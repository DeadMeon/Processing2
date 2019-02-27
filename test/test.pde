int x = 0;
int y = 0;
int t = 9;

void setup() {
  size(100, 150);
}

void vaisseaux(int x, int y, int t) {
  rect(x, y, t, t);
  rect(x+10, y+10, t, t);
  rect(x+10, y, t, t);
  rect(x, y+10, t, t);
}

float deplacement(int x, int y, int t) {
  for (int i = 0; i < t*10; i = i+5) {
    for (int j = 0; j < t*10; j = j+5) {
      x = j*10;
      return x;
    }
    y= i*10;
    return y;
  }
}

void draw() {
  vaisseaux(x, y, t);
  deplacement(x, y, t);
}