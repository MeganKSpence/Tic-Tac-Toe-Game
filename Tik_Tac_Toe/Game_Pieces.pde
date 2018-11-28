// Global variables
int BoardPiecesAmount = 9;
String[] boardPiece = new String[BoardPiecesAmount];
String[] onlyXPiece = new String[BoardPiecesAmount];
String[] onlyOPiece = new String[BoardPiecesAmount];

void gamePieces() {

  boardPiece[0] = null; //Top left corner
  boardPiece[1] = null; //Top middle
  boardPiece[2] = null; //Top right corner
  boardPiece[3] = null; //Left center piece
  boardPiece[4] = null; //Middle, middle piece
  boardPiece[5] = null; //Right center piece
  boardPiece[6] = null; //Bottom left corner
  boardPiece[7] = null; //Bottom middle
  boardPiece[8] = null; //Bottom right corner

  //calling other voids
  OnlyX();
  OnlyO();
}

void OnlyX() {
  for (int i=0; i<BoardPiecesAmount; i++) {
    if (boardPiece[i] == "X") {
      onlyXPiece[i] = "X";
    }
  }
}

void OnlyO() {
  for (int i=0; i<BoardPiecesAmount; i++) {
    if (boardPiece[i] == "O") {
      onlyOPiece[i] = "O";
    }
  }
}
