//Varables
String easy;
String medium; 
String hard;
String player1;
String player2;
String start; 
String restart;
PFont levelFont, xoFont, playerFont, scoreFont;
int xWin = 0, oWin = 0, count = 0, position;
/*Boolean printX = false, printO = false;*/ //To signal Board Button, 1-9, has been been pressed //when line is cut out dosen't seem to change anything 
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
  player1 = "X";
  player2 = "O";
  start = "Start"; 
  restart = "Restart";
}

void Text_Setup(String text, PFont font, float height, color ink, int alignHorizontal, int alignVertical, float rectX, float rectY, float rectWidth, float rectHeight){
  
  Fonts(); //calling all possible fonts
  
  float fontSize = height; 
  fill(ink); 
  textAlign(alignHorizontal, alignVertical); 
  
  if (string.length() >=10) {
    fontSize = textCalculator(height, text, titleWidth); //need to create titleWidth
  } else {
    fontSize = fontSize * 0.08; //dont forget to change 0.08 to something that works
  }
  
  textFont(font, fontSize);
  text(text, rectX, rectY, rectWidth, rectHeight);
  fill(255);
  
  //Easy Button Text
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(easy, width*0, height*0, width*2/5, height*1/12); // 1st width and height are where you want it to start while 2nd width and height is how long you want it to go on fo
  fill(255);
  
  //Medium Button Text
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(medium, width*0, height*1/12, width*2/5, height*1/12);
  fill(255);
  
  //Hard Button Text
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(hard, width*0, height*2/12, width*2/5, height*1/12);
  fill(255); //Reset to white for the rest of the program
 
  //Start Button Text
  fill(0);
  textFont(levelFont, 54);
  text(start, width*0, height*3/12, width*2/5, height*1/12);
  fill(255);
  
  //Restart Button Text
  Reset_Text();
  
  //Quit Button Text
  
  //X Scoreboard Text
  fill(0);
  textFont(playerFont, 100);
  text(player1, width*0, height*6/12, width*2/10, height*3/12);
  fill(255);
  
  //O Scoreboard Text
  fill(0);
  textFont(playerFont, 100);
  text(player2, width*0, height*9/12, width*2/10, height*3/12);
  fill(255);
}

void Reset_Text() {
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(restart, width*0, height*4/12, width*2/5, height*1/12);
  fill(255);
}

float textCalculator(float size, String text, float rectWidth) {
  float i = 1;
  textSize(size); //for textWidth sizing
  while (textWidth(text) > rectWidth) {
  size = size * i; 
  textSize(size);
  i = i - 0.1;
 }
  return size;
}
