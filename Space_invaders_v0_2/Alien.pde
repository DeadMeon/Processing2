class Alien
{
  //animation mort Alien
  void dead(int x) //
  {
    if (param.compteur[x] < 120)
    {
      dessin.explo(x); // x = xAlien[i] et y = yAlien[i]
      param.compteur[x]++;
    } else 
    {
      param.dead[x] = true;
      param.xAlien[x] = -100;
      param.yAlien[x] = -10;
    }
  }


  //mouvement de l'alien
  void mvtAlien()
  {
    for (int i = 0; i < param.nbAlien; i++) 
    {
      if (param.xAlien[i] <= -param.tGen * 7 || param.xAlien[i] >= width + 7* param.tGen) {
        param.j[i] = !param.j[i];
        param.yAlien[i] = param.yAlien[i] + param.tGen * 12;
      }
      if (param.j[i] == false) { 
        param.vAlien[i] = param.v;
      } else {
        param.vAlien[i] = -param.v;
      }
      param.xAlien[i] += param.vAlien[i];
    }
  }
}