String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
String baseURL_Forecast = "http://api.openweathermap.org/data/2.5/forecast?";
String albertaId = "id=5883102"; //City ID Number
String edmontonId = "id=3072531";
String apiKey = "APPID=6ae57189002ecfea2e94bc2e5de730ff"; //API Key
String mode = "mode=json";
String unitMetric = "units=metric";
String and = "&";
String URLCurrentAlberta = baseURL_Current + albertaId + and + apiKey + and + mode + and + unitMetric; //This string generates the link on line 9 (one line down)
String URLCurrentEdmonton = baseURL_Current + edmontonId + and + apiKey + and + mode + and + unitMetric; 
String URLForecastAlberta = baseURL_Forecast + albertaId + and + apiKey + and + mode + and + unitMetric; //This string generates the link on line 9 (one line down)
String URLForecastEdmonton = baseURL_Forecast + edmontonId + and + apiKey + and + mode + and + unitMetric; 

println(URLCurrentAlberta);
println(URLCurrentEdmonton);
println(URLForecastAlberta);
println(URLForecastEdmonton);

JSONObject jsonCurentAlberta = loadJSONObject(URLCurrentAlberta);
JSONObject jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
JSONObject jsonForecastAlberta = loadJSONObject(URLForecastAlberta);
JSONObject jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
