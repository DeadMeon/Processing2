///15.2
/*
int[] nb1 = new int[30];
 float[] nb2 = new float[100];
 Chip[] chip = new Chip[56];
 */


///15.3
// 4 et 3 ne fontionne pas;


///15.4
/*
int[] nombres = {5, 4, 2, 7, 6, 8, 5, 2, 8, 14};
 
 for (int i = 0; i < nombres.length; i++) {
 nombres[i] = nombres[i] * nombres[i];
 println(nombres[i]);
 }
 
 for (int i = 0; i < nombres.length; i++) {
 nombres[i] += int(random(0, 10));
 }
 
 for (int i = 0; i < nombres.length-1; i++) {
 nombres[i] += nombres[i+1];
 println(nombres[i]);
 }
 
 int sommeNb = 0;
 for (int i = 0; i < nombres.length; i++) {
 sommeNb += nombres[i];
 }
 */


///15.5
/*
int[] tab = new int[20];
 
 tab[0] = 0;
 tab[1] = 1;
 for (int i = 2; i < tab.length; i++) {
 tab[i] = tab[i-1] + tab[i-2];
 }
 println(tab);
 */


///15.6
/*
int[] nbOcc = new int[100];
 
 void setup() {
 size(800, 400);
 frameRate(240);
 
 // On initialise tout à zéro
 for (int i = 0; i < nbOcc.length; i++) {
 nbOcc[i] = 0;
 }
 }
 
 void draw() {
 background(230);
 // On génère un nombre aléatoire
 int r = int(random(nbOcc.length));
 
 // On met à jour le nombre de ses occurrences
 nbOcc[r]++;
 fill(20);
 // TODO : Tracer l'histogramme
 for (int i = 0; i < nbOcc.length; i++) {
 rect(i*8, height, 8, -nbOcc[i]);
 }
 }
 */


///15.7
int[] notes;

void setup()
{
  size(800, 500);
  String[] sNotes = loadStrings("notes.txt");
  notes = int(sNotes);
  moyenne();
}



void draw()
{
  note();
  traceNot();
}



float moyenne()
{
  float moy = 0;
  for (int i = 0; i < notes.length; i++)
  {
    moy += notes[i];
  }
  println("La moyenne est de : " + moy/notes.length);
  return moy;
}



void traceNot() 
{
  int[] somNot = new int[21]; 
  int eMax = 0;
  for (int i = 0; i < somNot.length; i++)
  {
    int x = 0; 
    for (int j = 0; j < notes.length; j++)
    {
      if (notes[j] == i)
      {
        x++;
      }
    }
    somNot[i] = x;
  }
  for (int l = 0; l < somNot.length; l++)
  {
    if (eMax < somNot[l])
    {
      eMax = somNot[l];
    }
  }
  for (int k = 0; k < somNot.length; k++)
  {
    float y = map(somNot[k], 0, eMax, height - 20, 0); 
    rect(k*width/22+width/22, 20*height/22, width/22, -somNot[k]*height/22);
  }
}



void note()
{
  for (int i = 0; i< 21; i++)
  {
    line(width/22, i*height/22, width, i*height/22); 
    text(i, width/50, 20*height/22-i*height/22); 
    text(i, (1.25+i)*width/22, 21*height/22);
  }
  // line(moy*width/22+width/22, 0, width/22, height/22);
}