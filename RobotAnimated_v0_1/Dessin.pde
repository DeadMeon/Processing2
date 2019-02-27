class Dessin 
{
  float x, y;
  int t;
  int alienMvt ;

  Dessin() 
  {
    this.x = param.xPosRobot;
    this.y = param.yPosRobot;
    this.t = param.t;
  }

  // Dessin R2D2
  void r2d2() {

    // le corps
    fill(200);
    rect(x -40, y -40, 80, 80);

    // les roues
    fill(20);
    ellipseMode(CORNER);
    ellipse(x -58, y +63, 16, 16);
    ellipse(x +42, y +63, 16, 16);
    fill(200);
    rect(x -60, y -20, 20, 90);
    rect(x +40, y -20, 20, 90);

    // la tête
    noFill();
    ellipseMode(CORNER);
    arc(x -40, y -80, 80, 80, PI, TWO_PI);
    fill(200);
    arc(x -20, y -60, 40, 40, PI, TWO_PI);

    // la caméra
    fill(param.eye, 0, 0);
    ellipseMode(CENTER);
    ellipse(x, y -50, 10, 10);

    // l'antenne
    line(param.xPrevPosRobot -40, param.yPrevPosRobot -80, x -40, y -40);

    // deco
    fill(220);
    strokeWeight(2);
    line(x -20, y -30, x +40, y -30);
    strokeWeight(1);
    rect(x -40, y -10, 30, 10);
    rect(x -10, y +05, 50, 10);  
    line(x -60, y, x -40, y);
    line(x +40, y, x +60, y);

    // led
    if (param.ledStart == 1) {

      fill( random(255), random(255), random(255));
      rect(x +10, y -20, 10, 10); 
      fill( random(255), random(255), random(255));
      rect(x +25, y -20, 10, 10);
      fill( random(255), random(255), random(255));
      rect(x -25, y +25, 10, 10);
    } else {

      fill(0, 0, 0);
      rect(x +10, y -20, 10, 10);
      fill(0, 0, 0);
      rect(x +25, y -20, 10, 10);
      fill(0, 0, 0);
      rect(x -25, y +25, 10, 10);
      param.ledTime = 0;
    }
  }

  // Dessin Android
  void android() {

    noStroke();
    rectMode(CENTER);
    fill(153, 205, 0);

    //Legs
    rect(x-20, y+40, 10, 40);
    rect(x+20, y+40, 10, 40);
    arc(x+20, y+60, 10, 10, 0, PI, PIE);
    arc(x-20, y+60, 10, 10, 0, PI, PIE);

    //Arms
    rect(x-55, y, 10, 50, 10, 10, 10, 10);
    rect(x+55, y, 10, 50, 10, 10, 10, 10);

    //Corps
    rect(x, y+5, 80, 65, 0, 0, 10, 10);

    //Head
    arc(x, y-35, 80, 65, PI, TWO_PI, CHORD);
    quad(x+19, y-60, x+26, y-75, x+28, y-75, x+21, y-60);
    quad(x-19, y-60, x-26, y-75, x-28, y-75, x-21, y-60);
    fill(param.eye, 0, 0);
    ellipse(x+17, y-50, 10, 10);
    ellipse(x-17, y-50, 10, 10);
  }

  void alien1() {
    background(0);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 7*t, 4*t);
    rect(x+3*t, y+2.5*t, t, t);
    rect(x-3*t, y+2.5*t, t, t);
    rect(x+3*t, y-3.5*t, t, t);
    rect(x-3*t, y-3.5*t, t, t);
    rect(x+2*t, y-2.5*t, t, t);
    rect(x-2*t, y-2.5*t, t, t);
    fill(0);
    rect(x+2*t, y-0.5*t, t, t);
    rect(x-2*t, y-0.5*t, t, t);
    fill(255);
    if (alienMvt < 50) {
      rect(x+4*t, y, t, 2*t);
      rect(x-4*t, y, t, 2*t);
      rect(x+5*t, y+1.5*t, t, 3*t);
      rect(x-5*t, y+1.5*t, t, 3*t);
      rect(x+1.5*t, y+3.5*t, 2*t, t);
      rect(x-1.5*t, y+3.5*t, 2*t, t);
      alienMvt++;
    } else if (alienMvt >= 50 && alienMvt < 100) {
      rect(x+4*t, y+0.5*t, t, 3*t);
      rect(x-4*t, y+0.5*t, t, 3*t);
      rect(x+5*t, y-1*t, t, 4*t);
      rect(x-5*t, y-1*t, t, 4*t);
      rect(x+4*t, y+3.5*t, t, t);
      rect(x-4*t, y+3.5*t, t, t);
      alienMvt++;
    } 
    if (alienMvt == 100) {
      alienMvt = 0;
    }
  }

  void alien2() {
    background(0);
    fill(255);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 8*t, 2*t);
    rect(x, y-2.5*t, 4*t, t);
    rect(x, y-3.5*t, 2*t, t); 
    rect(x, y-1.5*t, 6*t, t);
    if (alienMvt < 50) {
      rect(x+1.5*t, y+3.5*t, t, t); 
      rect(x+3.5*t, y+3.5*t, t, t);
      rect(x-1.5*t, y+3.5*t, t, t);
      rect(x-3.5*t, y+3.5*t, t, t);
      rect(x, y+2.5*t, 2*t, t);
      rect(x+1.5*t, y+1.5*t, 1*t, t); 
      rect(x-1.5*t, y+1.5*t, 1*t, t); 
      rect(x+2.5*t, y+2.5*t, 1*t, t); 
      rect(x-2.5*t, y+2.5*t, 1*t, t); 
      alienMvt++;
    } else if (alienMvt >= 50 && alienMvt < 100) {
      rect(x, y+1.5*t, 2*t, t);
      rect(x+2.5*t, y+1.5*t, 1*t, t); 
      rect(x-2.5*t, y+1.5*t, 1*t, t); 
      rect(x+3.5*t, y+2.5*t, 1*t, t); 
      rect(x-3.5*t, y+2.5*t, 1*t, t); 
      rect(x+2.5*t, y+3.5*t, t, t);
      rect(x-2.5*t, y+3.5*t, t, t);
      alienMvt++;
    }
    if (alienMvt == 100) {
      alienMvt = 0;
    }
    fill(0);
    rect(x-1.5*t, y-0.5*t, t, t);
    rect(x+1.5*t, y-0.5*t, t, t);
  }

  void alien3() {
    background(0);
    fill(255);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 12*t, 3*t);
    rect(x, y-2*t, 10*t, t);
    rect(x, y-3*t, 4*t, t);
    rect(x, y+3*t, 2*t, t);
    if (alienMvt < 50) {
      rect(x-2*t, y+2*t, 2*t, t);
      rect(x+2*t, y+2*t, 2*t, t);
      rect(x-3*t, y+3*t, 2*t, t);
      rect(x+3*t, y+3*t, 2*t, t);
      rect(x-5*t, y+4*t, 2*t, t);
      rect(x+5*t, y+4*t, 2*t, t);
      alienMvt++;
    } else if (alienMvt >= 50 && alienMvt < 100) {
      rect(x-2.5*t, y+2*t, 3*t, t);
      rect(x+2.5*t, y+2*t, 3*t, t);
      rect(x-4*t, y+3*t, 2*t, t);
      rect(x+4*t, y+3*t, 2*t, t);
      rect(x-3*t, y+4*t, 2*t, t);
      rect(x+3*t, y+4*t, 2*t, t);
      alienMvt++;
    }
    if (alienMvt == 100) {
      alienMvt = 0;
    }
    fill(0);
    rect(x-2*t, y, 2*t, t);
    rect(x+2*t, y, 2*t, t);
  }

  void alienRand()
  {
    for (int i = 0; i < param.alienRandTab.length; i++) {
      if (param.alienRandTab[i] == 1) 
      {
        alien1();
      } else if (param.alienRandTab[i] == 2)
      {
        alien2();
      } else 
      {
        alien3();
      }
    }
  }
}