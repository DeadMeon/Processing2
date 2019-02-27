class Joueur 
{  
  // attributs
  int x, y, xV, yV, xBalle, yBalle, vBalle, i;
  float v, t;
  color c;
  boolean tire;


  // constructeur(s)
  Joueur() {
    this.x = 500;
    this.y = 900;
    this.v = 0;
    this.t = param.t;
    this.c = 255;
    this.xV = 10;
    this.yV = 10;
    this.i = 0;
    xBalle = x;
    yBalle = y;
    vBalle = 5;
  }

  // méthodes
  // choix du vaisseaux
  void joueur() 
  {
    if (
      menu.ChoixJoueur == 0
      ) {
      dessin.dessin2(x, y);
    } else {
      dessin.dessin1(x, y);
    }
    hitbox.fire();
  }




  // touche pour jouer
  void keyPressed() {
    if (menu.fenetre == 3) 
    {
      if (keyCode == LEFT || key == 'q' || key == 'Q') 
      {
        x = x - xV;
      } else if (keyCode == RIGHT || key == 'd' || key == 'D') 
      {
        x = x + xV;
      } 
      if (key == ' ' && (niv.niv == 0 || niv.niv == 1)) 
      {
        niv.niv++;
      } else if (key == ' ') 
      {
        hitbox.newTire();
      } 
      if (key == 'p' || key == 'P') 
      {
        menu.fenetre = 5;
      }
    }
  }
}