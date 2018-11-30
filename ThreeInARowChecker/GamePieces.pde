int numberOfBoardPieces = 9;
String[] boardPiece = new String[numberOfBoardPieces];
String[] onlyXPiece = new String[numberOfBoardPieces];
String[] onlyOPiece = new String[numberOfBoardPieces];

// "X" or "O" or null
void gamePieces() {
  boardPiece[0] = "X"; //First corner, left
  boardPiece[1] = null; //First middle
  boardPiece[2] = null; //First corner, right
  boardPiece[3] = null; //Second middle, left
  boardPiece[4] = "X"; //Second middle
  boardPiece[5] = null; //Second middle, right
  boardPiece[6] = null; //Third corner, left
  boardPiece[7] = null; //Third middle
  boardPiece[8] = "X"; //Third corner, right

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
