int triggerPieces = 5;
String[] trigger = new String[triggerPieces];

void trigger() {
  if (boardPiece[1] != null &&  boardPiece[3] != null && boardPiece[4] != null && boardPiece[5] != null && boardPiece[7] != null) {
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
    println("Middle not picked yet.");
  }
} //End of trigger
