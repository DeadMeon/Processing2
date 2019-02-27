class Hitbox 
{
  /// attributs
  int[] xBalle;
  int[] yBalle;
  int vBalle;
  int t, nbMaxBalle;
  boolean a;
  float xAlien, yAlien;




  /// constructeur(s)
  Hitbox() 
  {
    this.vBalle = joueur.vBalle;
    this.t = param.t;
    this.a = false;
    this.nbMaxBalle = param.nbMaxBalle;
    xBalle = new int[nbMaxBalle];
    yBalle = new int[nbMaxBalle];
  }  




  /// méthodes
  //setup table emplacement balle
  void balleStart()
  {
    for (int i = 0; i < nbMaxBalle; i++)
    {
      xBalle[i] = joueur.x;
      yBalle[i] = -5;
    }
  }




  //nouveaux tire 
  void newTire()
  {    
    for (int i = 0; i < nbMaxBalle-1; i++)
    {
      xBalle[i] = xBalle[i+1];
      yBalle[i] = yBalle[i+1];
    }
    xBalle[nbMaxBalle-1] = joueur.x;
    yBalle[nbMaxBalle-1] = joueur.y-3*t;
  }




  // dessin du tire  
  void fire() {
    rectMode(CENTER);
    fill(255);
    noStroke();
    for (int i = 0; i < nbMaxBalle; i++)
    {
      if ( yBalle[i] > -5) {
        yBalle[i] -= vBalle; 
        rect(xBalle[i], yBalle[i]-3*t, t, 3*t);
      } else {
        joueur.tire = false; 
        xBalle[i] = joueur.x;
        yBalle[i] = -5;
      }
    }
  }


  // hitbox
  void toucherAlien(float xAlien, float yAlien) {
    noFill(); 
    stroke(255); 

    //affiche les hitbox
    /*
     rectMode(CENTER);
     rect(xAlien,xAlien,xAlien+10*t,yAlien+10*t);
     */

    for (int i = 0; i<nbMaxBalle; i++)
    {
      if (yBalle[i] == yAlien + (alien.t*3) && xBalle[i] < xAlien + (alien.t*5) && xBalle[i] > xAlien - (alien.t*5) && niv.niv >= 2 ) 
      {
        param.score += 10; 
        joueur.tire = false; 
        yBalle[i] = -5; 
        xBalle[i] = joueur.x;
      }
    }
  }
}