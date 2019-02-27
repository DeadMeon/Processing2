class Alien 
{
  // attributs
  int t;
  int i = 0;
  int vAlien;
  boolean j = false;



  // constructeur
  Alien() {
    this.t = param.t;
  }



  // méthodes
  void mvt(int v) {
    if ((niv.xAlien <= 5*t || niv.xAlien >= width-5*t)) {
      j = !j;
    } 
    if (j == false) { 
      vAlien = v;
    } else {
      vAlien = -v;
    }
    niv.xAlien += vAlien;
    println(niv.xAlien);
  }
  
  
  void Randomizer()
  {
    for (int i = 0; i < param.alienRandTab.length; i++)
    {
      param.alienRandTab[i] = int(random(1, 4));
    }
  }
  
  
  
  void alienRand(float xAlien,float yAlien, float hitbox)
  {
    for (int i = 0; i < param.alienRandTab.length; i++) {
      if (param.alienRandTab[i] == 1) 
      {
        dessin.alien1(xAlien - hitbox*((-param.alienRandTab.length/2)+i) , yAlien);
      } else if (param.alienRandTab[i] == 2)
      {
        dessin.alien2(xAlien - hitbox*((-param.alienRandTab.length/2)+i), yAlien);
      } else 
      {
        dessin.alien3(xAlien - hitbox*((-param.alienRandTab.length/2)+i), yAlien);
      }
    }
  }


}