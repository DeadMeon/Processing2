int errorCount = 0;
void setup() {
  size(200, 200);
}
void draw() {
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
  println(errorCount);
  if (errorCount == 1200) {
    exit();
  }
}