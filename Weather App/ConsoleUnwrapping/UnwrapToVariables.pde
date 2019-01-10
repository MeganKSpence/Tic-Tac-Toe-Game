import java.util.Date; 

//Println to verify lines of code actually populate variables correctly using
//JSONLint

void unwrappingData() {
  long dt = jsonCurrentAlberta.getInt("dt"); //must be 64-bit value, not 32-bit
  Date dateHuman = new Date(dt*1000); //convert from milliseconds
  println(dateHuman);
  JSONObject main = jsonCurrentAlberta.getJSONObject("main"); //Unwrap {}
  float temp = main.getFloat("temp");
  println(temp);
  JSONArray weather = jsonCurrentAlberta.getJSONArray("weather"); // Unwrap []
  JSONObject all = weather.getJSONObject(0); //Unwrap {}
  String description = all.getString("description");
  //println (description);
}
