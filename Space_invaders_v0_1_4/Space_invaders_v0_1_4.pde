// importation d'une classe pour la musique 
// sketch -> importer une librairie -> ajouter une librairie 
// ajouter dasn le filtre "Sound" et installer celui de "The Processing Foundation"
import processing.sound.*;

// assignation des classes
PFont font;
Alien alien;
Dessin dessin;
Decors decor;
Joueur joueur;
Hitbox hitbox;
Menu menu;
Niveaux niv;
Parametres param;
Save save;
SoundFile file;


// initialisation
void setup() 
{

  size(1000, 1000);
  frameRate(60);
  font = createFont("PressStart2P-Regular.ttf", 32);
  textFont(font);
  ///Musique
  //setupMusique();

  // initialitation des classes
  param = new Parametres();
  save = new Save();
  alien = new Alien();
  dessin = new Dessin();
  decor = new Decors();
  joueur = new Joueur();
  hitbox = new Hitbox();
  menu = new Menu();
  niv = new Niveaux();

  //initialisation var
  decor.etoileStart();
  hitbox.balleStart();
}


// boucle
void draw()
{
  ///Musique
  //decor.musique();
  int fenetre = menu.fenetre;
  background(param.bg);
  decor.etoile();
  if (fenetre == 1) 
  {
    // menu principale
    menu.menu1();
  } else if (fenetre == 2) 
  {
    // menu des options
    menu.option();
  } else if (fenetre == 3) 
  {
    //lancement du jeu
    niv.niveaux();
  } else if (fenetre == 4) 
  {
    exit();
  } else if (fenetre == 5) 
  {
    menu.menu2();
  }
}


void mousePressed() 
{
  menu.clique();
}


void keyPressed() 
{
  joueur.keyPressed();
}


void setupMusique() {
  String audioName = "data/LHS_Chiptunes_13.mp3";
  file = new SoundFile(this, sketchPath(audioName));
  file.play();
  file.amp(0.1);
}