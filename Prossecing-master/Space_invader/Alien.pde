class Alien {
  // attributs
  float x, y;
  float v, t;
  color c;
  int alienMvt;
  int i = 0;
  
  // constructeur
  Alien(int x, int y, float v, float t, color c) {
    this.x = x;
    this.y = y;
    this.v = v;
    this.t = t;
    this.c = c;
    alienMvt = 0;
  }

  Alien(int x, int y, float v, float t) {
    this(x, y, v, t , 255);
  }

  Alien() {
    alienMvt = 0;
  }

  // méthodes
  void alien1(float x, float y) {
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 7*t, 4*t);
    rect(x+3*t, y+2.5*t, t, t);
    rect(x-3*t, y+2.5*t, t, t);
    rect(x+3*t, y-3.5*t, t, t);
    rect(x-3*t, y-3.5*t, t, t);
    rect(x+2*t, y-2.5*t, t, t);
    rect(x-2*t, y-2.5*t, t, t);
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
    fill(0);
    rect(x+2*t, y-0.5*t, t, t);
    rect(x-2*t, y-0.5*t, t, t);
  }

  void alien2() {
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 8*t, 2*t);
    rect(x, y-2.5*t, 4*t, t);
    rect(x, y-3.5*t, 2*t, t); 
    rect(x, y-1.5*t, 6*t, t);
    if (alienMvt < 50) {
      rect(x+1.5*t, y+3.5*t, t, t); 
      rect(x+3.5*t, y+3.5*t, t, t);
      rect(x-1.5*t, y+3.5*t, t, t);
      rect(x-3.5*t, y+3.5*t, t, t);
      rect(x, y+2.5*t, 2*t, t);
      rect(x+1.5*t, y+1.5*t, 1*t, t); 
      rect(x-1.5*t, y+1.5*t, 1*t, t); 
      rect(x+2.5*t, y+2.5*t, 1*t, t); 
      rect(x-2.5*t, y+2.5*t, 1*t, t); 
      alienMvt++;
    } else if (alienMvt >= 50 && alienMvt < 100) {
      rect(x, y+1.5*t, 2*t, t);
      rect(x+2.5*t, y+1.5*t, 1*t, t); 
      rect(x-2.5*t, y+1.5*t, 1*t, t); 
      rect(x+3.5*t, y+2.5*t, 1*t, t); 
      rect(x-3.5*t, y+2.5*t, 1*t, t); 
      rect(x+2.5*t, y+3.5*t, t, t);
      rect(x-2.5*t, y+3.5*t, t, t);
      alienMvt++;
    }
    if (alienMvt == 100) {
      alienMvt = 0;
    }
    fill(0);
    rect(x-1.5*t, y-0.5*t, t, t);
    rect(x+1.5*t, y-0.5*t, t, t);
  }

  void alien3() {
    fill(c);
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

  void explosionAlien() {
    rectMode(CENTER);
    rect(x+t, y+2*t, t, t);
    rect(x-t, y+2*t, t, t);
    rect(x+t, y-3*t, t, t);
    rect(x-t, y-3*t, t, t);
    rect(x+2*t, y+3*t, t, t);
    rect(x-2*t, y+3*t, t, t);
    rect(x+2*t, y-4*t, t, t);
    rect(x-2*t, y-4*t, t, t);
    rect(x+3*t, y+t, t, t);
    rect(x-3*t, y+t, t, t);
    rect(x+3*t, y-t, t, t);
    rect(x-3*t, y-t, t, t);
    rect(x+4*t, y+2*t, t, t);
    rect(x-4*t, y+2*t, t, t);
    rect(x+4*t, y-2*t, t, t);
    rect(x-4*t, y-2*t, t, t);
    rect(x+5*t, y+3*t, t, t);
    rect(x-5*t, y+3*t, t, t);
    rect(x+5*t, y-3*t, t, t);
    rect(x-5*t, y-3*t, t, t);
    rect(x+5.5*t, y, 2*t, t);
    rect(x-5.5*t, y, 2*t, t);
  }
}