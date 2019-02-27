Snake leader;
Voiture v;
Snake[] followers = new Snake[10];
Voiture voitures = new Voiture();
Bande[] bandes = new Bande[10];

/*
void setup() {
  size(200, 200);
  voitures = new Voiture(0, height/2, random(1, 5), color(255), 8);
  for (int i = 0; i < bandes.length; i++) {
    bandes[i] = new Bande();
  }
}

void draw() {
  background(100);
  voitures.dessiner();
  for (int i = 0; i < bandes.length; i++) {
    bandes[i].bouger();
    bandes[i].rollover(v.x);
    bandes[i].afficher();
  }
}
*/

/*
void setup() 
{
  size(800, 800);
  leader = new Snake(50, color(255, 0, 0), 0, 0, 0);
  for (int i = 0; i < followers.length; i++) {
    followers[i] = new Snake(int(random(20, 80)), 
      color(random(255), random(255), random(255)), random(2, 10), 
      random(width), random(height));
  }
}

void draw() 
{
  background(0);
  if (mousePressed == false)
  {
    followers[0].avancerVers(followers[followers.length-1].getXQueue(), followers[followers.length-1].getYQueue());
  } else
  {
    followers[0].deplacer(mouseX, mouseY);
  }
  followers[0].dessiner();
  for (int i = 1; i < followers.length; i++) {
    followers[i].avancerVers(followers[i-1].getXQueue(), followers[i-1].getYQueue());
    followers[i].dessiner();
  }
}
*/