//Global Variables
JSONObject jsonCurrentEdmonton;
JSONObject jsonForecastEdmonton;

import java.util.Date; 

void buildingURL() {
  String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
  String baseURL_Forecast = "http://api.openweathermap.org/data/2.5/forecast?";
  String edmontonId = "id=5946768";
  String apiKey = "APPID=6ae57189002ecfea2e94bc2e5de730ff"; //API Key is PRIVATE so not included here
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  String URLCurrentEdmonton = baseURL_Current + edmontonId + and + apiKey + and + mode + and + unitMetric;
  String URLForecastEdmonton = baseURL_Forecast + edmontonId + and + apiKey + and + mode + and + unitMetric;

  jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton); //Must be Global Variable
  jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
}

void unwrappingData() {
 long dt = jsonCurrentEdmonton.getInt("dt"); //must be 64-bit value, not 32-bit
  Date dateHuman = new Date(dt*1000); //convert from milliseconds
  println(dateHuman);
  JSONObject main = jsonCurrentEdmonton.getJSONObject("main"); //Unwrap {}
  float temp = main.getFloat("temp");
  println(temp);
  JSONArray weather = jsonCurrentEdmonton.getJSONArray("weather"); // Unwrap []
  JSONObject all = weather.getJSONObject(0); //Unwrap {}
  String description = all.getString("description");
  println (description);
}