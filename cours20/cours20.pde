

void setup() 
{
  Complexe z = new Complexe(1, -2);

  // Le conjugué du conjugué de z doit être égal à z
  if (z.conj().conj().egal(z)) {
    println("Tout va bien !");
  } else {
    println("Nous avons un sérieux problème");
  }

  // z multiplié par son conjugé est égal au carré du module de z
  if (z.mult(z.conj()).egal(z.mod() * z.mod())) {
    println("Tout va bien !");
  } else {
    println("Nous avons un sérieux problème");
  }
}