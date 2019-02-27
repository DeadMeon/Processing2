size(200, 250);

int[][] p = {
  {128, 128, 128, 128},
  {255, 128, 255, 128},
  {255, 128, 128, 128},
  {255, 128, 255, 255},
  {128, 128, 128, 255},
};

stroke(0);
for (int i = 0; i < 5; i++) {
  for (int j = 0; j < 4; j++) {
    fill(p[i][j]);
    rect(50 * j, 50 * i, 50, 50);
  }
}