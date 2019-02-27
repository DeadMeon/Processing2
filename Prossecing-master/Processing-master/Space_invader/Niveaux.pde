class Niveaux 
{
  // attributs
  int niv;
  int bg;
  int comp;
  float xAlien, yAlien;

  // constructeur(s)
  Niveaux() {
    bg = param.bg;
    niv = 0;
    comp = 0;
    xAlien = 2*width/4;
    yAlien = 4*height/20;
  }

  // méthodes
  // choix des niveaux
  void niveaux() {
    background(bg);
    decor.etoile();
    if (niv == 0) {
      niveaux00();
    } else if (niv == 1) {
      niveaux01();
    } else if (niv == 2) {
      niveaux02();
    } else if (niv == 3) {
      niveaux03();
    } else if (niv == 4) {
      niveaux04();
    } else if (niv == 5) {
      niveaux05();
    }
  }


  // mise en scene
  void niveaux00() 
  {
    dessin.alien1(17*width/20, height/4);
    dessin.dessin2(17*width/20, 3*height/4);

    rectMode(CORNER);
    fill(230);
    textSize(24);
    text("Les aliens envaissent la terre, vous le seul rempare restant pour defendre l'humanité !", width/20, height/20, 14*width/20, 19*height/20);
  }


  // information d'utiliation
  void niveaux01() 
  {
    dessin.alien1(17*width/20, height/4);
    dessin.dessin2(17*width/20, 3*height/4);

    rectMode(CORNER);
    fill(230);
    textSize(24);
    text("Vous pouvez tirer sur les Aliens grâce a la touche Espace et vous deplacer avec Z,Q,S,D ou les fleches directionnel", width/20, height/20, 14*width/20, 19*height/20);
  }


  // niveau 1 
  void niveaux02() 
  {
    fill(230);
    textSize(24);
    text("Score : " + param.score, 16*width/20, height/20);
    
    scoreCount(10, 10, 0);
  }


  // niveau 2
  void niveaux03() 
  {
    fill(230);
    textSize(24);
    text("Score : " + param.score, 16*width/20, height/20);

    scoreCount(500, 100, 3);
  }


  // niveau 3
  void niveaux04() 
  {
    fill(230);
    textSize(24);
    text("Score : " + param.score, 16*width/20, height/20);

    scoreCount(1000, 10, 5);
  }


  // niveau 4
  void niveaux05() 
  {
    fill(230);
    textSize(24);
    text("Score : " + param.score, 16*width/20, height/20);

    scoreCount(2500, 10, 5);
  }


  void scoreCount(int scoreMax, int scoreDiff, int scoreMvt)
  {
    hitbox.toucherAlien(xAlien, yAlien);
    joueur.joueur();
    if (param.score == scoreDiff*param.diff && comp == 25) {
      explosion();
    } else if (param.score == scoreMax*param.diff) {
      hitbox.balleStart();
      dessin.explosionAlien(xAlien, yAlien);       
      comp++;
    } else {
      alien.mvt(scoreMvt*param.diff);
      dessin.alien2(xAlien, yAlien);
    }
  }


  // destruction d'un ennemie
  void explosion() 
  {

    for (int i = 0; i < 360; i++) {
      text("Score : " + param.score, 16*width/20, height/20);
      hitbox.a = true;
      dessin.explosionAlien(xAlien, yAlien);
    }
    // changement de niveaux et reinitialisation des positions
    niv++;
    if (niv == 2) {
      xAlien = 2*width/4;
      yAlien = 4*height/20;
    } else if (niv == 3) {
      xAlien = 2*width/4;
      yAlien = 4*height/20;
    } else if (niv == 4) {
      xAlien = 2*width/4;
      yAlien = 4*height/20;
    } else if (niv == 5) {
      xAlien = 2*width/4;
      yAlien = 4*height/20;
    }
    alien.Randomizer();
    comp = 0;
  }
}