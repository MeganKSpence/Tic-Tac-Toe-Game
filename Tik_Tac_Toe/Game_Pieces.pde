//gloabl variables
boolean check3InRowX = false; 
boolean check3InRowO = false;
boolean winX = false;
boolean winO = false; 

int numberOfBoardPieces = 9;
int triggerPieces = 5; 

String[] boardPiece = new String[numberOfBoardPieces]; 
String[] onlyXPiece = new String[numberOfBoardPieces];
String[] onlyOPiece = new String[numberOfBoardPieces];
String[] trigger = new String[triggerPieces]; 

void gamePieces() {
  for (int i=0; i<numberOfBoardPieces; i++) {
    if (count == 1 || count == 3 || count == 5 || count == 7 || count == 9) {
      boardPiece[i] = "X";
    } else {
      boardPiece[i] = "O";
    }
  }
  /*  boardPiece[0] = "X"; //First corner, left
   boardPiece[1] = null; //First middle
   boardPiece[2] = null; //First corner, right
   boardPiece[3] = null; //Second middle, left
   boardPiece[4] = "X"; //Second middle
   boardPiece[5] = null; //Second middle, right
   boardPiece[6] = null; //Third corner, left
   boardPiece[7] = null; //Third middle
   boardPiece[8] = "X"; //Third corner, right  //will have to turn into an if statement involving a variable */
  onlyX();
  onlyO();
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

void trigger() {
  if (boardPiece[1] != null || boardPiece[3] != null || boardPiece[4] != null || boardPiece[5] != null || boardPiece[7] != null) {
    if (boardPiece[1] != null) {
      trigger[0] = boardPiece[1];
    }
    if (boardPiece[3] != null) {
      trigger[1] = boardPiece[3];
    }
    if (boardPiece[4] != null) {
      trigger[2] = boardPiece[4];
    }
    if (boardPiece[5] != null) {
      trigger[3] = boardPiece[5];
    }
    if (boardPiece[7] != null) {
      trigger[4] = boardPiece[7];
    }
  } else {
    println("Middle piece not picked yet.");
  }
} 

boolean checkNestedFOR(String strings, String[] pieces) {
  boolean win = false; 
  for (int i=0; i<7; i+=3) {
    if (pieces[i] == strings && pieces[i+1] == strings && pieces[i+2] == strings) { //Middle row, hard coded
      println("First: ", i, "\t\tMiddle: ", i+1, "Last: ", i+2, "\t\tWin");
      win = true;
    } else {
      println("First: ", i, "\t\tMiddle: ", i+1, "Last: ", i+2, "\t\tWin");
    }
  }

  //3 in a Row increasing by 2
  for (int i=3; i<4; i+=2) {
    if (pieces[i] == strings && pieces[i+2] == strings && pieces[i+4] == strings) { //Middle row, hard coded
      println("First: ", i, "\t\tMiddle: ", i+2, "Last: ", i+4, "\t\tWin");
      win = true;
    } else {
      println("First: ", i, "\t\tMiddle: ", i+2, "Last: ", i+4, "\t\tnothing");
    }
  }

  //3 in a Row increasing by 3
  for (int i=0; i<3; i++) {
    if (pieces[i] == strings && pieces[i+3] == strings && pieces[i+6] == strings) { //Middle row, hard coded
      println("First: ", i, "\t\tMiddle: ", i+3, "Last: ", i+6, "\t\tWin");
      win = true;
    } else {
      println("First: ", i, "\t\tMiddle: ", i+3, "Last: ", i+6, "\t\tnothing");
    }
  }

  //3 in a Row increasing by 4
  for (int i=0; i<1; i++) {
    if (pieces[i] == strings && pieces[i+4] == strings && pieces[i+8] == strings) { //Middle row, hard coded
      println("First: ", i, "\t\tMiddle: ", i+4, "Last: ", i+8, "\t\tWin");
      win = true;
    } else {
      println("First: ", i, "\t\tMiddle: ", i+4, "Last: ", i+8, "\t\tnothing");
    }
  }
  return win;
}

void check3InRow() {
  for (int i=0; i<triggerPieces; i++) {
    if (trigger[i] != null) {
      check3InRowX = true;
      check3InRowO = true;
    }
  }

  if (check3InRowX == true) {
    winX = checkNestedFOR("X", onlyXPiece); //because of basic prameters can use checkNestedFOR(); for both check3InRowX and check3InRowO
  }
  if (check3InRowO == true) {
    winO = checkNestedFOR("O", onlyOPiece);
  }
  println("X's won:", winX);
  println("O's won:", winO);
}
