//Varables
String easy = "Easy", medium = "Medium", hard = "Hard", exitButton = "Exit Game", player1 = "X =", player2 = "O =", start = "Start", restart = "Restart";
PFont levelFont, xoFont, playerFont, scoreFont;

// Main divisions
void setup () { 
  fullScreen();
  //size(600, 400);
  textSize(60);
  background(255);
  
  //finding all fonts on system
  String[] fontList = PFont.list(); //Will list all of the available fonts on this specific system. Font's will vary per computer
  printArray(fontList);
  
  //Load a Font
  levelFont = createFont ("Cambria", 55);
  xoFont = createFont ("BlackoakStd", 55);
  playerFont = createFont ("Algerian", 55);
  scoreFont = createFont ("Calibri", 55);
  
}
void draw () {
  
  GUI_Design();

  Quit_Button();
  
 }
 
