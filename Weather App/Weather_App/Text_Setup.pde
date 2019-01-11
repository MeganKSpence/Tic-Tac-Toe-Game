//Varables
float titleWidth;
float titleHeight; 

String Edmonton;

PFont selectionText;

int pageChange = 1;

color highlight = #B5E1F2;

void Fonts () {
  selectionText = createFont ("Cambria", 55);
}

void variables() {
  Edmonton = "Edmonton";
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
  Text_Setup(Edmonton, selectionText, height, 0, CENTER, CENTER, width*0, height*1/8, titleWidth, titleHeight);
}

void pageTurn() {
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*7/8 && mouseY < height*1) {
    fill(highlight);
    rect(width*0, height*7/8, width*3/8, height*1/8);
  } else {
    noFill(); 
  }
}
