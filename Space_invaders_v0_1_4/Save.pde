// un element a faire

class Save 
{
  // attributs
  JSONArray highscore;
  int newScore;
  int[] Score = {100, 500, 666};


  // constructeur(s)
  Save() 
  {
    this.newScore = param.score;
  }


  // méthodes
  // ajout et classement des score 
  void addScore(int newScore) {
    Score = sort(Score);
    loadScore();
    if (Score[0] > newScore) {
      Score = splice(Score, newScore, 0);
    } else if (Score[Score.length-1] < newScore) {
      Score = splice(Score, newScore, Score.length);
    } else {
      for (int j = 1; j <= Score.length-1; j++) {
        if (Score[j] == newScore) {
        } else if (Score[j] > newScore && Score[j-1] < newScore) {
          Score = splice(Score, newScore, j);
        }
      }
    }
    saveScore();
  }


  // enregistrement des score sur un support externe en Json
  void saveScore() {

    highscore = new JSONArray();
    
    for (int i = 0; i < Score.length; i++) {
      JSONObject addScore = new JSONObject();
      addScore.setInt("Rang", i+1);
      addScore.setInt("Score", Score[i]);
      highscore.setJSONObject(i, addScore);
    }

    saveJSONArray(highscore, "data/Score.json");
  }


  // chargement des score sur un support externe en Json
  void loadScore() {

    highscore = loadJSONArray("data/Score.json");

    for (int i = 0; i < highscore.size(); i++) {
      JSONObject addScore = highscore.getJSONObject(i); 
      int id = addScore.getInt("Rang");
      int Score = addScore.getInt("Score");
      println("Rang : " + id); 
      println("Score : " + Score);
    }
  }

  // affichage des scores 
  // to-do ...
  void leaderBoard() {

    highscore = loadJSONArray("data/Score.json");
    for (int i = 0; i < 4; i++) {
      JSONObject addScore = highscore.getJSONObject(i); 
      int id = addScore.getInt("Rang");
      int Score = addScore.getInt("Score");
      println("Rang : " + id); 
      println("Score : " + Score);
    }
  }
}