String entree = "";
int  y = 0;


void setup() {
  size(400, 40); // définition de la surface de travail
  // déclaration de la police active
  frameRate(60); // taux de traitement par seconde
  textSize(20);
}
void draw() {
  background(20);
  text(entree, 10, 30); // on affiche le contenu de 'entree' aux coordonnées 10,30
  underscore();
}


void keyReleased() {
  if (key == BACKSPACE && entree.length() > 0) {
    if (y < 30) {
      entree = entree.substring( 0, entree.length()-2 );
    } else if (y < 60) {
      entree = entree.substring( 0, entree.length()-1 );
    }
  } else if (keyCode == SHIFT || keyCode == ALT || keyCode == CONTROL || entree.length() == 0 && key == BACKSPACE) {
  } else if (entree.charAt(entree.length()-1) == '_') {
    entree = entree.substring( 0, entree.length()-1 );
    entree = entree + key; // on ajoute sa valeur à la chaîne 'entree'
  } else {
    entree = entree + key;
  }
}

void underscore() {
  char ent;
  if (entree == "") {
    ent = ' ';
  } else {
    ent = entree.charAt(entree.length()-1);
  }
  if (y == 60) {
    y=0;
  } else if (y < 30 && ent != '_' ) {
    entree = entree + "_";
    y++;
  } else if (y >= 30 && ent == '_') {
    entree = entree.substring( 0, entree.length()-1 );
    y++;
  } else {
    y++;
  }
}