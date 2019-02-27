class Fonction
{
  int ModeDeSuivi, vy, vx;
  float x, y, xPre, yPre;
  int eye, aie, vDepla, HitBox, Timer;
  float alpha;

  Fonction()
  {
    this.x = param.xPosRobot; 
    this.y = param.yPosRobot; 
    this.xPre = param.xPrevPosRobot; 
    this.yPre = param.yPrevPosRobot;
    this.ModeDeSuivi = param.ModeDeSuivi;
    this.alpha = param.alpha;
    this.eye = param.eye;
    this.vDepla = param.vDepla;
    this.HitBox = param.HitBox;
    this.Timer = param.Timer;
  }

  // Choix du type déplacement
  void optionDeDeplacement() 
  {

    if (ModeDeSuivi == 0) 
    {

      //1- Sourie 
      x = mouseX;
      y = mouseY;
      xPre = pmouseX;
      yPre = pmouseY;
    } else if (ModeDeSuivi == 1) 
    {

      //2- Clavier
      xPre =  x;
      yPre =  y;
    } else if (ModeDeSuivi == 2) 
    {

      //3- Auto
      xPre = x;
      yPre = y;
      float vx =  vDepla * cos( alpha);
      float vy =  vDepla * sin( alpha);
      x +=  vx;
      y +=  vy;

      if ( x <  HitBox) 
      {

        alpha = random(-PI/2, PI/2);
      } else if ( x > width- HitBox)
      {

        alpha = random(PI/2, 3*PI/2);
      } else if ( y <  HitBox ) 
      {

        alpha = random(PI);
      } else if ( y > height- HitBox) 
      {

        alpha = random(-PI);
      }

      if (x < HitBox || x > width -HitBox) 
      {

        vx = -vx;
      }
      if (y < HitBox || y > height -HitBox) 
      {

        vy = -vy;
      }
    } else 
    {
      menu.error();
    }
  }

  void timer(int t) 
  { 
    if (Timer == t) 
    {

      Timer = 0;
    } else {

      Timer++;
    }
  }


  //ester egg
  void folie() 
  {
    if (aie == 100) 
    {

      eye = 255;
      println("Start Program :Kill_all_Human\n...\n...\n...");
    }
    if (aie == 999) 
    {

      menu.error();
    }
  }


  // !! Provoque un ralentissement !!
  void folieBg() 
  {
    if (aie >= 666) 
    {
      for (int y = 0; y < height; y++) 
      {
        for (int x = 0; x < width; x++) 
        {

          fill( random(255), random(255), random(255));
          noStroke();
          rect(x*20, y*20, 20, 20);
        }
      }
    }
  }

  void Randomizer()
  {
    for (int i = 0; i < param.alienRandTab.length; i++)
    {
      param.alienRandTab[i] = int(random(1, 4));
    }
  }
}