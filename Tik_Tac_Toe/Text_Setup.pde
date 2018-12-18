//Varables
float titleWidth;
float titleHeight; 

String easy;
String medium; 
String hard;
String player1;
String player2;
String X;
String O;
String start; 
String restart;
String exitButton;

PFont levelFont, xoFont, playerFont, scoreFont;

void Fonts () {
  levelFont = createFont ("Cambria", 55);
  xoFont = createFont ("BlackoakStd", 55);
  playerFont = createFont ("Algerian", 55);
  scoreFont = createFont ("Calibri", 55);
}

void stringVariables() {
  easy = "Easy";
  medium = "Medium";
  hard = "Hard";
  player1 = "X =";
  player2 = "O =";
  X = "X";
  O = "O";
  start = "Start"; 
  restart = "Restart";
  exitButton = "Exit Game";
  titleWidth = width*2/5; 
  titleHeight = height*1/12;
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
  Text_Setup(easy, levelFont, height, 0, CENTER, CENTER, width*0, height*0, titleWidth, titleHeight);
  Text_Setup(medium, levelFont, height, 0, CENTER, CENTER, width*0, height*1/12, titleWidth, titleHeight);
  Text_Setup(hard, levelFont, height, 0, CENTER, CENTER, width*0, height*2/12, titleWidth, titleHeight);
  Text_Setup(start, levelFont, height, 0, CENTER, CENTER, width*0, height*3/12, titleWidth, titleHeight);
  Text_Setup(restart, levelFont, height, 0, CENTER, CENTER, width*0, height*4/12, titleWidth, titleHeight);
  Text_Setup(player1, playerFont, height, 0, CENTER, CENTER, width*0, height*6/12, width*2/10, height*3/12); 
  Text_Setup(player2, playerFont, height, 0, CENTER, CENTER, width*0, height*9/12, width*2/10, height*3/12); 
}
