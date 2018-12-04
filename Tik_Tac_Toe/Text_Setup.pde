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

int xWin = 0, oWin = 0, count = 0, position; //count might work to replace boardPieces in gamePieces in Game_Pieces
Boolean[] noDraw = new Boolean[9]; //Turn off ablity to draw an X or an O in a sqaure of the board

void Fonts () {
  //Load a Font
  levelFont = createFont ("Cambria", 55);
  xoFont = createFont ("BlackoakStd", 55);
  playerFont = createFont ("Algerian", 55);
  scoreFont = createFont ("Calibri", 55);
}

void stringVariables() {
  //Strign variables
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

void X_Text() {
}

void O_Text() {
}
