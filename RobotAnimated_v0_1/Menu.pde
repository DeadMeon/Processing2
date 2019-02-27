class Menu
{
  int tuto, pauseCount, Timer, xOptionMouv, errorCount;
  float colorRed, colorGreen, colorBlue;
  int optionBouton1, optionBouton2, optionBouton3, optionBouton4, optionBouton5, optionBouton6, optionBouton7, optionBouton8, optionBouton9, optionBouton10, optionBouton11, optionBouton12, optionBoutonRetour;


  Menu()
  {
    this.tuto = param.tuto;
    this.pauseCount = param.pauseCount;
    this.Timer = param.Timer;
    this.xOptionMouv = param.xOptionMouv;
    this.errorCount = param.errorCount;
    this.colorRed = param.colorRed;
    this.colorGreen = param.colorGreen;
    this.colorBlue = param.colorBlue;
    optionBouton1 = 200;
    optionBouton2 = 255;
    optionBouton3 = 255;
    optionBouton4 = 200;
    optionBouton5 = 255;
    optionBouton6 = 255;
    optionBouton7 = 200;
    optionBouton8 = 255;
    optionBouton9 = 255;
    optionBouton10 = 200;
    optionBouton11 = 255;
    optionBouton12 = 255;
    this.optionBoutonRetour = param.optionBoutonRetour;
  }


  //Pause
  void pause() 
  {
    if (tuto == 1 && pauseCount < 255) 
    {
      fill(pauseCount);
      pauseCount +=  1;
      textAlign(CENTER);
      textSize(14);
      text("Appuyer sur 'P' pour revenir au Menu", width -180, 20, 180, 50);
    }
  }



  // Menu
  void menuStart() 
  {  
    int t = 5;

    rectMode(CORNER);
    background(230);
    fill(0);
    textAlign(CENTER);
    textSize(42);
    text("RobotAnimated", 250, 250);
    textSize(14);
    text("v0.6", 375, 275);
    textSize(10);
    text("by A.Mhirsi", 450, 475);
    fonct.timer(t);

    //Clignotement du bouton
    if (mouseX > 145 && mouseX < 355 && mouseY < 405 && mouseY > 335 && Timer == t) 
    {        
      fill(colorRed = random(0, 255), colorGreen = random(0, 255), colorBlue = random(0, 255));
    } else if (mouseX > 145 && mouseX < 355 && mouseY < 405 && mouseY > 335 && Timer != t) 
    {
      fill(colorRed, colorGreen, colorBlue);
    } else {
      noFill();
    }
    strokeWeight(3);
    stroke(0);
    rect(145, 335, 210, 70);
    noStroke();
    fill(255);
    rect(450, 0, 50, 50);
    fill(0);
    textSize(24);
    text("Lancer!", 250, 375);
    rect(460, 15, 30, 5, 5);
    rect(460, 25, 30, 5, 5);
    rect(460, 35, 30, 5, 5);
    xOptionMouv = -500;
  }


  // Option
  void menuOption() 
  {
    //Animation de la fenetre option 
    if (xOptionMouv < 0)
    { 
      xOptionMouv = xOptionMouv +10;
    } 

    noStroke();
    fill(255);
    rect(width-50-xOptionMouv, 0, 50, 50);
    fill(0);
    rect(width-40-xOptionMouv, 15, 30, 5, 5, 5, 5, 5);
    rect(width-40-xOptionMouv, 25, 30, 5, 5, 5, 5, 5);
    rect(width-40-xOptionMouv, 35, 30, 5, 5, 5, 5, 5);
    noStroke();
    fill(255);
    rect(0-xOptionMouv, 0, 500, 500);
    stroke(0);
    strokeWeight(3);
    fill(optionBoutonRetour);
    rect(145-xOptionMouv, 420, 210, 50);
    strokeWeight(2);
    fill(optionBouton1);
    rect(75-xOptionMouv, 140, 100, 30);
    fill(optionBouton2);
    rect(200-xOptionMouv, 140, 100, 30);
    fill(optionBouton3);
    rect(325-xOptionMouv, 140, 100, 30);
    fill(optionBouton4);
    rect(75-xOptionMouv, 215, 100, 30);
    fill(optionBouton5);
    rect(200-xOptionMouv, 215, 100, 30);
    fill(optionBouton6);
    rect(325-xOptionMouv, 215, 100, 30); 
    fill(optionBouton7);
    rect(75-xOptionMouv, 290, 100, 30);
    fill(optionBouton8);
    rect(200-xOptionMouv, 290, 100, 30);
    fill(optionBouton9);
    rect(325-xOptionMouv, 290, 100, 30);  
    fill(optionBouton10);
    rect(75-xOptionMouv, 365, 100, 30);
    fill(optionBouton11);
    rect(200-xOptionMouv, 365, 100, 30);
    fill(optionBouton12);
    rect(325-xOptionMouv, 365, 100, 30);
    fill(0);
    textAlign(CENTER);
    textSize(24);
    text("Options", 250-xOptionMouv, 50);
    text("Retour", 250-xOptionMouv, 450);
    textSize(14);
    text("Couleur du font de l'écran", 250-xOptionMouv, 125);
    text("Choix du Robot", 250-xOptionMouv, 200);
    text("Vitesse de Déplacement du Robot", 250-xOptionMouv, 275);
    text("Mode de Déplacement", 250-xOptionMouv, 350);
    textSize(12);
    text("Noir", 125-xOptionMouv, 160);
    text("Blanc", 250-xOptionMouv, 160);
    text("?", 375-xOptionMouv, 160);
    text("R2D2", 125-xOptionMouv, 235);
    text("Android", 250-xOptionMouv, 235);
    text("Alien", 375-xOptionMouv, 235);
    text("1 m/s", 125-xOptionMouv, 310);
    text("2 m/s", 250-xOptionMouv, 310);
    text("5 m/s", 375-xOptionMouv, 310);
    text("Sourie", 125-xOptionMouv, 385);
    text("Clavier", 250-xOptionMouv, 385);
    text("Auto", 375-xOptionMouv, 385);
  }


  // Message d'erreur
  void error() 
  {
    background(0);
    String[] word1 = { "abvfbvoqbdvbpqbvbpqziubvpi", "vbreI?voabvjad84qb6d65h4tqh", "irqjghNet46jq3wd1sr64tuq4+hqh", "jq5498kuteysj^qùkrsqkù$ù*h", "aoqpjbvpbMB46QR4H664vt65hd", "454ETVT00etbe4T+ETvV065<yr", "QBORY6q4b+qhTWEY><653jt<6erHQ00", "qy6rbuqb+e6bQ1ybE4BQer+y7eqr6B", "654T5q48yd+yNURLbqe7srtUNr4b", "q34r67-q+/79NMp:%svlVQem.+5yrt", "nitnYNQrnivyuIB6R1B6tzeET6ete", "oinbqyIQbt+565sqbtbrbthRBU+r5", "bqe,yornybrs5b16:u7p:oIHGfX4;utRDrq", "6usN?suTUBT>?SQrunq:ut6qBQBY+QREQ+3"};
    int index1 = int(random(word1.length));
    text(word1[index1], 10, 25, width-10, 20); 
    String[] word2 = { "abvfbvoqbdvbpqbvbpqziubvpi", "vbreI?voabvjad84qb6d65h4tqh", "irqjghNet46jq3wd1sr64tuq4+hqh", "jq5498kuteysj^qùkrsqkù$ù*h", "aoqpjbvpbMB46QR4H664vt65hd", "454ETVT00etbe4T+ETvV065<yr", "QBORY6q4b+qhTWEY><653jt<6erHQ00", "qy6rbuqb+e6bQ1ybE4BQer+y7eqr6B", "654T5q48yd+yNURLbqe7srtUNr4b", "q34r67-q+/79NMp:%svlVQem.+5yrt", "nitnYNQrnivyuIB6R1B6tzeET6ete", "oinbqyIQbt+565sqbtbrbthRBU+r5", "bqe,yornybrs5b16:u7p:oIHGfX4;utRDrq", "6usN?suTUBT>?SQrunq:ut6qBQBY+QREQ+3"};
    int index2 = int(random(word2.length));  
    text(word2[index2], 10, 10, width-10, 20);
    text("Error ...", 10, 60, width-10, 20);
    text("Please check the option and restart the application ...", 10, 80, width-10, 30);
    String[] word3 = { "abvfbvoqbdvbpqbvbpqziubvpi", "vbreI?voabvjad84qb6d65h4tqh", "irqjghNet46jq3wd1sr64tuq4+hqh", "jq5498kuteysj^qùkrsqkù$ù*h", "aoqpjbvpbMB46QR4H664vt65hd", "454ETVT00etbe4T+ETvV065<yr", "QBORY6q4b+qhTWEY><653jt<6erHQ00", "qy6rbuqb+e6bQ1ybE4BQer+y7eqr6B", "654T5q48yd+yNURLbqe7srtUNr4b", "q34r67-q+/79NMp:%svlVQem.+5yrt", "nitnYNQrnivyuIB6R1B6tzeET6ete", "oinbqyIQbt+565sqbtbrbthRBU+r5", "bqe,yornybrs5b16:u7p:oIHGfX4;utRDrq", "6usN?suTUBT>?SQrunq:ut6qBQBY+QREQ+3"};
    int index3 = int(random(word3.length));  
    text(word3[index3], 10, 135, width-10, 20);
    String[] word4 = { "abvfbvoqbdvbpqbvbpqziubvpi", "vbreI?voabvjad84qb6d65h4tqh", "irqjghNet46jq3wd1sr64tuq4+hqh", "jq5498kuteysj^qùkrsqkù$ù*h", "aoqpjbvpbMB46QR4H664vt65hd", "454ETVT00etbe4T+ETvV065<yr", "QBORY6q4b+qhTWEY><653jt<6erHQ00", "qy6rbuqb+e6bQ1ybE4BQer+y7eqr6B", "654T5q48yd+yNURLbqe7srtUNr4b", "q34r67-q+/79NMp:%svlVQem.+5yrt", "nitnYNQrnivyuIB6R1B6tzeET6ete", "oinbqyIQbt+565sqbtbrbthRBU+r5", "bqe,yornybrs5b16:u7p:oIHGfX4;utRDrq", "6usN?suTUBT>?SQrunq:ut6qBQBY+QREQ+3"};
    int index4 = int(random(word4.length));  
    text(word4[index4], 10, 150, width-10, 20);
    delay(50);
    errorCount  = errorCount+1 ;
    if (errorCount == 1200) {
      exit();
    }
  }
}