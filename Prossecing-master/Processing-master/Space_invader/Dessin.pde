class Dessin 
{
   // attributs
  float x, y;
  int t;
  color c;
  int alienMvt;

  // constructeur
  Dessin() {
    this.x = 100;
    this.y = 200;
    this.t = param.t;
    this.c = 255;
    alienMvt = 0;
  }

  // dessin alien 1
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


  // dessin alien 2
  void alien2(float x, float y) {
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


  // dessin alien 3
  void alien3(float x, float y) {
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


  // dessin alien explosion
  void explosionAlien(float x, float y) {
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
  
  
  
  // dessin du vaisseau vintage
  void dessin1(float x, float y) 
  {
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(x, y, 13*t, 3*t);
    rect(x, y-2*t, 11*t, t);
    rect(x, y-2*t, 11*t, t);
    rect(x, y-3.5*t, 3*t, 2*t);
    rect(x, y-5*t, t, t);
  }


  // dessin du vaisseau normal
  void dessin2(float x, float y) {
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
    fill(255);
  }


}