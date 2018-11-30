boolean checkNestedFOR(String string, String[] pieces) { 
  boolean win = false; 
  for (int i=3; i<6; i++) {
    for (int j=0; j<3; j++) {
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
          println("nothing");
        }
        if (pieces[1] == string && pieces[j] == string && pieces[(1-j)+1] == string) {
          println("win");
          win = true;
        } else {
          println("nothing");
        }
        if (pieces[7] == string && pieces[j] == string && pieces[(7-j)+7] == string) {
          println("win");
          win = true;
        } else {
          println("nothing");
        }
      }
    }
  }
  return win;
}
