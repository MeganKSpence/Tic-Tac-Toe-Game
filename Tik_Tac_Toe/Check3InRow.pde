// delete game_Pieces when done
//Global Variables
boolean check3InRowX = false; 
boolean check3InRowO = false;
boolean winX = false;
boolean winO = false; 

int numberOfBoardPieces = 9;

String[] boardPiece = new String[numberOfBoardPieces]; 
String[] onlyXPiece = new String[numberOfBoardPieces];
String[] onlyOPiece = new String[numberOfBoardPieces]; //let game_Piece be in void xoText
//String[] trigger = new String[triggerPieces]; 

void check3InRow() {
    if (count >= 5) {
      check3InRowX = true;
      check3InRowO = true;
    }

  if (check3InRowX == true) {
    onlyX();
    winX = checkNestedFOR("X", onlyXPiece); //because of basic prameters can use checkNestedFOR(); for both check3InRowX and check3InRowO
  }
  if (check3InRowO == true) {
    onlyO();
    winO = checkNestedFOR("O", onlyOPiece);
  }
 // println("X's won:", winX);
 // println("O's won:", winO); 
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

boolean checkNestedFOR(String string, String[] pieces) { 
  boolean win = false; 
  for (int i=3; i<6; i++) {
    println("I is " + i);
    for (int j=0; j<3; j++) {
      println("J is " + j);
      boolean letUsIn = false;
      if (((1-j)+1) == 6 || ((1+j)+1) == 7 || ((1-j)+1) == 8) {
        letUsIn = true;
      }
      if (((3-j)+3) == 6 || ((3+j)+3) == 7 || ((3-j)+3) == 8) {
        letUsIn = true;
      }
      if (((4-j)+4) == 6 || ((4+j)+4) == 7 || ((4-j)+4) == 8) {
        letUsIn = true;
      }
      if  (((5-j)+5) == 6 || ((5+j)+5) == 7 || ((5-j)+5) == 8) {
        letUsIn = true;
      }
      if (((7-j)+7) == 6 || ((7+j)+7) == 7 || ((7-j)+7) == 8) {
        letUsIn = true;
      }

      if (letUsIn == true) {
        if (pieces[i] == string && pieces[j] == string && pieces[(i-j)+i] == string) {
          println("win"); //in game will probaly have to call a void designed to display win
          win = true;
        } else {
          //println("nothing");
        }
        if (pieces[1] == string && pieces[j] == string && pieces[(1-j)+1] == string) {
          println("win " + j); //line one has a glitch
          win = true;
        } else {
          //println("nothing");
        }
        if (pieces[7] == string && pieces[j] == string && pieces[(7-j)+7] == string) {
          println("win");
          win = true;
        } else {
          //println("nothing");
        }
      }
    }
  }
  return win;
}
