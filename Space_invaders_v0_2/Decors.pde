class Decors 
{
  // attributs
  int i, tailleTab;
  int x, y;
  float[] xRand, yRand, xRandTaille, yRandTaille, vRand;

  // constructeur(s)
  Decors()
  {
    i = 0;
    tailleTab = 40;
    vRand = new float[tailleTab];
    xRand = new float[tailleTab];
    yRand = new float[tailleTab];
    xRandTaille = new float[tailleTab];
    yRandTaille = new float[tailleTab];
  }


  // méthodes

  // loop pour la musique 
  void musique() {
    if (i == file.duration()*60) {
      file.loop();
      i=0;
    }
    i++;
  }


  /// dessin d'etoile dans le background
  // setup
  void etoileStart()
  {
    for (int i = 0; i < tailleTab -1; i++)
    {
      xRand[i] = random(0, width);
      yRand[i] = random(-height, 0);
      xRandTaille[i] =  random(1, 3);
      yRandTaille[i] = random(10, 16);
      vRand[i] = random(1, 7);
    }
  }

  // dessin + defilement 
  void etoile()
  {
    for (int i = 0; i < tailleTab; i++ ) 
    {
      if (yRand[i] >= height + 16)
      {
        xRand[i] = random(0, width);
        yRand[i] = random(-height, 0);
        xRandTaille[i] =  random(1, 3);
        yRandTaille[i] = random(10, 25);
      }
      yRand[i] += vRand[i];
      fill(255, 255, 212);
      noStroke();
      rect(xRand[i], yRand[i], xRandTaille[i], yRandTaille[i], 2);
    }
  }
}