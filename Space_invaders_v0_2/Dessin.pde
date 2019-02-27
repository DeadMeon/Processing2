class Dessin
{
  int alienMvt;

  Dessin()
  {
    this.alienMvt = param.alienMvt;
  }



  void balle(int i) //
  {
    float x = param.xBalle[i];
    float y = param.yBalle[i];
    int t = param.tBalle[i];

    // dessin balle 
    fill(230);
    rect(x, y-3*t, t, 3*t);
  }

  void vie(int i)
  {
    float x = param.xAlien[i];
    float t = param.taille[i];
    float y = param.yAlien[i]- 5.5*t;
    float vie = map(param.vie[i], 0, param.maxVie, 0, 9*t);

    // dessin barre de vie
    strokeWeight(1);
    stroke(230);
    fill(0, 100);
    rectMode(CENTER);
    rect(x, y, 9*t, t,t);
    rectMode(CORNER);
    fill(230, 0, 0, 75);
    rect(x-4.5*t, y-0.5*t, vie, t,t);
  }




  void explo(int i) //
  {
    float x = param.xAlien[i];
    float y = param.yAlien[i];
    int t = param.taille[i];

    // dessin explosion d'un alien
    fill(230);
    stroke(230);
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

  void alien(int i) //
  {
    float x = param.xAlien[i];
    float y = param.yAlien[i];
    int t = param.taille[i];

    // dessin alien numero 1
    fill(230);
    stroke(230);
    rectMode(CENTER);
    rect(x, y, 7*t, 4*t);
    rect(x+3*t, y+2.5*t, t, t);
    rect(x-3*t, y+2.5*t, t, t);
    rect(x+3*t, y-3.5*t, t, t);
    rect(x-3*t, y-3.5*t, t, t);
    rect(x+2*t, y-2.5*t, t, t);
    rect(x-2*t, y-2.5*t, t, t);
    // partie animée
    if (alienMvt < 50 * param.nbAlien) {
      rect(x+4*t, y, t, 2*t);
      rect(x-4*t, y, t, 2*t);
      rect(x+5*t, y+1.5*t, t, 3*t);
      rect(x-5*t, y+1.5*t, t, 3*t);
      rect(x+1.5*t, y+3.5*t, 2*t, t);
      rect(x-1.5*t, y+3.5*t, 2*t, t);
      alienMvt++;
    } else if (alienMvt >= 50 * param.nbAlien && alienMvt < 100 * param.nbAlien) {
      rect(x+4*t, y+0.5*t, t, 3*t);
      rect(x-4*t, y+0.5*t, t, 3*t);
      rect(x+5*t, y-1*t, t, 4*t);
      rect(x-5*t, y-1*t, t, 4*t);
      rect(x+4*t, y+3.5*t, t, t);
      rect(x-4*t, y+3.5*t, t, t);
      alienMvt++;
    } 
    if (alienMvt == 100 * param.nbAlien) {
      alienMvt = 0;
    }
    fill(0);
    rect(x+2*t, y-0.5*t, t, t);
    rect(x-2*t, y-0.5*t, t, t);
  }


  // dessin alien 1
  void alien1(int i) {
    float x = param.xAlien[i];
    float y = param.yAlien[i];
    int t = param.taille[i];

    // dessin
    fill(230);
    stroke(230);
    rectMode(CENTER);
    rect(x, y, 7*t, 4*t);
    rect(x+3*t, y+2.5*t, t, t);
    rect(x-3*t, y+2.5*t, t, t);
    rect(x+3*t, y-3.5*t, t, t);
    rect(x-3*t, y-3.5*t, t, t);
    rect(x+2*t, y-2.5*t, t, t);
    rect(x-2*t, y-2.5*t, t, t);
    // partie animée
    if (alienMvt < 50 * param.nbAlien) {
      rect(x+4*t, y, t, 2*t);
      rect(x-4*t, y, t, 2*t);
      rect(x+5*t, y+1.5*t, t, 3*t);
      rect(x-5*t, y+1.5*t, t, 3*t);
      rect(x+1.5*t, y+3.5*t, 2*t, t);
      rect(x-1.5*t, y+3.5*t, 2*t, t);
      alienMvt++;
    } else if (alienMvt >= 50 * param.nbAlien && alienMvt < 100 * param.nbAlien) {
      rect(x+4*t, y+0.5*t, t, 3*t);
      rect(x-4*t, y+0.5*t, t, 3*t);
      rect(x+5*t, y-1*t, t, 4*t);
      rect(x-5*t, y-1*t, t, 4*t);
      rect(x+4*t, y+3.5*t, t, t);
      rect(x-4*t, y+3.5*t, t, t);
      alienMvt++;
    } 
    if (alienMvt == 100 * param.nbAlien) {
      alienMvt = 0;
    }
    fill(0);
    rect(x+2*t, y-0.5*t, t, t);
    rect(x-2*t, y-0.5*t, t, t);
  }


  // dessin alien 2
  void alien2(int i) {
    float x = param.xAlien[i];
    float y = param.yAlien[i];
    int t = param.taille[i];

    // dessin
    fill(230);
    stroke(230);
    rectMode(CENTER);
    rect(x, y, 8*t, 2*t);
    rect(x, y-2.5*t, 4*t, t);
    rect(x, y-3.5*t, 2*t, t); 
    rect(x, y-1.5*t, 6*t, t);
    // partie animée
    if (alienMvt < 50 * param.nbAlien) {
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
    } else if (alienMvt >= 50 * param.nbAlien && alienMvt < 100 * param.nbAlien) {
      rect(x, y+1.5*t, 2*t, t);
      rect(x+2.5*t, y+1.5*t, 1*t, t); 
      rect(x-2.5*t, y+1.5*t, 1*t, t); 
      rect(x+3.5*t, y+2.5*t, 1*t, t); 
      rect(x-3.5*t, y+2.5*t, 1*t, t); 
      rect(x+2.5*t, y+3.5*t, t, t);
      rect(x-2.5*t, y+3.5*t, t, t);
      alienMvt++;
    }
    if (alienMvt == 100 * param.nbAlien) {
      alienMvt = 0;
    }
    fill(0);
    rect(x-1.5*t, y-0.5*t, t, t);
    rect(x+1.5*t, y-0.5*t, t, t);
  }


  // dessin alien 3
  void alien3(int i) {
    float x = param.xAlien[i];
    float y = param.yAlien[i];
    int t = param.taille[i];

    // dessin
    fill(230);
    stroke(230);
    rectMode(CENTER);
    rect(x, y, 12*t, 3*t);
    rect(x, y-2*t, 10*t, t);
    rect(x, y-3*t, 4*t, t);
    rect(x, y+3*t, 2*t, t);
    // partie animée
    if (alienMvt < 50 * param.nbAlien) {
      rect(x-2*t, y+2*t, 2*t, t);
      rect(x+2*t, y+2*t, 2*t, t);
      rect(x-3*t, y+3*t, 2*t, t);
      rect(x+3*t, y+3*t, 2*t, t);
      rect(x-5*t, y+4*t, 2*t, t);
      rect(x+5*t, y+4*t, 2*t, t);
      alienMvt++;
    } else if (alienMvt >= 50 * param.nbAlien && alienMvt < 100 * param.nbAlien) {
      rect(x-2.5*t, y+2*t, 3*t, t);
      rect(x+2.5*t, y+2*t, 3*t, t);
      rect(x-4*t, y+3*t, 2*t, t);
      rect(x+4*t, y+3*t, 2*t, t);
      rect(x-3*t, y+4*t, 2*t, t);
      rect(x+3*t, y+4*t, 2*t, t);
      alienMvt++;
    }
    if (alienMvt == 100 * param.nbAlien) {
      alienMvt = 0;
    }
    fill(0);
    rect(x-2*t, y, 2*t, t);
    rect(x+2*t, y, 2*t, t);
  }


  // dessin du vaisseau vintage
  void dessin1(float x, float y) 
  {
    int t = param.taille[1];

    // dessin
    stroke(230);
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
    int t = param.taille[1];

    // dessin
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

  void alien1(float x, float y)
  {
    int t = 10;

    // dessin
    fill(230);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 7*t, 4*t);
    rect(x+3*t, y+2.5*t, t, t);
    rect(x-3*t, y+2.5*t, t, t);
    rect(x+3*t, y-3.5*t, t, t);
    rect(x-3*t, y-3.5*t, t, t);
    rect(x+2*t, y-2.5*t, t, t);
    rect(x-2*t, y-2.5*t, t, t);
    // partie animée
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
}