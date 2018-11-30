boolean check3InRowX = false; 
boolean check3InRowO = false; 

void check3InRow() {
  for (int i=0; i<triggerPieces; i++) {
    if (trigger[i] != null) {
      check3InRowX = true;
      check3InRowO = true;
    }
  }

  if (check3InRowX == true) {
    for (int i=3; i<6; i++) {
      for (int j=0; j<3; j++) {
        if (onlyXPiece[i] == "X" && onlyXPiece[j] == "X" && onlyXPiece[(i-j)+i] == "X") {
          println("win");
        } else {
          println("nothing");}
          if (onlyXPiece[1] == "X" && onlyXPiece[j] == "X" && onlyXPiece[(1-j)+1] == "X") {
            println("win");
          } else {
            println("nothing); }
            if (onlyXPiece[7] == "X" && onlyXPiece[j] == "X" && onlyXPiece[(7-j)+7] == "X") {
              println("win");
            } else {
              println("nothing); }
            }
          }
        }
      }
    }
  }
}
