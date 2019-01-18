//Global Variables
JSONObject jsonCurrentEdmonton;
JSONObject jsonForecastEdmonton;
JSONObject jsonCurrentCalgary;
JSONObject jsonCurrentnewMex;
JSONObject jsonCurrentFlorida;

PImage imageEd;

import java.util.Date; 
//http://api.openweathermap.org/data/2.5/weather?id=5946768&APPID=6ae57189002ecfea2e94bc2e5de730ff&mode=json&units=metric
void buildingURL() {
  String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
  String baseURL_Forecast = "http://api.openweathermap.org/data/2.5/forecast?";
  String edmontonId = "id=5946768";
  String calgaryId = "id=5913490";
  String newMexicoId = "id=5481136";
  String floridaId = "id=4155751";
  String apiKey = "APPID=6ae57189002ecfea2e94bc2e5de730ff"; //API Key is PRIVATE so not included here
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  String URLCurrentEdmonton = baseURL_Current + edmontonId + and + apiKey + and + mode + and + unitMetric;
  String URLForecastEdmonton = baseURL_Forecast + edmontonId + and + apiKey + and + mode + and + unitMetric;
  String URLCurrentCalgary = baseURL_Current + calgaryId + and + apiKey + and + mode + and + unitMetric;
  //String URLForecastCalgary = baseURL_Forecast + calgaryId + and + apiKey + and + mode + and + unitMetric;
  String URLCurrentnewMex = baseURL_Current + newMexicoId + and + apiKey + and + mode + and + unitMetric;
  String URLCurrentFlorida = baseURL_Current + floridaId + and + apiKey + and + mode + and + unitMetric;

  jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton); //Must be Global Variable
  jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
  jsonCurrentCalgary = loadJSONObject(URLCurrentCalgary);
  jsonCurrentnewMex = loadJSONObject(URLCurrentnewMex);
  jsonCurrentFlorida = loadJSONObject(URLCurrentFlorida);
}

void buildingImageURL() {
  String baseURL_Image = "http://openweathermap.org/img/w/";
  String baseURL_Ending = ".png";
  
  //getting the images
/*  JSONArray weather = jsonCurrentEdmonton.getJSONArray("weather"); // Unwrap []
  JSONObject all = weather.getJSONObject(0); //Unwrap {}
  String imageEd = all.getString("icon");

  String URL_ImageEd = baseURL_Image + imageEd + baseURL_Ending;
  
  println(URL_ImageEd);
  imageEd = loadImage(URL_ImageEd); */
}
