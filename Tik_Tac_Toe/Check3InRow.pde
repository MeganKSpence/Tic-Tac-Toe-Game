//Global Variables
//boolean check3InRowX = false; 
//boolean check3InRowO = false;
boolean winX = false;
boolean winO = false; 
boolean trigger = true;
boolean trigger2 = true;
boolean trigger3 = true;
boolean trigger4 = true;
boolean trigger5 = true; 

int numberOfBoardPieces = 9;
int resetTrigger = 0; 

String[] boardPiece = new String[numberOfBoardPieces]; 
String[] onlyXPiece = new String[numberOfBoardPieces];
String[] onlyOPiece = new String[numberOfBoardPieces]; //let game_Piece be in void xoText
//String[] trigger = new String[triggerPieces]; 

void check3InRow() { 
  onlyX();
  checkNestedFORO();
  checkNestedFORX();
  if (winX == true && trigger2 == true && trigger5 == true) {
    println("X won!"); //Need to set winX as false again and then also simultaniusly stop or "break" the code from running again
    trigger2 = false;
  } 
  if (winO == true && trigger2 == true && trigger5 == true) {
    println("O won!");
    trigger2 = false;
  } 
  if (count == 9 && trigger2 == true && trigger5 == true && tieActivator == true) {
    println("You Tied!");
    trigger2 = false;
  }
}

void onlyX() {
  for (int i=0; i<numberOfBoardPieces; i++) {
    if (boardPiece[i] == "X") {
      onlyXPiece[i] = "X";
    }
  }
}

void onlyO() {
  for (int i=0; i<numberOfBoardPieces; i++) {
    if (boardPiece[i] == "O") {
      onlyOPiece[i] = "O";
    }
  }
} 

void scoreboardCount() {
  if (winX == true && trigger3 == true && trigger4 == true) {
    fill(255);
    rect(width*2/10, height*13/24, width*3/20, height*1/6);
    xWin = xWin + 1;
    trigger3 = false;
    fill(0);
    textAlign(CENTER, CENTER);
    textFont(xoFont, 40);
    text(str(xWin), width*2/10, height*13/24, width*3/20, height*1/6);
    fill(255);
    trigger4 = false;
  }
  if (winO == true && trigger3 == true && trigger4 == true) {
    fill(255);
    rect(width*2/10, height*19/24, width*3/20, height*1/6);
    oWin = oWin + 1;
    trigger3 = false;
    fill(0);
    textAlign(CENTER, CENTER);
    textFont(xoFont, 40);
    text(str(oWin), width*2/10, height*19/24, width*3/20, height*1/6);
    fill(255);
    trigger4 = false;
  }
}

Boolean checkNestedFORX() {
  onlyX();
  if (onlyXPiece[0] == "X" && onlyXPiece[3] == "X" && onlyXPiece[6] == "X" && trigger == true) {
    winX = true;
    trigger = false;
  } 
  if (onlyXPiece[1] == "X" && onlyXPiece[4] == "X" && onlyXPiece[7] == "X" && trigger == true) {
    winX = true;
    trigger = false;
  } 
  if (onlyXPiece[2] == "X" && onlyXPiece[5] == "X" && onlyXPiece[8] == "X" && trigger == true) {
    winX = true;
    trigger = false;
  } 
  if (onlyXPiece[0] == "X" && onlyXPiece[1] == "X" && onlyXPiece[2] == "X" && trigger == true) {
    winX = true;
    trigger = false;
  } 
  if (onlyXPiece[3] == "X" && onlyXPiece[4] == "X" && onlyXPiece[5] == "X" && trigger == true) {
    winX = true;
    trigger = false;
  } 
  if (onlyXPiece[6] == "X" && onlyXPiece[7] == "X" && onlyXPiece[8] == "X" && trigger == true) {
    winX = true;
    trigger = false;
  } 
  if (onlyXPiece[0] == "X" && onlyXPiece[4] == "X" && onlyXPiece[8] == "X" && trigger == true) {
    winX = true;
    trigger = false;
  } 
  if (onlyXPiece[2] == "X" && onlyXPiece[4] == "X" && onlyXPiece[6] == "X" && trigger == true) {
    winX = true;
    trigger = false;
  } 
  return winX;
}

boolean checkNestedFORO() {
  onlyO();
  if (onlyOPiece[0] == "O" && onlyOPiece[3] == "O" && onlyOPiece[6] == "O" && trigger == true) {
    winO = true;
    trigger = false;
  } 
  if (onlyOPiece[1] == "O" && onlyOPiece[4] == "O" && onlyOPiece[7] == "O" && trigger == true) {
    winO = true;
    trigger = false;
  } 
  if (onlyOPiece[2] == "O" && onlyOPiece[5] == "O" && onlyOPiece[8] == "O" && trigger == true) {
    winO = true;
    trigger = false;
  } 
  if (onlyOPiece[0] == "O" && onlyOPiece[1] == "O" && onlyOPiece[2] == "O" && trigger == true) {
    winO = true;
    trigger = false;
  } 
  if (onlyOPiece[3] == "O" && onlyOPiece[4] == "O" && onlyOPiece[5] == "O" && trigger == true) {
    winO = true;
    trigger = false;
  } 
  if (onlyOPiece[6] == "O" && onlyOPiece[7] == "O" && onlyOPiece[8] == "O" && trigger == true) {
    winO = true;
    trigger = false;
  } 
  if (onlyOPiece[0] == "O" && onlyOPiece[4] == "O" && onlyOPiece[8] == "O" && trigger == true) {
    winO = true;
    trigger = false;
  } 
  if (onlyOPiece[2] == "O" && onlyOPiece[4] == "O" && onlyOPiece[6] == "O" && trigger == true) {
    winO = true;
    trigger = false;
  } 
  return winO;
}
