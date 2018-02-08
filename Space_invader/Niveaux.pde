class Niveaux {
  // attributs
  int niv = 0;

  // constructeur(s)
  Niveaux() {
  }

  // méthodes
  void niveaux() {
    if (niv == 0) {
      niveaux00();
    } else if (niv == 1) {
      niveaux01();
    } else if (niv == 1) {
      niveaux02();
    } else if (niv == 1) {
      niveaux03();
    } else if (niv == 1) {
      niveaux04();
    } else if (niv == 1) {
      niveaux05();
    }
  }


  void niveaux00() {
    alien.alien1(17*width/20, height/4);
    joueur.dessin2(17*width/20, 3*height/4);
    //tireJoueur(3*width/4, 3*height/4);
    rectMode(CORNER);
    fill(0);
    textSize(24);
    text("Les aliens envaissent la terre, vous le seul rempare restant pour defendre l'humanité !", width/20, height/20, 14*width/20, 19*height/20);
  }
  
  void niveaux01() {
  }
  void niveaux02() {
  }
  void niveaux03() {
  }
  void niveaux04() {
  }
  void niveaux05() {
  }
}