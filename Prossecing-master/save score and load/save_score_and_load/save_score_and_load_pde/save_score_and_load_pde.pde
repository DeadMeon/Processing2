JSONArray highscore;

int newScore = 300;
int[] score = {202, 452};


void setup() {
  saveScore();
  addScore();
  println();
  loadScore();
  exit();
}


void addScore() {
  loadScore();
  if (score[0] > newScore) {
    score = splice(score, newScore, 0);
  } else if (score[score.length-1] < newScore) {
    score = splice(score, newScore, score.length);
  } else {
    for (int j = 1; j <= score.length-1; j++) {
      if (score[j] == newScore) {
      } else if (score[j] > newScore && score[j-1] < newScore) {
        score = splice(score, newScore, j);
      }
    }
  }
  saveScore();
}



void saveScore() {

  highscore = new JSONArray();
  for (int i = 0; i < score.length; i++) {
    JSONObject addScore = new JSONObject();
    addScore.setInt("Rang", i+1);
    addScore.setInt("Score", score[i]);
    highscore.setJSONObject(i, addScore);
  }
  saveJSONArray(highscore, "data/Score.json");
}



void loadScore() {

  highscore = loadJSONArray("data/Score.json");
  for (int i = 0; i < highscore.size(); i++) {
    JSONObject addScore = highscore.getJSONObject(i); 
    int id = addScore.getInt("Rang");
    int score = addScore.getInt("Score");
    println("Rang : " + id); 
    println("Score : " + score);
  }
}