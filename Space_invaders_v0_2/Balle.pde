class Balle
{

  //deplacement d'un tire
  void mvtBalle()
  {
    for (int i = 0; i < param.nbBalle; i++)
    {
      if (param.yBalle[i] != -10) 
      {
        param.yBalle[i] = param.yBalle[i]-3;
      }
    }
  }


  // creation d'un tire
  void newTire() //
  {    
    for (int i = 0; i < param.nbBalle-1; i++)
    {
      param.xBalle[i] = param.xBalle[i+1];
      param.yBalle[i] = param.yBalle[i+1];
    }

    param.xBalle[param.nbBalle-1] = param.xJ1; 
    param.yBalle[param.nbBalle-1] = param.yJ1;
    /*
      param.xBalle[param.nbBalle-1] = mouseX; 
     param.yBalle[param.nbBalle-1] = height;
     */
  }
}