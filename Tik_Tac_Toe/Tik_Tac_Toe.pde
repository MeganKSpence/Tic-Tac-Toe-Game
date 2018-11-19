//Varables
String easy = "Easy", medium = "Medium", hard = "Hard", exitButton = "Exit Game", player1 = "X", player2 = "O", start = "Start", restart = "Reset";
int xWin = 0, oWin = 0, count = 0, position;
PFont levelFont, xoFont, playerFont, scoreFont;
/*Boolean printX = false, printO = false;*/ //To signal Board Button, 1-9, has been been pressed //when line is cut out dosen't seem to change anything 
Boolean[] noDraw = new Boolean[9]; //Turn off ablity to draw an X or an O in a sqaure of the board

// Main divisions
void setup () { 
  fullScreen();
  //size(600, 400);
  textSize(60);
  background(255);
  
   GUI_Design();
  
  //Load a Font
  levelFont = createFont ("Cambria", 55);
  xoFont = createFont ("BlackoakStd", 55);
  playerFont = createFont ("Algerian", 55);
  scoreFont = createFont ("Calibri", 55);
  
  for(int i=0; i < noDraw.length; i++) {
    noDraw[i] = false;
  }
  
}
void draw () {
  
  Quit_Button();
  textDraw();
  Text_Setup();
  
  
 }
 
 
void mouseClicked (){
   
   exitButtonMouseClicked();
   xoButtonDraw();
 /*  println(" Position:", position, "Count:", count);
   for (int i = 0; i < noDraw.length; i++) {
     print(" noDraw " + str(i) + ": " + str(noDraw[i]));
   }*/
   
 }
 

 
 
