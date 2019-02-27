class Bouton {
  float x, y;
  int t;
  color couleur;
  char signe;
  boolean dedans;

  Bouton(float x, float y, int t, color couleur, char signe) {
    this.x = x;
    this.y = y;
    this.t = t;
    this.couleur = couleur;
    this.signe = signe;
  }

  void dessiner() {
    fill(couleur);
    rectMode(CENTER);
    rect(x, y, t, t);
    fill(0);
    textSize(16);
    textAlign(CENTER, CENTER);
    text(signe, x, y);
  }

  Boolean sourisDedans() {
    if (mouseX < x+(t/2) && mouseX > x-(t/2) && mouseY < y+(t/2) && mouseY > y-(t/2)) {
      dedans = true;
    } else {
      dedans = false;
    } 
    return dedans;
  }
}