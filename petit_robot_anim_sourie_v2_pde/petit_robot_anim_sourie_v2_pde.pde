// by Aziz M'HIRSI



//variable 
int ledStart = 0;
int curseur = 0;
int eye = 0;
int kill = 0;
int aie = 0;
int xGrille;
int yGrille;
int ledTime = 0;
float xPosRobot;
float yPosRobot;
float xPrevPosRobot;
float yPrevPosRobot;


//Parametrage 
int ModeDeSuivi = 1; // 0 = sourie; 1 = clavier; 2 = auto
int vDepla = 2;



void setup() {
  size(500, 500);
  frameRate(60);
  noLoop();
}


void draw() {
  background(255);
  if (aie >= 5) {
    folie();
  }
  //Option de suivi
  if (ModeDeSuivi == 0) {
    //1- Sourie 
    xPosRobot = mouseX;
    yPosRobot = mouseY;
    xPrevPosRobot = pmouseX;
    yPrevPosRobot = pmouseY;
  } else if (ModeDeSuivi == 1) {
    //2- Clavier
    
  } else {
    //3- Auto
    
  }
  stroke(2);

  // le corps
  fill(200);
  rect(xPosRobot -40, yPosRobot -40, 80, 80);

  // les roues
  fill(20);
  ellipseMode(CORNER);
  ellipse(xPosRobot -58, yPosRobot +63, 16, 16);
  ellipse(xPosRobot +42, yPosRobot +63, 16, 16);
  fill(200);
  rect(xPosRobot -60, yPosRobot -20, 20, 90);
  rect(xPosRobot +40, yPosRobot -20, 20, 90);

  // la tête
  noFill();
  ellipseMode(CORNER);
  arc(xPosRobot -40, yPosRobot -80, 80, 80, PI, TWO_PI);
  fill(200);
  arc(xPosRobot -20, yPosRobot -60, 40, 40, PI, TWO_PI);

  // la caméra
  fill(eye, 0, 0);
  ellipseMode(CENTER);
  ellipse(xPosRobot, yPosRobot -50, 10, 10);

  // l'antenne
  line(xPrevPosRobot -40, yPrevPosRobot -80, xPosRobot -40, yPosRobot -40);

  // deco
  fill(220);
  strokeWeight(2);
  line(xPosRobot -20, yPosRobot -30, xPosRobot +40, yPosRobot -30);
  strokeWeight(1);
  rect(xPosRobot -40, yPosRobot -10, 30, 10);
  rect(xPosRobot -10, yPosRobot +05, 50, 10);  
  line(xPosRobot -60, yPosRobot, xPosRobot -40, yPosRobot);
  line(xPosRobot +40, yPosRobot, xPosRobot +60, yPosRobot);

  // led
  if (ledStart == 1) {
    fill( random(255), random(255), random(255));
    rect(xPosRobot +10, yPosRobot -20, 10, 10); 
    fill( random(255), random(255), random(255));
    rect(xPosRobot +25, yPosRobot -20, 10, 10);
    fill( random(255), random(255), random(255));
    rect(xPosRobot -25, yPosRobot +25, 10, 10);
  } else {
    fill(0, 0, 0);
    rect(xPosRobot +10, yPosRobot -20, 10, 10);
    fill(0, 0, 0);
    rect(xPosRobot +25, yPosRobot -20, 10, 10);
    fill(0, 0, 0);
    rect(xPosRobot -25, yPosRobot +25, 10, 10);
    ledTime = 0;
  }
}


/*//grille de dessin 10
 void grille() {
 while (xGrille <= height AND yGrille <= width) {
 line(
 
 
 }
 */


//dispatition du curseur
void mousePressed() {
  if (curseur == 1) {
    noCursor();
    curseur = 0;
  } else {
    cursor(ARROW);
    curseur = 1;
  }
}


//arret et matrche des Leds
void keyPressed() {
  if (key == 's' || key == 'S') {
    if (ledStart == 0) {
      ledStart = 1;
      println("startup initiated...");
      println("Hello");
      curseur = 1;
      mousePressed();
      loop();
    } else {
      ledStart = 0;
      println("Shutdown...");
      curseur = 0;
      mousePressed();
      aie = 0;
      eye = 0;
      noLoop();
      draw();
    }
  } else if (key == CODED) {
    if (keyCode == UP) {
      yPosRobot -= vDepla ;
    } else if (keyCode == DOWN) {
      yPosRobot += vDepla;
    } else if (keyCode == RIGHT) {
      xPosRobot += vDepla;
    } else if (keyCode == LEFT) {
      xPosRobot -= vDepla;
    }
  } else {
    if (ledStart == 1) {
      println("Aie, cela fait mal!");
      aie=aie+1;
      test();
    }
  }
}


//Suivre le curseur
/*
void mouseTraking(); 
 
 
 
 */


//ester egg
void test() {
  // modif pour test
  if (aie == 5) {
    eye = 255;
    // mouseTracking();

    println("Start Program :Kill_all_Human\n...\n...\n...");
  }
  if (aie == 666) {
    println("J'ai trop mal, je ne veux plus te voir!");
    exit();
  }
}



void folie() {
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      fill( random(255), random(255), random(255));
      noStroke();
      rect(x*20, y*20, 20, 20);
    }
  }
}





//a ajouter

/*
int r = 25;
float x;
float y;
float v = 2;
float alpha;


void setup() {
  size(200, 200);
  x = random(r, width - r);
  y = random(r, height - r);
  noStroke();
  fill(127);
  ellipseMode(RADIUS);
}

void draw() {
  background(255);
  ellipse(x, y, r, r);
  float vx = v * cos(alpha);
  float vy = v * sin(alpha);
  x += vx;
  y += vy;
  if (x < r || x > width - r) {
    alpha = random(TWO_PI);
    vx = -vx;
  }
  if (y < r || y > height - r) {
    alpha = random(TWO_PI);
    vy = -vy;
  }
}

*/


/*