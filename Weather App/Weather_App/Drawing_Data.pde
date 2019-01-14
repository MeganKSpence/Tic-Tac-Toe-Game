//Global Variables
int drawData = 0; 

String celcius = "°C";
String fahrenheit = "°F";

void drawingDataHighlight() {
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*1/8 && mouseY < height*2/8) {
    fill(highlight);
    rect(width*0, height*1/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*2/8 && mouseY < height*3/8) {
    fill(highlight);
    rect(width*0, height*2/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*3/8 && mouseY < height*4/8) {
    fill(highlight);
    rect(width*0, height*3/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*4/8 && mouseY < height*5/8) {
    fill(highlight);
    rect(width*0, height*4/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*5/8 && mouseY < height*6/8) {
    fill(highlight);
    rect(width*0, height*5/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*6/8 && mouseY < height*7/8) {
    fill(highlight);
    rect(width*0, height*6/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
}

void mouseClickedData() {
  if (pageChange == 1) {
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*1/8 && mouseY < height*2/8) {
      drawData = 1;
      forcastEnable = true;
    } 
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*2/8 && mouseY < height*3/8) {
      drawData = 2;
    } 
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*3/8 && mouseY < height*4/8) {
      drawData = 3;
    } 
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*4/8 && mouseY < height*5/8) {
      drawData = 4;
    } 
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*5/8 && mouseY < height*6/8) {
      drawData = 5;
    } 
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*6/8 && mouseY < height*7/8) {
      drawData = 6;
    }
  }
}

void drawingData() {
  if (pageChange == 1) {
    if (drawData == 1 && forcastChange == false) {
      //Temperature
      JSONObject main = jsonCurrentEdmonton.getJSONObject("main"); //Unwrap {}
      float temp = main.getFloat("temp");
      float Fcalc = temp * 9/5 + 32;
      String tempF = nf(Fcalc, 0, 2);
      String tempCel = str(temp);
      //Description of the weather outside
      JSONArray weather = jsonCurrentEdmonton.getJSONArray("weather"); // Unwrap []
      JSONObject all = weather.getJSONObject(0); //Unwrap {}
      String description = all.getString("description");
      //Image
     // JSONObject imageEd = all.loadJSONObject("icon");
      //image(imageEd, 0, 0);

      fill(highlight);
      rect(width*0, height*1/8, width*3/8, height*1/8);
      Text_Setup(tempCel + celcius, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/8, width*5/8, height*1/8);
      Text_Setup(tempF + fahrenheit, selectionText, height, 0, CENTER, CENTER, width*3/8, height*11/16, width*5/8, height*1/8);
      Text_Setup(Edmonton, selectionText, height, 0, CENTER, CENTER, width*3/8, height*3/32, width*5/8, height*1/8);
      Text_Setup(description, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/32, width*5/8, height*1/8);
    } 
    if (drawData == 2 && forcastChange == false) {
      JSONObject main = jsonCurrentCalgary.getJSONObject("main");
      float temp = main.getFloat("temp");
      float Fcalc = temp * 9/5 + 32;
      String tempF = nf(Fcalc, 0, 2);
      String tempCel = str(temp);
      JSONArray weather = jsonCurrentCalgary.getJSONArray("weather");
      JSONObject all = weather.getJSONObject(0);
      String description = all.getString("description");
      
      fill(highlight);
      rect(width*0, height*2/8, width*3/8, height*1/8);
      Text_Setup(tempCel + celcius, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/8, width*5/8, height*1/8);
      Text_Setup(tempF + fahrenheit, selectionText, height, 0, CENTER, CENTER, width*3/8, height*11/16, width*5/8, height*1/8);
      Text_Setup(Calgary, selectionText, height, 0, CENTER, CENTER, width*3/8, height*3/32, width*5/8, height*1/8);
      Text_Setup(description, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/32, width*5/8, height*1/8);
    }
    if (drawData == 3) {
      JSONObject main = jsonCurrentnewMex.getJSONObject("main"); //Unwrap {}
      float temp = main.getFloat("temp");
      float Fcalc = temp * 9/5 + 32;
      String tempF = nf(Fcalc, 0, 2);
      String tempCel = str(temp);
      //Description of the weather outside
      JSONArray weather = jsonCurrentnewMex.getJSONArray("weather"); // Unwrap []
      JSONObject all = weather.getJSONObject(0); //Unwrap {}
      String description = all.getString("description");
      //Image
     // JSONObject imageEd = all.loadJSONObject("icon");
      //image(imageEd, 0, 0);
      fill(highlight);
      rect(width*0, height*3/8, width*3/8, height*1/8);
      Text_Setup(tempCel + celcius, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/8, width*5/8, height*1/8);
      Text_Setup(tempF + fahrenheit, selectionText, height, 0, CENTER, CENTER, width*3/8, height*11/16, width*5/8, height*1/8);
      Text_Setup(newMexico, selectionText, height, 0, CENTER, CENTER, width*3/8, height*3/32, width*5/8, height*1/8);
      Text_Setup(description, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/32, width*5/8, height*1/8);
    }
    if (drawData == 4) {
      JSONObject main = jsonCurrentFlorida.getJSONObject("main"); //Unwrap {}
      float temp = main.getFloat("temp");
      float Fcalc = temp * 9/5 + 32;
      String tempF = nf(Fcalc, 0, 2);
      String tempCel = str(temp);
      //Description of the weather outside
      JSONArray weather = jsonCurrentFlorida.getJSONArray("weather"); // Unwrap []
      JSONObject all = weather.getJSONObject(0); //Unwrap {}
      String description = all.getString("description");
      fill(highlight);
      rect(width*0, height*4/8, width*3/8, height*1/8);
      Text_Setup(tempCel + celcius, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/8, width*5/8, height*1/8);
      Text_Setup(tempF + fahrenheit, selectionText, height, 0, CENTER, CENTER, width*3/8, height*11/16, width*5/8, height*1/8);
      Text_Setup(Florida, selectionText, height, 0, CENTER, CENTER, width*3/8, height*3/32, width*5/8, height*1/8);
      Text_Setup(description, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/32, width*5/8, height*1/8);
    }
    if (drawData == 5) {
      fill(highlight);
      rect(width*0, height*5/8, width*3/8, height*1/8);
    }
    if (drawData == 6) {
      fill(highlight);
      rect(width*0, height*6/8, width*3/8, height*1/8);
    }
  }
}
