boolean[] mediumModeTrigger = new boolean[18];
boolean countAllow;

int[] mediumModeArray = new int[1];

void MediumAI () {
  already_Used();
  if (mediumTrigger == true) {
    countAllow();
    // for (int i = 0; i < 10; i++) { // may come in handy for combining later 
    if (boardPiece[0] == "X" && boardPiece[3] == "X" && mediumModeTrigger[0] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 7;
      mediumModeTrigger[0] = true;
      println("1 has been activated");
    }
    if (boardPiece[1] == "X" && boardPiece[4] == "X" && mediumModeTrigger[1] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 8;
      mediumModeTrigger[1] = true;
      println("2 has been activated");
    }
    if (boardPiece[2] == "X" && boardPiece[5] == "X" && mediumModeTrigger[2] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 9;
      mediumModeTrigger[2] = true;
      println("3 has been activated");
    }
    if (boardPiece[0] == "X" && boardPiece[6] == "X" && mediumModeTrigger[3] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 4;
      mediumModeTrigger[3] = true;
      println("4 has been activated");
    }
    if (boardPiece[1] == "X" && boardPiece[7] == "X" && mediumModeTrigger[4] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 5;
      mediumModeTrigger[4] = true;
      println("5 has been activated");
    }
    if (boardPiece[2] == "X" && boardPiece[8] == "X" && mediumModeTrigger[5] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 6;
      mediumModeTrigger[5] = true;
      println("6 has been activated");
    }
    if (boardPiece[3] == "X" && boardPiece[6] == "X" && mediumModeTrigger[6] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 1;
      mediumModeTrigger[6] = true;
      println("7 has been activated");
    }
    if (boardPiece[4] == "X" && boardPiece[7] == "X" && mediumModeTrigger[7] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 2;
      mediumModeTrigger[7] = true;
      println("8 has been activated");
    }
    if (boardPiece[5] == "X" && boardPiece[8] == "X" && mediumModeTrigger[8] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 3;
      mediumModeTrigger[8] = true;
      println("9 has been activated");
    }



    if (boardPiece[0] == "X" && boardPiece[1] == "X" && mediumModeTrigger[9] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 3;
      mediumModeTrigger[9] = true;
      println("10 has been activated");
    }
    if (boardPiece[3] == "X" && boardPiece[4] == "X" && mediumModeTrigger[10] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 6;
      mediumModeTrigger[10] = true;
      println("11 has been activated");
    }
    if (boardPiece[6] == "X" && boardPiece[7] == "X" && mediumModeTrigger[11] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 9;
      mediumModeTrigger[11] = true;
      println("12 has been activated");
    }
    if (boardPiece[0] == "X" && boardPiece[2] == "X" && mediumModeTrigger[12] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 2;
      mediumModeTrigger[12] = true;
      println("13 has been activated");
    }
    if (boardPiece[3] == "X" && boardPiece[5] == "X" && mediumModeTrigger[13] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 5;
      mediumModeTrigger[13] = true;
      println("14 has been activated");
    }
    if (boardPiece[6] == "X" && boardPiece[8] == "X" && mediumModeTrigger[14] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 8;
      mediumModeTrigger[14] = true;
      println("15 has been activated");
    }
    if (boardPiece[1] == "X" && boardPiece[2] == "X" && mediumModeTrigger[15] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 1;
      mediumModeTrigger[15] = true;
      println("16 has been activated");
    }
    if (boardPiece[4] == "X" && boardPiece[5] == "X" && mediumModeTrigger[16] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 4;
      mediumModeTrigger[16] = true;
      println("16 has been activated");
    }
    if (boardPiece[7] == "X" && boardPiece[8] == "X" && mediumModeTrigger[17] == false && countAllow == false) { // should try to combine all of these in catogories if you have time
      count++;
      position = 7;
      mediumModeTrigger[17] = true;
      println("17 has been activated");
    }

    for (int i = 1; i < 10; i++) {
      mediumModeArray[0] = (int)random(10);
     // println("current number: ", mediumModeArray[0]);
      if (easyModeArray[0]!= alreadyUsed[i] && countAllow == false) {
        position = mediumModeArray[0];
      } else if (easyModeArray[0] == alreadyUsed[i] && countAllow == false) {
         mediumModeArray[0] = (int)random(10);
        // println("new number: ", mediumModeArray[0]);
      }
    }
  }
}
//  }

void countAllow() {
  if (count == 1 || count == 3 || count == 5 || count == 7 || count == 9) {
    countAllow = false;
  }
  if (count == 2 || count == 4 || count == 6 || count == 8) {
    countAllow = true;
  }
}
