//Varables
String easy = "Easy", medium = "Medium", hard = "hard", exitButton = "Exit", player1 = "Player 1", player2 = "Player 2";
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

  println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  
  if (mouseX>width*2/3 && mouseX<width && mouseY>0 && mouseY<height*1/12) { //Hover Over
    fill(hoverOverButton);
    rect(width*2/3, height*0, width*3/3, height*1/12);
  } else {
    fill(regularButton);
    rect(width*2/3, height*0, width*3/3, height*1/12);
  }
 }
 
 void mouseClicked () {
  if (mouseX>width*2/3 && mouseX<width && mouseY>0 && mouseY<height*1/12) {
    exit();
  }
} 
