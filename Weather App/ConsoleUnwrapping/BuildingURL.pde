JSONObject jsonCurrentAlberta;

void buildingURL() {
  String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
  String baseURL_Forecast = "http://api.openweathermap.org/data/2.5/forecast?";
  String albertaId = "id=5883102"; //City ID Number
  String edmontonId = "id=5946768";
  String apiKey = "APPID=6ae57189002ecfea2e94bc2e5de730ff"; //API Key is PRIVATE so not included here
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  String URLCurrentAlberta = baseURL_Current + albertaId + and + apiKey + and + mode + and + unitMetric;
  String URLCurrentEdmonton = baseURL_Current + edmontonId + and + apiKey + and + mode + and + unitMetric;
  String URLForecastAlberta = baseURL_Forecast + albertaId + and + apiKey + and + mode + and + unitMetric;
  String URLForecastEdmonton = baseURL_Forecast + edmontonId + and + apiKey + and + mode + and + unitMetric;

  //Verification in Console, copy-paste variable output to Chrome and verify data can be seen correctly
  //println(URLCurrentAlberta);
  //println(URLCurrentEdmonton);
  //println(URLForecastAlberta);
  //println(URLForecastEdmonton);

  //Loading JSONObjects with Website API Data
  jsonCurrentAlberta = loadJSONObject(URLCurrentAlberta); //Must be Global Variable
  JSONObject jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
  JSONObject jsonForecastAlberta = loadJSONObject(URLForecastAlberta);
  JSONObject jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);

  //println("\nCurrent Alberta Weather\n", jsonCurrentAlberta);
  //println("\nCurrent Edmonton Weather\n", jsonCurrentEdmonton);
  //println("\nCurrent Alberta Weather\n", jsonForecastAlberta);
  //println("\nCurrent Edmonton Weather\n", jsonForecastEdmonton);
  //Next: Unwrapping, use JSON Lint to verify
}
