/*
//
 
 En cours d'ajout de personnage jouable au clavier 
 Ainsi que des achat pour augmente le nombres de tires ..
 */
class Joueur 
{
  int v;

  Joueur()
  {
  }

  // touche pour jouer
  void player() {
    if (param.fenetre == 3) {
      if (param.isLeft)param.xJ1=param.xJ1-param.vJ1;
      if (param.isRight)param.xJ1=param.xJ1+param.vJ1;
      if (param.isDown)param.yJ1=param.yJ1+param.vJ1;
      if (param.isUp)param.yJ1=param.yJ1-param.vJ1;
      if (param.isPaused)param.fenetre = 5;
      if (param.niv <= 0 && param.isSpace)
      {
        if (param.isSpace)param.niv++;
      } else {
        if (param.isSpace)balle.newTire();
      }
      if (param.choixJoueur == 1) 
      {
      dessin.dessin1(param.xJ1,param.yJ1);
      } else {
        dessin.dessin2(param.xJ1,param.yJ1);
      }
    }
  }



  boolean setMove(int k, boolean b) {
    switch (k) {
    case UP:
      return param.isUp = b;

    case DOWN:
      return param.isDown = b;

    case LEFT:
      return param.isLeft = b;

    case RIGHT:
      return param.isRight = b;

    case ' ':
      return param.isSpace = b;

    case 'p': 
      return param.isPaused = b;

    case 'P':
      return param.isPaused = b;

    default:
      return b;
    }
  }
} 