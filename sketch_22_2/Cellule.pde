final int MUR = 0;
final int VIDE = 1;

class Cellule {
  float x, y; // position du centre
  float r;    // "rayon" du carré
  int type;   // MUR ou VIDE

  Cellule(float x, float y, float r, int type) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.type = type;
  }

  void dessiner() {
    strokeWeight(1);
    stroke(192);
    if (type == MUR) {
      fill(0);
    } else {
      fill(255);
    }
    rectMode(RADIUS);
    rect(x, y, r, r);
  }
}