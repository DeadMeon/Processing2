int[] xpos = new int[255];
int[] ypos = new int[255];

void setup() {
  size(800, 800);
  frameRate(255);

 // Initialiser les positions à 0
 for (int i = 0; i < xpos.length; i++) {
   xpos[i] = 0;
   ypos[i] = 0;
 }
}

void draw() {
  noCursor();
  background(255);

  // Décaler les valeurs à gauche
  for (int i = 0; i < xpos.length - 1; i++) {
    xpos[i] = xpos[i + 1];
    ypos[i] = ypos[i + 1];
  }

  // La nouvelle position vient à la fin du tableau
  xpos[xpos.length - 1] = mouseX;
  ypos[ypos.length - 1] = mouseY;

  // Dessiner tout
  noStroke();
  for (int i = 0; i < xpos.length; i++) {
    fill(255 - i);
    ellipse(xpos[i], ypos[i], i/5, i/5);
  }
}