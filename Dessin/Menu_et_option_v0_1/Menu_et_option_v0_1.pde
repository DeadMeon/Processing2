
int x=0;
int menu = 1;
float xOptionMouv = 0;
int optionBouton1 = 200;
int optionBouton2 = 255;
int optionBouton3 = 255;
int optionBouton4 = 200;
int optionBouton5 = 255;
int optionBouton6 = 200;
int optionBouton7 = 255;
int optionBouton8 = 255;
int optionBouton9 = 200;
int optionBouton10 = 255;
int optionBouton11 = 255;
int optionBoutonRetour = 255;

//Parametrage 
int ModeDeSuivi = 2; // 0 = sourie; 1 = clavier; 2 = auto
int vDepla = 2;
int ChoixRobot = 0; // 0 = R2D2 ; 1= Android
int xSize = 500;
int ySize = 500;

void setup() {
  size(500, 500);
}

void draw() { 
  if (menu == 1) {
    MenuStart();
  } else if (menu == 2) {
    MenuOption();
  } else {
    background(0);
    fill(x);
    rectMode(CENTER);
    rect(height/2, width/2, 250, 250);
    x=x+1;
  }
} 



void MenuStart() {  
  background(230);
  fill(0);
  textAlign(CENTER);
  textSize(42);
  text("RobotAnimated", 250, 250);
  textSize(14);
  text("v0.1", 375, 275);
  textSize(24);
  text("Lancer!", 250, 375);
  textSize(10);
  text("by A.Mhirsi", 450, 475);
  noFill();
  strokeWeight(3);
  stroke(0);
  rect(145, 335, 210, 70);
  noStroke();
  fill(255);
  rect(450, 0, 50, 50);
  fill(0);
  rect(460, 15, 30, 5, 5);
  rect(460, 25, 30, 5, 5);
  rect(460, 35, 30, 5, 5);
}




void MenuOption() {

  while (xOptionMouv <= 500) { 
    xOptionMouv = xOptionMouv +0.1;
    noStroke();
    fill(255);
    rect(450-xOptionMouv, 0, 50, 50);
    fill(0);
    rect(460-xOptionMouv, 15, 30, 5, 5, 5, 5, 5);
    rect(460-xOptionMouv, 25, 30, 5, 5, 5, 5, 5);
    rect(460-xOptionMouv, 35, 30, 5, 5, 5, 5, 5);
  }

  noStroke();
  fill(255);
  rect(0, 0, 500, 500);
  strokeWeight(3);
  fill(optionBoutonRetour);
  rect(145, 420, 210, 50);
  stroke(0);
  strokeWeight(2);
  fill(optionBouton1);
  rect(75, 140, 100, 30);
  fill(optionBouton2);
  rect(200, 140, 100, 30);
  fill(optionBouton3);
  rect(325, 140, 100, 30);
  fill(optionBouton4);
  rect(125, 215, 100, 30);
  fill(optionBouton5);
  rect(275, 215, 100, 30);
  fill(optionBouton6);
  rect(75, 290, 100, 30);
  fill(optionBouton7);
  rect(200, 290, 100, 30);
  fill(optionBouton8);
  rect(325, 290, 100, 30);  
  fill(optionBouton9);
  rect(75, 365, 100, 30);
  fill(optionBouton10);
  rect(200, 365, 100, 30);
  fill(optionBouton11);
  rect(325, 365, 100, 30);

  fill(0);
  textAlign(CENTER);
  textSize(24);
  text("Options", 250, 50);
  text("Retour", 250, 450);
  textSize(14);
  text("Taille de la Fenétre (Ne marche pas encore...)", 250, 125);
  text("Choix du Robot", 250, 200);
  text("Vitesse de Déplacement du Robot", 250, 275);
  text("Mode de Déplacement", 250, 350);
  textSize(12);
  text("500x500", 125, 160);
  text("600x600", 250, 160);
  text("700x700", 375, 160);
  text("R2D2", 175, 235);
  text("Android", 325, 235);
  text("1 m/s", 125, 310);
  text("2 m/s", 250, 310);
  text("5 m/s", 375, 310);
  text("Sourie", 125, 385);
  text("Clavier", 250, 385);
  text("Auto", 375, 385);
}



void mousePressed() {
  if (menu == 1) {
    if (mouseX > 450 && mouseX < 500 && mouseY < 50 && mouseY > 0 ) {
      menu = 2;
    } else if (mouseX > 145 && mouseX < 355 && mouseY < 405 && mouseY > 335) {
      menu = 0;
    }
  } else if (menu == 2) {
    if (mouseY > 140 && mouseY < 170) {
      if (mouseX > 75 && mouseX < 175) {
        xSize = 500;
        ySize = 500;
        optionBouton1 = 200;
        optionBouton2 = 255;
        optionBouton3 = 255;
      } else if (mouseX > 200 && mouseX < 300) {
        xSize = 600;
        ySize = 600;
        optionBouton1 = 255;
        optionBouton2 = 200;
        optionBouton3 = 255;
      } else if (mouseX > 325 && mouseX < 425) {
        xSize = 700;
        ySize = 700;
        optionBouton1 = 255;
        optionBouton2 = 255;
        optionBouton3 = 200;
      }
    } else if (mouseY > 215 && mouseY < 245) {
      if (mouseX > 125 && mouseX < 225) {
        ChoixRobot = 0;
        optionBouton4 = 200;
        optionBouton5 = 255;
      } else if (mouseX > 275 && mouseX < 375) {
        ChoixRobot = 1;
        optionBouton4 = 255;
        optionBouton5 = 200;
      }
    } else if (mouseY > 290 && mouseY < 320) {
      if (mouseX > 75 && mouseX < 175) {
        vDepla =1;
        optionBouton6 = 200;
        optionBouton7 = 255;
        optionBouton8 = 255;
      } else if (mouseX > 200 && mouseX < 300) {
        vDepla =2;
        optionBouton6 = 255;
        optionBouton7 = 200;
        optionBouton8 = 255;
      } else if (mouseX > 325 && mouseX < 425) {
        vDepla =5;
        optionBouton6 = 255;
        optionBouton7 = 255;
        optionBouton8 = 200;
      }
    } else if (mouseY > 365 && mouseY < 395) {
      if (mouseX > 75 && mouseX < 175) {
        ModeDeSuivi = 0;
        optionBouton9 = 200;
        optionBouton10 = 255;
        optionBouton11 = 255;
      } else if (mouseX > 200 && mouseX < 300) {
        ModeDeSuivi = 1;
        optionBouton9 = 255;
        optionBouton10 = 200;
        optionBouton11 = 255;
      } else if (mouseX > 325 && mouseX < 425) {
        ModeDeSuivi = 2;
        optionBouton9 = 255;
        optionBouton10 = 255;
        optionBouton11 = 200;
      }
    } else if (mouseY < 470 && mouseX < 355 && mouseY > 420 && mouseX > 145) {
      menu = 1;
    }
  }
}