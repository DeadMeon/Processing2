class Menu 
{
  // attributs
  int x, fenetre, optionB1, optionB2, optionB3, optionB4, optionB5, optionB6, optionB7, optionB8, optionB9, optionB10, optionB11, optionBRetour;
  int ModeDeSuivi, ChoixJoueur, xT, yT, tuto, niv;


  // constructeur(s)
  Menu() {
    x=0;
    fenetre = 1;
    optionB1 = 40;
    optionB2 = 20;
    optionB3 = 20;
    optionB4 = 40;
    optionB5 = 20;
    optionB6 = 40;
    optionB7 = 20;
    optionB8 = 20;
    optionB9 = 40;
    optionB10 = 20;
    optionB11 = 20;
    optionBRetour = 20;
    xT = 130;
    yT = 35;
    tuto = 0;


    //Parametrage 

    //ModeDeSuivi = 2; // 0 = sourie; 1 = clavier; 2 = auto
    ChoixJoueur = 0; // 0 = Normal ; 1= Vintage
  }

  // méthodes
  // menu de demarrage
  void menu1() 
  {
    fill(20);
    rectMode(CENTER);
    rect(width/2, height/2, width, height);
    fill(230);
    textSize(42);
    textAlign(CENTER, CENTER);
    text("Space Invaders", width/2, height/3);
    textSize(14);
    text("v0.1.4", width/2+250, height/3+50);
    textSize(24);
    text("Lancer !", width/2, height/2+25);
    text("Option", width/2, height/2+85);
    text("Quitter", width/2, height/2+145);
    textSize(10);
    text("by A.Mhirsi", width-80, height-40);
    noFill();
    strokeWeight(3);
    stroke(0);
    // rect(145, 335, 210, 70);
  }


  // menu de pause
  void menu2() 
  {
    fill(20, 50);
    rectMode(CENTER);
    rect(width/2, height/2, width, height);
    textAlign(CENTER, CENTER);
    textSize(46);
    fill(230);
    text("Pause", width/2, height/3);
    textSize(32);
    text("Reprendre", width/2, 5*height/10);
    text("Quitter", width/2, 6*height/10);
  }

  void option() 
  {
    noStroke();
    fill(20);
    rectMode(CORNER);
    rect(0, 0, 1000, 1000);
    strokeWeight(3);
    fill(optionBRetour);
    rect(145, 420, 210, 50);
    stroke(0);
    strokeWeight(2);
    rectMode(CENTER);

    //ligne 1
    fill(optionB1);
    rect(width/4, 6*height/18, xT, yT);
    fill(optionB2);
    rect(width/2, 6*height/18, xT, yT);
    fill(optionB3);
    rect(3*width/4, 6*height/18, xT, yT);

    //ligne 2
    fill(optionB4);
    rect(2*width/5, 8*height/18, xT, yT);
    fill(optionB5);
    rect(3*width/5, 8*height/18, xT, yT);

    //ligne 3
    fill(optionB6);
    rect(width/4, 10*height/18, xT, yT);
    fill(optionB7);
    rect(width/2, 10*height/18, xT, yT);
    fill(optionB8);
    rect(3*width/4, 10*height/18, xT, yT);

    //ligne 4
    /*
    fill(optionB9);
     rect(width/4, 12*height/18, xT, yT);
     fill(optionB10);
     */
    rect(width/2, 12*height/18, xT, yT);
    /*
     fill(optionB11);
     rect(3*width/4, 12*height/18, xT, yT);
     */

    //texte des lignes
    fill(230);
    textAlign(CENTER, CENTER);
    textSize(24);
    text("Options", width/2, height/6);
    text("Retour", width/2, 5*height/6);
    textSize(14);
    text("Niveau de Difficulté", width/2, 5*height/18);
    text("Choix du Joueur", width/2, 7*height/18);
    text("Vitesse de Déplacement du Joueur", width/2, 9*height/18);
    // text("Mode de Déplacement", width/2, 11*height/18);
    textSize(12);
    text("Facile", width/4, 6*height/18);
    text("Normal", width/2, 6*height/18);
    text("Extreme", 3*width/4, 6*height/18);
    text("Normal", 2*width/5, 8*height/18);
    text("Vintage", 3*width/5, 8*height/18);
    text("1 m/s", width/4, 10*height/18);
    text("2 m/s", width/2, 10*height/18);
    text("5 m/s", 3*width/4, 10*height/18);
    // text("Sourie", width/4, 12*height/18);
    // text("Clavier", width/2, 12*height/18);
    // text("Auto", 3*width/4, 12*height/18);
    text("Save", width/2, 12*height/18);
  }


  // emplacement des boutons et leurs fonctions
  void clique() 
  {
    // menu principal
    if (fenetre == 1) 
    {
      if (mouseX > width/2-105 && mouseX < width/2+105 && mouseY < height/2+25+35 && mouseY > height/2+25-35  && tuto == 0) 
      {
        fenetre = 3;
        niv = 0;
        tuto = 1;
      } else if (mouseX > width/2-105 && mouseX < width/2+105 && mouseY < height/2+25+35 && mouseY > height/2+25-35 ) 
      {
        fenetre = 3;
        niv = 1;
      } else if (mouseX > width/2-105 && mouseX < width/2+105 && mouseY < height/2+85+35 && mouseY > height/2+85-35 ) 
      {
        fenetre = 2;
      } else if (mouseX > width/2-105 && mouseX < width/2+105 && mouseY < height/2+145+35 && mouseY > height/2+145-35 ) 
      {
        fenetre = 4;
      }

      // menu des options lignes par lignes
    } else if (fenetre == 2) 
    {
      if (mouseY > 6*height/18-yT/2 && mouseY < 6*height/18+yT/2) 
      {
        if (mouseX > width/4-xT/2 && mouseX < width/4+xT/2) 
        {
          param.diff = 1;
          optionB1 = 40;
          optionB2 = 20;
          optionB3 = 20;
        } else if (mouseX > width/2-xT/2 && mouseX < width/2+xT) 
        {
          param.diff = 2;
          optionB1 = 20;
          optionB2 = 40;
          optionB3 = 20;
        } else if (mouseX > 3*width/4-xT/2 && mouseX < 3*width/4+xT/2) 
        {
          param.diff = 3;
          optionB1 = 20;
          optionB2 = 20;
          optionB3 = 40;
        }
      } else if (mouseY > 8*height/18-yT/2 && mouseY < 8*height/18+yT/2) 
      {
        if (mouseX > 2*width/5-xT/2 && mouseX <2*width/5+xT/2) 
        {
          ChoixJoueur = 0;
          optionB4 = 40;
          optionB5 = 20;
        } else if (mouseX > 3*width/5-xT/2 && mouseX < 3*width/5+xT/2) 
        {
          ChoixJoueur = 1;
          optionB4 = 20;
          optionB5 = 40;
        }
      } else if (mouseY > 10*height/18-yT/2 && mouseY <10*height/18+yT/2) 
      {
        if (mouseX > width/4-xT/2 && mouseX < width/4+xT/2) 
        {
          joueur.v =1;
          optionB6 = 40;
          optionB7 = 20;
          optionB8 = 20;
        } else if (mouseX > width/2-xT/2 && mouseX < width/2+xT/2) 
        {
          joueur.v =2;
          optionB6 = 20;
          optionB7 = 40;
          optionB8 = 20;
        } else if (mouseX > 3*width/4-xT/2 && mouseX < 3*width/4+xT/2) 
        {
          joueur.v =5;
          optionB6 = 20;
          optionB7 = 20;
          optionB8 = 40;
        }
      } else if (mouseY > 12*height/18-yT/2 && mouseY < 12*height/18+yT/2) 
      {

        if (mouseX > width/2-xT/2 && mouseX < width/2+xT/2) 
        {
          save.addScore(param.score);
        }
        /*
      } else if (mouseY > 12*height/18-yT/2 && mouseY < 12*height/18+yT/2) 
         {
         if (mouseX > width/4-xT/2 && mouseX < width/4+xT/2) 
         {
         ModeDeSuivi = 0;
         optionB9 = 40;
         optionB10 = 20;
         optionB11 = 20;
         } else if (mouseX > width/2-xT/2 && mouseX < width/2+xT/2) 
         {
         ModeDeSuivi = 1;
         optionB9 = 20;
         optionB10 = 40;
         optionB11 = 20;
         } else if (mouseX > 3*width/4-xT/2 && mouseX < 3*width/4+xT/2) 
         {
         ModeDeSuivi = 2;
         optionB9 = 20;
         optionB10 = 20;
         optionB11 = 40;
         }
         */
      } else if (mouseY < 5*height/6+yT && mouseX < width/2+xT && mouseY > 5*height/6-yT && mouseX > width/2-xT) 
      {
        fenetre = 1;
      }
    } else if (fenetre == 5) {
      if (mouseX < width/2 + xT && mouseX > width/2 - xT) {
        if (mouseY > 5*height/10-yT && mouseY < 5*height/10+yT) {
          fenetre = 3;
        } else if (mouseY > 6*height/10-yT && mouseY < 6*height/10+yT) {
          exit();
        }
      }
    }
  }
}