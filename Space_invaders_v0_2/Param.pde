/*
Ici sont classer toute les variable utiliser dans la plus part des classe, cette generalisation permet de simplifier la modification de variable tel que la taille
 ou la vitesse des aliens ainsi que la modifiaction des tableaux
 */

class Param
{
  int[] degatsAlien;
  float[] xAlien;
  float[] yAlien;
  float[] xBalle;
  float[] yBalle;
  int[] vie;
  int[] taille;
  int[] tBalle;
  int[] alienTab;
  int[] vAlien;
  int[] compteur;
  boolean[] dead;
  boolean[] j;
  boolean isLeft, isRight, isUp, isDown, isSpace, isPaused; 
  int fenetre;
  int nbAlien;
  int tuto;
  int nbBalle;
  int alienMvt;
  int ttVie;
  int tGen;
  int v;
  int niv;
  int choixJoueur;
  int diff;
  int maxVie;
  int tpsNivSup;
  float xJ1;
  float vJ1;
  float yJ1;


  Param()
  {
    fenetre = 1;
    alienMvt = 0;
    tpsNivSup = 0;
    ttVie = 0;
    nbBalle = 30;
    v = 2;
    xJ1 = width/2;
    vJ1 = 10;
    yJ1 = height + 50;

    diff = 1;
    choixJoueur = 0;

    nbAlien = 3;
    tGen = 10;
    niv = -2; 
    tuto = 0;

    j = new boolean[nbAlien];
    taille = new int[nbAlien];
    compteur = new int[nbAlien];
    degatsAlien = new int[nbAlien];
    xAlien = new float[nbAlien];
    yAlien = new float[nbAlien];
    vAlien = new int[nbAlien];
    dead = new boolean[nbAlien];
    vie = new int[nbAlien];
    alienTab = new int[nbAlien];
    xBalle = new float[nbBalle];
    yBalle = new float[nbBalle];
    tBalle = new int[nbBalle];
  }
}