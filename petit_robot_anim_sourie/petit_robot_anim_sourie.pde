// setup() s'exécute en premier une seule fois
// size() doit toujours être la première instruction
void setup() {
  size(200, 200);
  
}

// draw() boucle en continu jusqu'à ce qu'on ferme la fenêtre
void draw() {
  background(255);

  // le corps
  fill(200);
  rect(mouseX -40, mouseY -40, 80, 80);

  // les roues
  fill(200);
  rect(mouseX -60, mouseY -20, 20, 90);
  rect(mouseX +40, mouseY -20, 20, 90);
  fill(20);
  rect(mouseX -58, mouseY +70, 16, 10);
  rect(mouseX +42, mouseY +70, 16, 10);

  // la tête
  noFill();
  ellipseMode(CORNER);
  arc(mouseX -40, mouseY -80, 80, 80, PI, TWO_PI);
  fill(200);
  arc(mouseX -20, mouseY -60, 40, 40, PI, TWO_PI);


  // la caméra
  fill(0);
  ellipseMode(CENTER);
  ellipse(mouseX, mouseY -50, 10, 10);


  // l'antenne
  line(mouseX -40, mouseY -80, mouseX -40, mouseY -40);

  // deco
  fill(220);
  strokeWeight(2);
  line(mouseX -20, mouseY -30, mouseX +40, mouseY -30);
  strokeWeight(1);
  rect(mouseX -40, mouseY -10, 30, 10);
  rect(mouseX -10, mouseY +05, 50, 10);
  fill(0, 255, 0);
  rect(mouseX +10, mouseY -20, 10, 10);
  fill(255, 0, 0);
  rect(mouseX +25, mouseY -20, 10, 10);
  fill(0, 0, 255);
  rect(mouseX -25, mouseY +25, 10, 10);
  line(mouseX -60, mouseY, mouseX -40, mouseY);
  line(mouseX +40, mouseY, mouseX +60, mouseY);
  
  // le message
  //println("Processing ... please wait");
}