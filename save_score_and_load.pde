int newScore = 850;


String score = "202;452;454;750";
String[] list = split(score, ';');
String s1 = str(newScore);


if (list[0] > s1) {
  score = score + ";" + s1;
} else if (list[list.length-1] < s1 ) {
  score = s1 + ";" + score;
} else {
  for (int j = 1; j < list.length; j++) {
    if (list[j] == s1) {
    } else if (list[j+1] > s1 && list[j] < s1) {
      append(list[j],newScore);
    }
  }
}



// Writes the strings to a file, each on a separate line
saveStrings("list.txt", list);  



// load
String[] score = loadStrings("list.txt");
println("there are " + score.length + " lines");
for (int i = 0; i < score.length; i++) {
  println(score[i]);
}