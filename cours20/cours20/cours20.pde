// rectangle du plan complexe qu'on veut afficher sur la fenêtre
Complexe zMin = new Complexe(-2.5, -1);
Complexe zMax = new Complexe(1, 1);

int nMax = 100; // nombre maximal d'itérations

void setup() {
  size(840, 480);
  dessinerMandelbrot();
  println(millis());
}

void dessinerMandelbrot() {
  loadPixels();
  // Pour chaque pixel (x, y) de la fenêtre
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      // Calculer le nombre complexe correspondant à (x, y)
      Complexe c = zPlan(x, y);
      // Itérer la suite
      int n = itererSuite(c);
      float gris = map(n, 0, nMax, 0, 255);
      colorMode(HSB, nMax, 1, 1);
      // Si la suite n'a pas divergé, colorer le pixel en noir
      pixel(x, y, n);
    }
  }
  updatePixels();
}

// Transforme un pixel de la fenêtre en point du plan complexe
Complexe zPlan(int x, int y) {
  float re = map(x, 0, width, zMin.re(), zMax.re());
  float im = map(y, 0, height, zMin.im(), zMax.im());
  return new Complexe(re, im);
}

// Itère la suite z(0) = 0, z(n+1) = f(z(n)) pendant nMax itérations
// ou jusqu'à ce qu'elle sorte du cercle de rayon 2
// Renvoie le nombre d'itérations effectuées
int itererSuite(Complexe c) {
  Complexe z = new Complexe();
  int n = 0;
  while (n < nMax && z.mod() < 2) {
    z = f(z, c);
    n++;
  }
  return n;
}

Complexe f(Complexe z, Complexe c) {
  return ((z.mult(z.mod2()).plus(c)).plus(z.conj().plus(z.mod())).moins(z));
}

void pixel(int x, int y, int n)
{
  int i = y * width + x;
  if (n == nMax) {
    pixels[i] = color(0);
  } else {
    pixels[i] = color(n, 1, 1);
  }
}