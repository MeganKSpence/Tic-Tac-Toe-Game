//Global Variables
int drawData = 0; 

String celcius = "°C";
String fahrenheit = "°F";

//Date for all
int month = month();
int day = day();
int hour = hour();
int min = minute();
String d = str(day);
String h = str(hour);
String mi = str(min);
String m;
String time;

PImage Ed;


void drawingDataHighlight() {
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*1/8 && mouseY < height*2/8) {
    fill(highlight);
    rect(width*0, height*1/8, width*3/8, height*1/8);
  } 
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*2/8 && mouseY < height*3/8) {
    fill(highlight);
    rect(width*0, height*2/8, width*3/8, height*1/8);
  } 
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*3/8 && mouseY < height*4/8) {
    fill(highlight);
    rect(width*0, height*3/8, width*3/8, height*1/8);
  } 
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*4/8 && mouseY < height*5/8) {
    fill(highlight);
    rect(width*0, height*4/8, width*3/8, height*1/8);
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
  }
}

void mouseClickedData() {
  if (pageChange == 1) {
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*1/8 && mouseY < height*2/8) {
      drawData = 1;
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
  if (month == 1) {
    m = "January";
  } else if (month == 2) {
    m = "Feburuary";
  } else if (month == 3) {
    m = "March";
  } else if (month == 4) {
    m = "April";
  } else if (month == 5) {
    m = "May";
  } else if (month == 6) {
    m = "June";
  } else if (month == 7) {
    m = "July";
  } else if (month == 8) {
    m = "August";
  } else if (month == 9) {
    m = "September";
  } else if (month == 10) {
    m = "October";
  } else if (month == 11) {
    m = "November";
  } else if (month == 12) {
    m = "December";
  }

  for (int i = 1; i < 10; i++) {
    if (min == i) {
      mi = "0" + i;
    }
  }

  if (hour < 13) {
    time = "AM";
  } else if (hour > 12) {
    time = "PM";
    if (hour == 13) {
      h = "1";
    } else if (hour == 14) {
      h = "2";
    } else if (hour == 15) {
      h = "3";
    } else if (hour == 16) {
      h = "4";
    } else if (hour == 17) {
      h = "5";
    } else if (hour == 18) {
      h = "6";
    } else if (hour == 19) {
      h = "7";
    } else if (hour == 20) {
      h = "8";
    } else if (hour == 21) {
      h = "9";
    } else if (hour == 22) {
      h = "10";
    } else if (hour == 23) {
      h = "11";
    } else if (hour == 24) {
      h = "12";
    }
  }

  if (pageChange == 1) {
    if (drawData == 1) {
      fill(highlight);
      rect(width*0, height*1/8, width*3/8, height*1/8);
      if (forcastChange == false) { //Edmonton
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
        

        Text_Setup(tempCel + celcius, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/8, width*5/8, height*1/8);
        Text_Setup(tempF + fahrenheit, selectionText, height, 0, CENTER, CENTER, width*3/8, height*11/16, width*5/8, height*1/8);
        Text_Setup(Edmonton, selectionText, height, 0, CENTER, CENTER, width*3/8, height*3/32, width*5/8, height*1/8);
        Text_Setup(description, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/32, width*5/8, height*1/8);
        Text_Setup(m + " " + d + "th", selectionText, height, 0, CENTER, CENTER, width*3/8, height*26/32, width*5/8, height*1/8);
        Text_Setup(h + ":" + mi + " " + time, selectionText, height, 0, CENTER, CENTER, width*3/8, height*28/32, width*5/8, height*1/8);
      }
      if (forcastChange == true) {
        //Temperature
        JSONObject dt = loadJSONObject("dt");
        JSONObject main = jsonForecastEdmonton.getJSONObject("main");
        float temp = main.getFloat("temp");
        float Fcalc = temp * 9/5 + 32;
        String tempF = nf(Fcalc, 0, 2);
        String tempCel = str(temp);
        
        Text_Setup(tempCel + celcius, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/8, width*5/8, height*1/8);
        Text_Setup(tempF + fahrenheit, selectionText, height, 0, CENTER, CENTER, width*3/8, height*11/16, width*5/8, height*1/8);
        println(dt);
      }
    }
    if (drawData == 2) {
      fill(highlight);
      rect(width*0, height*2/8, width*3/8, height*1/8);
      if (forcastChange == false) { //Calgary
        //Temperature 
        JSONObject main = jsonCurrentCalgary.getJSONObject("main");
        float temp = main.getFloat("temp");
        float Fcalc = temp * 9/5 + 32;
        String tempF = nf(Fcalc, 0, 2);
        String tempCel = str(temp); 
        //Descirption of weather outside
        JSONArray weather = jsonCurrentCalgary.getJSONArray("weather");
        JSONObject all = weather.getJSONObject(0);
        String description = all.getString("description"); 

        Text_Setup(tempCel + celcius, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/8, width*5/8, height*1/8);
        Text_Setup(tempF + fahrenheit, selectionText, height, 0, CENTER, CENTER, width*3/8, height*11/16, width*5/8, height*1/8);
        Text_Setup(Calgary, selectionText, height, 0, CENTER, CENTER, width*3/8, height*3/32, width*5/8, height*1/8);
        Text_Setup(description, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/32, width*5/8, height*1/8);
        Text_Setup(m + " " + d + "th", selectionText, height, 0, CENTER, CENTER, width*3/8, height*26/32, width*5/8, height*1/8);
        Text_Setup(h + ":" + mi + " " + time, selectionText, height, 0, CENTER, CENTER, width*3/8, height*28/32, width*5/8, height*1/8);
      }
    }
    if (drawData == 3) {
      fill(highlight);
      rect(width*0, height*3/8, width*3/8, height*1/8);
      if (forcastChange == false) { //New Mexico
        //Temperature
        JSONObject main = jsonCurrentnewMex.getJSONObject("main"); 
        float temp = main.getFloat("temp");
        float Fcalc = temp * 9/5 + 32;
        String tempF = nf(Fcalc, 0, 2);
        String tempCel = str(temp);
        //Description of the weather outside
        JSONArray weather = jsonCurrentnewMex.getJSONArray("weather");
        JSONObject all = weather.getJSONObject(0);
        String description = all.getString("description");

        Text_Setup(tempCel + celcius, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/8, width*5/8, height*1/8);
        Text_Setup(tempF + fahrenheit, selectionText, height, 0, CENTER, CENTER, width*3/8, height*11/16, width*5/8, height*1/8);
        Text_Setup(newMexico, selectionText, height, 0, CENTER, CENTER, width*3/8, height*3/32, width*5/8, height*1/8);
        Text_Setup(description, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/32, width*5/8, height*1/8);
        Text_Setup(m + " " + d + "th", selectionText, height, 0, CENTER, CENTER, width*3/8, height*26/32, width*5/8, height*1/8);
        Text_Setup(h + ":" + mi + " " + time, selectionText, height, 0, CENTER, CENTER, width*3/8, height*28/32, width*5/8, height*1/8);
      }
    }
    if (drawData == 4) { //Florida
      fill(highlight);
      rect(width*0, height*4/8, width*3/8, height*1/8);
      if (forcastChange == false) {
        //Temperature
        JSONObject main = jsonCurrentFlorida.getJSONObject("main"); 
        float temp = main.getFloat("temp");
        float Fcalc = temp * 9/5 + 32;
        String tempF = nf(Fcalc, 0, 2);
        String tempCel = str(temp);
        //Description of the weather outside
        JSONArray weather = jsonCurrentFlorida.getJSONArray("weather"); 
        JSONObject all = weather.getJSONObject(0); 
        String description = all.getString("description");

        Text_Setup(tempCel + celcius, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/8, width*5/8, height*1/8);
        Text_Setup(tempF + fahrenheit, selectionText, height, 0, CENTER, CENTER, width*3/8, height*11/16, width*5/8, height*1/8);
        Text_Setup(Florida, selectionText, height, 0, CENTER, CENTER, width*3/8, height*3/32, width*5/8, height*1/8);
        Text_Setup(description, selectionText, height, 0, CENTER, CENTER, width*3/8, height*5/32, width*5/8, height*1/8);
        Text_Setup(m + " " + d + "th", selectionText, height, 0, CENTER, CENTER, width*3/8, height*26/32, width*5/8, height*1/8);
        Text_Setup(h + ":" + mi + " " + time, selectionText, height, 0, CENTER, CENTER, width*3/8, height*28/32, width*5/8, height*1/8);
      }
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
