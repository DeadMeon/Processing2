PFont font;
Alien alien;
//Decors decor;
//Error error;
Joueur joueur;
Menu menu;
//Niveaux niv;
//Option option;
//Pause pause;
Parametres param;
//Score score;


void setup() {
  size(1000, 1000);
  font = createFont("PressStart2P-Regular.ttf", 32);
  textFont(font);

  // initialitation des classes
  param = new Parametres();
  //save = new Save();
  alien = new Alien(100, 100, 0, 10, 255);
  //decor = new Decirs();
  joueur = new Joueur();
  menu = new Menu();
  //pause = new Pause();
  //score = new Score();
}





void draw() {
  int bg = param.bg;
  int fenetre = menu.fenetre;
  background(0);
  if (fenetre == 1) {
    menu.menu1();
  } else if (fenetre == 2) {
    menu.option();
  } else if (fenetre == 3) {
    background(bg);
    alien.alien2();
    joueur.joueur();
  } else if (fenetre == 4) {
    exit();
  }
}


void mousePressed() {
  menu.clique();
}

void keyPressed() {
  joueur.keyPressed();
}