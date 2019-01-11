//Varables
float titleWidth;
float titleHeight; 

String Exit;
String Forcast;
String page1;
String page2;
String page3;
String Edmonton;
String Calgary;
String newMexico;
String Florida;

PFont selectionText;

void Fonts () {
  selectionText = createFont ("Cambria", 55);
}

void variables() {
  Exit = "Exit";
  Forcast = "Forcast";
  page1 = "Page 1/3";
  page2 = "Page 2/3";
  page3 = "Page 3/3";
  Edmonton = "Edmonton";
  Calgary = "Calgary";
  newMexico = "New Mexico";
  Florida = "Florida";
  titleWidth = width*3/8; //  2/5
  titleHeight = height*1/8;
}

void Text_Setup(String string, PFont font, float height, color ink, int alignHorizontal, int alignVertical, float rectX, float rectY, float rectWidth, float rectHeight) {
  Fonts();
  float fontSize = height;
  fill(ink);
  textAlign (alignHorizontal, alignVertical);

  //Reference to Text Calculator
  if (string.length() >= 13) { //Number changes depending on geometry ratio (width/height)
    fontSize = textCalculator(height, string, titleWidth);
  } else if (string.length() >= 4) {
    // catch for string less than 13 characters
    fontSize = fontSize * 0.06; //change number as needed
  } else {
    fontSize = fontSize * 0.16;
  } 

  textFont(font, fontSize);
  text(string, rectX, rectY, rectWidth, rectHeight);
  fill(255);
}


float textCalculator(float size, String string, float rectWidth) {
  float i = 1;
  textSize(size); //for textWidth sizing
  while (textWidth(string) > rectWidth) {
    size = size * i; 
    textSize(size);
    i = i - 0.1;
  }
  return size;
}

void Text() {
  Text_Setup(Exit, selectionText, height, 0, CENTER, CENTER, width*6/8, height*0, width*2/8, height*3/32);
  //  Text_Setup(Forcast, selectionText, height, 0, CENTER, CENTER, width*3/8, height*0, width*3/8, height*3/32);
  if (pageChange == 1) {
    Text_Setup(Edmonton, selectionText, height, 0, CENTER, CENTER, width*0, height*1/8, titleWidth, titleHeight);
    Text_Setup(Calgary, selectionText, height, 0, CENTER, CENTER, width*0, height*2/8, titleWidth, titleHeight);
    Text_Setup(page1, selectionText, height, 0, CENTER, CENTER, width*3/8, height*0, width*3/8, height*3/32);
  }
  if (pageChange == 2) {
    Text_Setup(newMexico, selectionText, height, 0, CENTER, CENTER, width*0, height*1/8, titleWidth, titleHeight);
    Text_Setup(Florida, selectionText, height, 0, CENTER, CENTER, width*0, height*2/8, titleWidth, titleHeight);
    Text_Setup(page2, selectionText, height, 0, CENTER, CENTER, width*3/8, height*0, width*3/8, height*3/32);
  }
  if (pageChange == 3) {
    Text_Setup(page3, selectionText, height, 0, CENTER, CENTER, width*3/8, height*14/16, width*1/8, height*1/8);
  }
}

void pageHighlight() {
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*7/8 && mouseY < height*1 && pageChange < 3) {
    fill(highlight);
    rect(width*0, height*7/8, width*3/8, height*1/8);
  } else {
    noFill();
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*0 && mouseY < height*1/8 && pageChange > 1) {
    fill(highlight);
    rect(width*0, height*0, width*3/8, height*1/8);
  } else {
    noFill();
  }
}
