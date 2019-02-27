// by Aziz M'HIRSI


//Classe
Dessin dessin;
Ester_egg ester;
Fonction fonct;
Menu menu;
Parametre param;



void setup() {

  size(500, 500);
  frameRate(60);
  
  param = new Parametre();
  dessin = new Dessin();
  fonct = new Fonction();
  menu = new Menu();
  
  param.xPosRobot = random(param.HitBox, width - param.HitBox);
  param.yPosRobot = random(param.HitBox, height - param.HitBox);
  menu.menuStart();
}


void draw() {
  if (param.menu == 1) {

    menu.menuStart();
  } else if (param.menu == 2) {

    menu.menuOption();
  } else {

    background(255);
    fonct.folieBg();
    fonct.optionDeDeplacement();
    menu.pause();
    stroke(2);

    if (param.ChoixRobot == 0) {

      dessin.r2d2();
    } else if (param.ChoixRobot == 1) {

      dessin.android();
    } else if (param.ChoixRobot == 2) {

      dessin.alienRand();
    } else {

      menu.error();
    }
  }
}



void mousePressed() {
  if (param.menu == 1) {

    cursor(ARROW);
    param.curseur = 1;

    if (mouseX > 450 && mouseX < 500 && mouseY < 50 && mouseY > 0 ) {

      param.menu = 2;
    } else if (mouseX > 145 && mouseX < 355 && mouseY < 405 && mouseY > 335) {

      param.menu = 0;
    }
  } else if (param.menu == 2) {

    if (mouseY > 140 && mouseY < 170) {

      if (mouseX > 75 && mouseX < 175) {

        menu.optionBouton1 = 200;
        menu.optionBouton2 = 255;
        menu.optionBouton3 = 255;
      } else if (mouseX > 200 && mouseX < 300) {

        menu.optionBouton1 = 255;
        menu.optionBouton2 = 200;
        menu.optionBouton3 = 255;
      } else if (mouseX > 325 && mouseX < 425) {

        menu.optionBouton1 = 255;
        menu.optionBouton2 = 255;
        menu.optionBouton3 = 200;
      }
    } else if (mouseY > 215 && mouseY < 245) {

      if (mouseX > 75 && mouseX < 175) {

        param.ChoixRobot = 0;
        menu.optionBouton4 = 200;
        menu.optionBouton5 = 255;
        menu.optionBouton6 = 255;
      } else if (mouseX > 200 && mouseX < 300) {

        param.ChoixRobot = 1;
        menu.optionBouton4 = 255;
        menu.optionBouton5 = 200;
        menu.optionBouton6 = 255;
      } else if (mouseX > 325 && mouseX < 425) {

        param.ChoixRobot = 2;
        menu.optionBouton4 = 255;
        menu.optionBouton5 = 255;
        menu.optionBouton6 = 200;
      }
    } else if (mouseY > 290 && mouseY < 320) {

      if (mouseX > 75 && mouseX < 175) {

        param.vDepla =1;
        menu.optionBouton7 = 200;
        menu.optionBouton8 = 255;
        menu.optionBouton9 = 255;
      } else if (mouseX > 200 && mouseX < 300) {

        param.vDepla =2;
        menu.optionBouton7 = 255;
        menu.optionBouton8 = 200;
        menu.optionBouton9 = 255;
      } else if (mouseX > 325 && mouseX < 425) {

        param.vDepla =5;
        menu.optionBouton7 = 255;
        menu.optionBouton8 = 255;
        menu.optionBouton9 = 200;
      }
    } else if (mouseY > 365 && mouseY < 395) {

      if (mouseX > 75 && mouseX < 175) {

        param.ModeDeSuivi = 0;
        menu.optionBouton10 = 200;
        menu.optionBouton11 = 255;
        menu.optionBouton12 = 255;
      } else if (mouseX > 200 && mouseX < 300) {

        param.ModeDeSuivi = 1;
        menu.optionBouton10 = 255;
        menu.optionBouton11 = 200;
        menu.optionBouton12 = 255;
      } else if (mouseX > 325 && mouseX < 425) {

        param.ModeDeSuivi = 2;
        menu.optionBouton10 = 255;
        menu.optionBouton11 = 255;
        menu.optionBouton12 = 200;
      }
    } else if (mouseY < 470 && mouseX < 355 && mouseY > 420 && mouseX > 145) {

      param.menu = 1;
      param.xOptionMouv = 0;
    }
  } else if (param.menu == 0 && param.curseur == 1) {

    noCursor();
    param.curseur = 0;
  } else {

    cursor(ARROW);
    param.curseur = 1;
  }
}



//Key Mapping
void keyPressed() {
  if (key == 's' || key == 'S') {       // Start and Stop

    if (param.ledStart == 0) {

      param.ledStart = 1;
      println("startup initiated...");
      println("Hello");
      param.curseur = 1;
      mousePressed();
      loop();
    } else {

      param.ledStart = 0;
      println("Shutdown...");
      param.curseur = 0;
      mousePressed();
      param.aie = 0;
      param.eye = 0;
      noLoop();
      draw();
    }
  } else if (key == 'p' || key == 'P' ) {       // Pause

    param.menu = 1;
    param.tuto = 0;
  } else if (key == CODED && param.ModeDeSuivi == 1) {        //Clavier 

    if (keyCode == UP) {

      param.yPosRobot -= param.vDepla*5 ;
    } else if (keyCode == DOWN) {

      param.yPosRobot += param.vDepla*5;
    } else if (keyCode == RIGHT) {

      param.xPosRobot += param.vDepla*5;
    } else if (keyCode == LEFT) {

      param.xPosRobot -= param.vDepla*5;
    }
  } else { 

    if (param.ledStart == 1) {
      println("Aie, cela fait mal!");
      param.aie++;
      fonct.folie();
    }
  }
}