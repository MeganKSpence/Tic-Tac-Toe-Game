boolean checkNestedFORX() {
  //boolean winX = false;
  onlyX();
  if (onlyXPiece[0] == "X" && onlyXPiece[3] == "X" && onlyXPiece[6] == "X") {
    winX = true;
  } else {
    winX = false;
  }
  if (onlyXPiece[1] == "X" && onlyXPiece[4] == "X" && onlyXPiece[7] == "X") {
    winX = true;
  } else {
    winX = false;
  }
  if (onlyXPiece[2] == "X" && onlyXPiece[5] == "X" && onlyXPiece[8] == "X") {
    winX = true;
  } else {
    winX = false;
  }
  if (onlyXPiece[0] == "X" && onlyXPiece[1] == "X" && onlyXPiece[2] == "X") {
    winX = true;
  } else {
    winX = false;
  }
  if (onlyXPiece[3] == "X" && onlyXPiece[4] == "X" && onlyXPiece[5] == "X") {
    winX = true;
  } else {
    winX = false;
  }
  if (onlyXPiece[6] == "X" && onlyXPiece[7] == "X" && onlyXPiece[8] == "X") {
    winX = true;
  } else {
    winX = false;
  }
  if (onlyXPiece[0] == "X" && onlyXPiece[4] == "X" && onlyXPiece[8] == "X") {
    winX = true;
  } else {
    winX = false;
  }
  if (onlyXPiece[2] == "X" && onlyXPiece[4] == "X" && onlyXPiece[6] == "X") {
    winX = true;
  } else {
    winX = false;
  }
  return winX;
}

boolean checkNestedFORO() {
  boolean winO = false; 
  if (onlyOPiece[0] == "O" && onlyOPiece[3] == "O" && onlyOPiece[6] == "O") {
    winO = true;
  } else {
    winO = false;
  }
  if (onlyOPiece[1] == "O" && onlyOPiece[4] == "O" && onlyOPiece[7] == "O") {
    winO = true;
  } else {
    winO = false;
  }
  if (onlyOPiece[2] == "O" && onlyOPiece[5] == "O" && onlyOPiece[8] == "O") {
    winO = true;
  } else {
    winO = false;
  }
  if (onlyOPiece[0] == "O" && onlyOPiece[1] == "O" && onlyOPiece[2] == "O") {
    winO = true;
  } else {
    winO = false;
  }
  if (onlyOPiece[3] == "O" && onlyOPiece[4] == "O" && onlyOPiece[5] == "O") {
    winO = true;
  } else {
    winO = false;
  }
  if (onlyOPiece[6] == "O" && onlyOPiece[7] == "O" && onlyOPiece[8] == "O") {
    winO = true;
  } else {
    winO = false;
  }
  if (onlyOPiece[0] == "O" && onlyOPiece[4] == "O" && onlyOPiece[8] == "O") {
    winO = true;
  } else {
    winO = false;
  }
  if (onlyOPiece[2] == "O" && onlyOPiece[4] == "O" && onlyOPiece[6] == "O") {
    winO = true;
  } else {
    winO = false;
  }
  return winO;
}
