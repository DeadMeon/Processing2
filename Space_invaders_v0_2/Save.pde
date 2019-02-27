class Save 
{
  // attributs
  JSONArray parametre;

  Save()
  {
  }

  // méthodes
  // enregistrement des parametre sur un support externe en Json
  void saveParam() {

    parametre = new JSONArray();

    JSONObject addParam = new JSONObject();
    addParam.setInt("nbAlien", param.nbAlien);
    addParam.setInt("niv", param.niv);
    addParam.setInt("tGen", param.tGen);
    addParam.setInt("tuto", param.tuto);
    addParam.setInt("diff", param.diff);
    addParam.setInt("choixJoueur", param.choixJoueur);
    parametre.setJSONObject(0, addParam);

    saveJSONArray(parametre, "data/Param.json");
  }

  // remise a zero des parametres
  void resetParam() {

    parametre = new JSONArray();

    JSONObject addParam = new JSONObject();
    addParam.setInt("nbAlien", 3);
    addParam.setInt("niv", -2);
    addParam.setInt("tGen", 10);
    addParam.setInt("tuto", 0);
    addParam.setInt("diff", 1);
    addParam.setInt("choixJoueur", 0);
    parametre.setJSONObject(0, addParam);

    saveJSONArray(parametre, "data/Param.json");
  }


  // chargement des parametre sur un support externe en Json
  void loadParam() {

    parametre = loadJSONArray("data/Param.json");

    for (int i = 0; i < parametre.size(); i++) {
      JSONObject addScore = parametre.getJSONObject(i); 
      param.nbAlien = addScore.getInt("nbAlien");
      param.tGen = addScore.getInt("tGen");
      param.tuto = addScore.getInt("tuto");
      param.niv = addScore.getInt("niv");
      param.diff = addScore.getInt("diff");
      param.choixJoueur = addScore.getInt("choixJoueur");
    }
  }
}