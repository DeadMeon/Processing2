class Parametres 
{  
  // attributs
  int[] alienRandTab;
  int bg ;
  int score ;
  int t;
  int diff;
  int nbMaxBalle;


  // constructeur(s)
  // les parametres du jeu
  Parametres() {
    alienRandTab = new int[10];
    bg = 0;
    score = 0;
    t = 10;
    diff = 1;
    nbMaxBalle = 15;
  }
}