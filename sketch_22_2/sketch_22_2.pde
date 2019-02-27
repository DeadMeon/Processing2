Maison maison;

void setup() {
  size(600, 600);
  maison = new Maison("maison.txt");
}

void draw() {
  maison.dessiner();
}