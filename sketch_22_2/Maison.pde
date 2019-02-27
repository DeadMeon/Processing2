class Maison {
  Cellule[][] cellules;
  int lignes, colonnes, l;

  Maison(String fichier) {
    String[] s = loadStrings(fichier);
    String[] lc = split(s[0], ' ');
    lignes = int(lc[0]);
    colonnes = int(lc[1]);
    cellules = new Cellule[lignes][colonnes];
    float w = float(width) / colonnes;
    float h = float(height) / lignes;
    float r = min(w, h) / 2;
    for (int i = 0; i < lignes; i++) {
      for (int j = 0; j < colonnes+l; j++) {
        int type;
        if (s[i + 1].charAt(j) == '#') {
          type = MUR;
        } else {
          type = VIDE;
        }
        cellules[i][j] = new Cellule(r * (2 * j + 1), r * (2 * i + 1), r, type);
      }
    }
  }

  void dessiner() {
    for (int i = 0; i < lignes; i++) {
      for (int j = 0; j < colonnes; j++) {
        cellules[i][j].dessiner();
        println(l);
        if (keyPressed && keyCode == LEFT)
        {
          l++;
        }
      }
    }
  }
}