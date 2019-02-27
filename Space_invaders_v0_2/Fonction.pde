class Fonction
{
  //fonction d'initialisatin des tableaux
  void inital() 
  {
    for (int i = 0; i < param.nbAlien; i++)
    {
      param.taille[i] = param.tGen;
      param.dead[i] = false;
      param.degatsAlien[i] = 0;
      param.xAlien[i] = ((1+i)*width)/(param.nbAlien+1);
      param.yAlien[i] = height/5;
      param.compteur[i] = 0;
      param.alienTab[i] = int(random(1, 4));
      param.j[i] = false;
    }
    for (int i = 0; i < param.nbBalle; i++)
    {
      param.xBalle[i] = 0;
      param.yBalle[i] = -10;
      param.tBalle[i] = param.tGen;
    }
  }



  //fonction selecteur de menu
  void menu()
  {
    if (param.fenetre == 1) 
    {
      // menu principale
      menu.menu1();
    } else if (param.fenetre == 2) 
    {
      // menu des options
      menu.option();
    } else if (param.fenetre == 3) 
    {
      //lancement du jeu
      nivSup();
      niv();
      hit();
      dessin();
      mvt();
    } else if (param.fenetre == 4) 
    {
      exit();
    } else if (param.fenetre == 5) 
    {
      menu.pause();
    }
  }



  //fonction selecteur de niveaux
  void niv()
  {
    if (param.niv == -2)
    {
      dessin.alien1(17*width/20, height/4);
      dessin.dessin2(17*width/20, 3*height/4);

      rectMode(CORNER);
      fill(230);
      textSize(24);
      text("Les aliens envaissent la terre, vous le seul rempare restant pour defendre l'humanité !", width/20, height/20, 14*width/20, 19*height/20);
    } else if (param.niv == -1)
    {
      dessin.alien1(17*width/20, height/4);
      dessin.dessin2(17*width/20, 3*height/4);

      rectMode(CORNER);
      fill(230);
      textSize(24);
      text("Vous pouvez tirer sur les Aliens grâce a la touche Espace et vous deplacer avec Z,Q,S,D ou les fleches directionnel", width/20, height/20, 14*width/20, 19*height/20);
    } else if (param.niv == 0)
    {
      param.tGen = 10;
      param.maxVie = 1;
      param.nbAlien = 3;
    } else if (param.niv == 1)
    {
      param.tGen = 10;
      param.maxVie = 5;
      param.nbAlien = 3;
    } else if (param.niv == 2)
    {
      param.tGen = 10;
      param.maxVie = 10;
      param.nbAlien = 3;
    } else if (param.niv == 3)
    {
      param.tGen = 10;
      param.maxVie = 10;
      param.nbAlien = 5;
    } else if (param.niv == 4)
    {
      param.tGen = 10;
      param.maxVie = 15;
      param.nbAlien = 5;
    } else if (param.niv == 5)
    {
      param.tGen = 7;
      param.maxVie = 20;
      param.nbAlien = 10;
    }
    resetParam();
  }



  //fonction passage au niveau superieur
  void nivSup()
  {
    ttVie();
    if (param.ttVie <= 0 && param.tpsNivSup >= 60*2)
    { 
      inital();
      param.niv++;
      param.tpsNivSup = 0;
    } else if (param.ttVie <= 0)
    {
      param.tpsNivSup++;
    }
  }



  //fonction qui calcule la vie total des alien sur le niveaux actuel
  int ttVie()
  {
    param.ttVie = 0;

    for (int i = 0; i < param.nbAlien; i++)
    {
      param.vie[i] = param.maxVie - param.degatsAlien[i];
      param.ttVie = param.ttVie + param.vie[i];
    } 
    return param.ttVie;
  }



  //fonction agrandissent les tableaux pour plus d'alien
  void resetParam()
  {
    if (param.xAlien.length < param.nbAlien)
    {
      param.compteur = expand(param.compteur, param.nbAlien); 
      param.degatsAlien = expand(param.degatsAlien, param.nbAlien); 
      param.xAlien = expand(param.xAlien, param.nbAlien); 
      param.yAlien = expand(param.yAlien, param.nbAlien); 
      param.dead = expand(param.dead, param.nbAlien);
      param.vie = expand(param.vie, param.nbAlien);
      param.taille = expand(param.taille, param.nbAlien);
      param.alienTab = expand(param.alienTab, param.nbAlien);
      param.j = expand(param.j, param.nbAlien);
      param.vAlien = expand(param.vAlien, param.nbAlien);
      inital();
    }
  }



  //fonction mouvement
  void mvt() //
  {
    balle.mvtBalle();
    alien.mvtAlien();
  }



  //fonction hitbox + degats 
  void hit() //
  {
    for (int j = 0; j < param.nbBalle; j++)
    {
      for (int i = 0; i < param.nbAlien; i++)
      {
        if (param.xAlien[i]-5*param.taille[i] <= param.xBalle[j] &&
          param.xAlien[i]+5*param.taille[i] >= param.xBalle[j] &&
          param.yAlien[i]+(3*param.taille[i]) >= param.yBalle[j] &&
          param.yAlien[i]-(3*param.taille[i]) <= param.yBalle[j] &&
          param.vie[i] > 0)
        {
          param.degatsAlien[i]++;
          param.yBalle[j] = -10;
        }
      }
    }
  }



  //fonction de dessin
  void dessin() //
  {
    for (int i = 0; i < param.nbAlien; i++)
    {
      if (param.niv < 0)
      {
      } else if (param.dead[i] == true)
      {
      } else if (param.degatsAlien[i] >= param.maxVie) 
      {
        alien.dead(i);
      } else 
      {
        dessin.vie(i);
        if (param.alienTab[i] == 1)
        {
          dessin.alien1(i);
        } else if (param.alienTab[i] == 2)
        {
          dessin.alien2(i);
        } else 
        {
          dessin.alien3(i);
        }
      }
    }
    for (int j = 0; j < param.nbBalle; j++)
    {
      dessin.balle(j);
    }
  }
}