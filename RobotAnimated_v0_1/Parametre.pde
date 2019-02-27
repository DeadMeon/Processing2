class Parametre
{

  //variable 
  int[] alienRandTab;
  int ledStart;
  int curseur = 0;
  int eye = 0;
  int kill = 0;
  int aie = 0;
  int t = 10;
  int HitBox = 80;
  int ledTime = 0;
  int errorCount = 0;
  int menu = 1;
  int Timer;
  int xOptionMouv = -500;

  int optionBoutonRetour = 255;
  int pauseCount = 0;
  float colorRed = 230;
  float colorGreen = 230;
  float colorBlue = 230;
  float alpha;
  float xPosRobot;
  float yPosRobot;
  float xPrevPosRobot;
  float yPrevPosRobot;

  //Parametrage 
  int ModeDeSuivi = 0; // 0 = sourie; 1 = clavier; 2 = auto
  int vDepla = 2;
  int ChoixRobot = 0; // 0 = R2D2 ; 1= Android ; 2 = Alien
  int tuto = 1;

  Parametre() 
  {
    //variable 
    alienRandTab = new int[10];
    ledStart = 1;
    curseur = 0;
    eye = 0;
    kill = 0;
    aie = 0;
    HitBox = 80;
    ledTime = 0;
    errorCount = 0;
    menu = 1;
    xOptionMouv = -500;
    pauseCount = 0;
    colorRed = 230;
    colorGreen = 230;
    colorBlue = 230;
  }
}