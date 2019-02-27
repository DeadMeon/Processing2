int n = 7;
int iRef = 1, jRef = 1;
int kPre, lPre, total;
int[][] pascal = new int[n][];




void setup() {
  for (int i = 0; i < n; i++) {
    pascal[i] = new int[i+1];
    pascal[0][0] = 0;
    for (int j = 0; j < pascal[i].length; j++) {
      pascal[i][j] = 1;
    }
  }
  size(400, 400);
}



void draw() {
  background(255);

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < pascal[i].length; j++) {
      if (pascal[i][j] == 1) {
        fill(255);
        ellipse(j*40+(width/2)-i*20, i*40+30, 30, 30);
      } else if (pascal[i][j] == 2) {
        fill(220);
        ellipse(j*40+(width/2)-i*20, i*40+30, 30, 30);
      } else if (pascal[i][j] == 0) {
        fill(0);
        ellipse(j*40+(width/2)-i*20, i*40+30, 10, 10);
      }
      total =+ pascal[i][j];
    }
  }
  fin();
}


void fin() {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < pascal[i].length; j++) {
      for (int k = 0; k < n; k++) {
        for (int l = 0; l < pascal[k].length; l++) {
          if (k == i+2) {
              kPre = i+1;
            } else if (k == i) {
              kPre = i;
            } else if (k == i-2) {
              kPre = i-1;
            }
            if (l == j+2) {
              lPre = j+1;
            } else if (l == j) {
              lPre = j;
            } else if (l == j-2) {
              lPre = j-1;
            }
          if (pascal[k][l] == 2
            && (k == i+2 || k == i || k == i-2)
            && (l == j+2 || l == j || l == j-2))
          {
            
          } else if (total == 1)
          {
            text("Gagné", width/2, height-20);
          } else 
          {
            text("Perdu", width/2, height-20);
          }
        }
      }
    }
  }
}


void mousePressed() {

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < pascal[i].length; j++) 
    { 
      if (mouseX < j*40+(width/2)-i*20+15 
        &&  mouseX > j*40+(width/2)-i*20-15
        &&  mouseY < i*40+30+15 
        &&  mouseY > i*40+30-15)
      {
        println(i, j, pascal[i][j]);

        if (pascal[i][j] == 0) 
        {
          for (int k = 0; k < n; k++) 
          {
            for (int l = 0; l < pascal[k].length; l++) 
            {
              if (pascal[k][l] == 2
                && ( k == i+2 
                || k == i
                || k == i-2)
                &&  (l == j+2
                || l == j
                || l == j-2))
              {
                if (k == i+2) {
                  kPre = i+1;
                } else if (k == i) {
                  kPre = i;
                } else if (k == i-2) {
                  kPre = i-1;
                }
                if (l == j+2) {
                  lPre = j+1;
                } else if (l == j) {
                  lPre = j;
                } else if (l == j-2) {
                  lPre = j-1;
                }

                pascal[i][j] = 1;
                pascal[kPre][lPre] = 0;
                pascal[k][l] = 0;
                println(k, l, "vers", i, j);
              }
            }
          }
        } else if (pascal[i][j] == 1)
        {
          if (pascal[iRef][jRef] == 2) {
            pascal[iRef][jRef] = 1;
          }
          pascal[i][j] = 2;
          iRef = i;
          jRef = j;
        }
      }
    }
  }
}