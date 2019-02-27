/*
void setup() {
 size(800, 400);
 background(255);
 stroke(0);
 branche(width / 2, height, height / 2);
 }
 
 void branche(float x, float y, float h) {
 line(x, y, x, y-h);
 if (h >= height / 300) {
 branche(x+h, y, h / 2);
 branche(x-h, y, h / 2);
 }
 }
 */
/*
// labi
 void setup() {
 size(600, 600);
 background(255);
 int tailleCellule = 20;
 dessinerLabyrinthe(0, 0, width / tailleCellule, height / tailleCellule, tailleCellule);
 noStroke();
 fill(0, 255, 0);
 rect(0, 0, tailleCellule, tailleCellule);
 fill(255, 0, 0);
 rect(width-tailleCellule, height-tailleCellule, tailleCellule, tailleCellule);
 }
 
 // x1, y1, x2, y2 - coordonnées des deux extrémités de la chambre
 // Attention, il s'agit de coordonées "cellule".
 // C'est pourquoi on multiplie partout par la taille de la cellule c
 void dessinerLabyrinthe(int x1, int y1, int x2, int y2, int c) {
 if (x2 - x1 > 1 && y2 - y1 > 1) {
 // Choisir aléatoirement les emplacements des murs et des portes
 int xMur = int(random(x1 + 1, x2));
 int xPorte1 = int(random(x1, xMur));
 int xPorte2 = int(random(xMur, x2));
 int yMur = int(random(y1 + 1, y2));
 int yPorte1 = int(random(y1, yMur));
 int yPorte2 = int(random(yMur, y2));
 // Mur horizontal avec 2 portes
 line(x1 * c, yMur * c, xPorte1 * c, yMur * c);
 line((xPorte1 + 1) * c, yMur * c, xPorte2 * c, yMur * c);
 line((xPorte2 + 1) * c, yMur * c, x2 * c, yMur * c);
 // Mur vertical avec 2 portes
 line(xMur * c, y1 * c, xMur * c, yPorte1 * c);
 line(xMur * c, (yPorte1 + 1) * c, xMur * c, yPorte2 * c);
 line(xMur * c, (yPorte2 + 1) * c, xMur * c, y2 * c);
 
 // On fait la même chose avec les 4 chambres ainsi obtenues
 
 dessinerLabyrinthe(x1, y1, xMur, yMur, c);
 dessinerLabyrinthe(xMur, y1, x2, yMur, c);
 dessinerLabyrinthe(x1, yMur, xMur, y2, c);
 dessinerLabyrinthe(xMur, yMur, x2, y2, c);
 }
 }
 */



void setup() {
  size(400, 400);
  noSmooth();   // Permet au carrés de se juxtaposer...
}

void draw() {
  background(255);
  fill(40, 80, 200);
  stroke(0, 40, 160);
  // On commence au niveau 4, la condition d'arrêt stoppe la récursivité
  // au niveau 0.
  tapisSierpinski(0, 0, width, height, 4);
}

void tapisSierpinski(float x, float y, float w, float h, int niveau) {
  if (niveau > 0) {
    w = w/3;
    h = h/3;
    for (int i = 0; i <= 3; i++) {
      for (int j = 0; j <= 3; j++) {
        if (j != 2 && i != 2) {
          fill(40, 80, 200);
          rect(x+i*w, y+j*h, w, h);
        } else {
          fill(255);
          rect(x+i*w, y+j*w, w, h);
        }
      }
    }
  } else {
    fill(40, 80, 200);
    rect(x, y, w, h);
  }
}