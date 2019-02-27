int Boutton1 = 255;
int Boutton2 = 255;
int c = 0;
int Red = 255;
int Green = 0;

float temp = 21; // température courante
float tempCible = 20; // température souhaitée
float tempMarge = 0.5; // marge pour le pilotage
boolean chauffage = false; // le chauffage est-il en marche ?

/*** Simulation de changement de la température. Ne pas toucher ***/
float tempInertie = 0;

void changementTemp() {
  temp = constrain(temp + random(tempInertie) - random(1e-3), 0, 30);
  tempInertie = constrain(tempInertie + (chauffage ? 1 : -1) * 1e-5, 0, 2e-3);
}
/*** Fin de la partie magique ***/

void dessinerThermometre() {
  //Couleur Termo
  if (temp  > tempCible+1 &&  temp  < tempCible+2 || temp < tempCible-1 && temp > tempCible-2) {
    Red = 200;
    Green = 165;
  } else if (temp  > tempCible+2 || temp < tempCible-2) {
    Red = 255;
    Green = 0;
  } else if (temp  > tempCible+tempMarge && temp  < tempCible+1 || temp < tempCible-tempMarge && temp > tempCible-1) {
    Red = 0;
    Green = 255;
  }

  rectMode(CORNER);
  stroke(0);
  noFill();
  rect(20, 20, 20, height - 40);
  // la fonction map() est une application entre deux intervalles
  // dans ce cas elle transforme une temperature entre 0 et 30
  // en coordonnée y entre height - 20 et 20
  float y = map(temp, 0, 30, height - 20, 20);
  noStroke();
  fill(Red, Green, 0);
  rect(20, y, 20, height - 20 - y);

  //Affichage Cible
  fill(0);
  stroke(1);  
  float yCible = map(tempCible, 0, 30, height - 20, 20);
  line(20, yCible, 40, yCible);
  triangle(10, yCible +5, 10, yCible -5, 20, yCible);

  //graduation
  textAlign(LEFT);
  textSize(12);
  fill(0);
  stroke(1);
  for (int i = 30; i >= 0; i--) {
    float yMarque = map(i, 0, 30, height - 20, 20);
    line(40, yMarque, 45, yMarque);
  }
  for (int i = 30; i >= 0; i=i-5) {
    float yMarque = map(i, 0, 30, height - 20, 20);
    line(40, yMarque, 50, yMarque);
    text(i, 55, 5+ yMarque);
  }

  //Boutton
  rectMode(CENTER);
  fill(Boutton1);
  rect(135, 200, 100, 40);
  fill(Boutton2);
  rect(135, 250, 100, 40);
  fill(0);
  textSize(30);
  textAlign(CENTER);
  text("+", 135, 210);
  text("-", 135, 260);
  if (c == 100) {
    Boutton1 = 255;
    Boutton2 = 255;
  } else {
    c++;
  }
}


void mousePressed() {
  if (mouseX < 185 && mouseY < 220 && mouseX > 85 && mouseY > 180) {
    tempCible = tempCible +0.5;
    Boutton1 = 200;
  } else if (mouseX < 185 && mouseY < 270 && mouseX > 85 && mouseY > 230) {
    tempCible = tempCible -0.5;
    Boutton2 = 200;
  }
}


void allumer() {
  chauffage = true;
}

void eteindre() {
  chauffage = false;
}

void piloter() {

  //Voyant
  fill(200);
  stroke(1);
  rectMode(CENTER);
  rect(135, 150, 10, 10);

  if (temp+tempMarge  > tempCible) {
    eteindre();
  } else if (temp-tempMarge < tempCible) {
    allumer();
    fill(0, 0, 255);
    rect(135, 150, 10, 10);
  }
}

void setup() {
  size(200, 400);
}

void draw() {
  background(255);
  dessinerThermometre();
  piloter();
  changementTemp();
}