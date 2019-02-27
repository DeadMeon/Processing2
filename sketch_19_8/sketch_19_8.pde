int n = 200;
int[][] pascal = new int[n][];

for (int i = 0; i < n; i++) {
  pascal[i] = new int[i+1];
  pascal[i][0] = 1;
  for (int j = 1; j < pascal[i].length-1; j++) {
    pascal[i][j] = (pascal[i-1][j-1] + pascal[i-1][j])%2;
  }
  pascal[i][i] = 1;
}

// afficher le triangle
for (int i = 0; i < n; i++) {
  println("Ligne " + i);
  println(pascal[i]);
}

size(400,400);
for (int i = 0; i < n; i++) {
  for (int j = 0; j < pascal[i].length; j++) {
    if (pascal[i][j] == 1) {
      fill(255);
      ellipse(j*2+(width/2)-i, i*2, 2, 2);
    }
  }
}