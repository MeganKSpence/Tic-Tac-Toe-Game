boolean[] mediumModeTrigger = new boolean[18];
boolean countAllow;
boolean mediumRandomTrigger;
boolean [] mediumUsed = new boolean[9];

int[] mediumModeArray = new int[1];

void MediumAI () {
  if (mediumTrigger == true) {
    countAllow();
    // for (int i = 0; i < 10; i++) { // may come in handy for combining later 
    if (boardPiece[0] == "X" && boardPiece[3] == "X" && mediumModeTrigger[0] == false && countAllow == false && boardPiece[6] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 7;
      mediumModeTrigger[0] = true;
      mediumRandomTrigger = false;
      println("1 has been activated");
    }
    if (boardPiece[1] == "X" && boardPiece[4] == "X" && mediumModeTrigger[1] == false && countAllow == false && boardPiece[7] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 8;
      mediumModeTrigger[1] = true;
      mediumRandomTrigger = false;
      println("2 has been activated");
    }
    if (boardPiece[2] == "X" && boardPiece[5] == "X" && mediumModeTrigger[2] == false && countAllow == false && boardPiece[8] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 9;
      mediumModeTrigger[2] = true;
      mediumRandomTrigger = false;
      println("3 has been activated");
    }
    if (boardPiece[0] == "X" && boardPiece[6] == "X" && mediumModeTrigger[3] == false && countAllow == false && boardPiece[3] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 4;
      mediumModeTrigger[3] = true;
      mediumRandomTrigger = false;
      println("4 has been activated");
    }
    if (boardPiece[1] == "X" && boardPiece[7] == "X" && mediumModeTrigger[4] == false && countAllow == false && boardPiece[4] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 5;
      mediumModeTrigger[4] = true;
      mediumRandomTrigger = false;
      println("5 has been activated");
    }
    if (boardPiece[2] == "X" && boardPiece[8] == "X" && mediumModeTrigger[5] == false && countAllow == false && boardPiece[5] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 6;
      mediumModeTrigger[5] = true;
      mediumRandomTrigger = false;
      println("6 has been activated");
    }
    if (boardPiece[3] == "X" && boardPiece[6] == "X" && mediumModeTrigger[6] == false && countAllow == false && boardPiece[0] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 1;
      mediumModeTrigger[6] = true;
      mediumRandomTrigger = false;
      println("7 has been activated");
    }
    if (boardPiece[4] == "X" && boardPiece[7] == "X" && mediumModeTrigger[7] == false && countAllow == false && boardPiece[1] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 2;
      mediumModeTrigger[7] = true;
      mediumRandomTrigger = false;
      println("8 has been activated");
    }
    if (boardPiece[5] == "X" && boardPiece[8] == "X" && mediumModeTrigger[8] == false && countAllow == false && boardPiece[2] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 3;
      mediumModeTrigger[8] = true;
      mediumRandomTrigger = false;
      println("9 has been activated");
    }



    if (boardPiece[0] == "X" && boardPiece[1] == "X" && mediumModeTrigger[9] == false && countAllow == false && boardPiece[2] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 3;
      mediumModeTrigger[9] = true;
      mediumRandomTrigger = false;
      println("10 has been activated");
    }
    if (boardPiece[3] == "X" && boardPiece[4] == "X" && mediumModeTrigger[10] == false && countAllow == false && boardPiece[5] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 6;
      mediumModeTrigger[10] = true;
      mediumRandomTrigger = false;
      println("11 has been activated");
    }
    if (boardPiece[6] == "X" && boardPiece[7] == "X" && mediumModeTrigger[11] == false && countAllow == false && boardPiece[8] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 9;
      mediumModeTrigger[11] = true;
      mediumRandomTrigger = false;
      println("12 has been activated");
    }
    if (boardPiece[0] == "X" && boardPiece[2] == "X" && mediumModeTrigger[12] == false && countAllow == false && boardPiece[1] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 2;
      mediumModeTrigger[12] = true;
      mediumRandomTrigger = false;
      println("13 has been activated");
    }
    if (boardPiece[3] == "X" && boardPiece[5] == "X" && mediumModeTrigger[13] == false && countAllow == false && boardPiece[4] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 5;
      mediumModeTrigger[13] = true;
      mediumRandomTrigger = false;
      println("14 has been activated");
    }
    if (boardPiece[6] == "X" && boardPiece[8] == "X" && mediumModeTrigger[14] == false && countAllow == false && boardPiece[7] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 8;
      mediumModeTrigger[14] = true;
      mediumRandomTrigger = false;
      println("15 has been activated");
    }
    if (boardPiece[1] == "X" && boardPiece[2] == "X" && mediumModeTrigger[15] == false && countAllow == false && boardPiece[0] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 1;
      mediumModeTrigger[15] = true;
      mediumRandomTrigger = false;
      println("16 has been activated");
    }
    if (boardPiece[4] == "X" && boardPiece[5] == "X" && mediumModeTrigger[16] == false && countAllow == false && boardPiece[3] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 4;
      mediumModeTrigger[16] = true;
      mediumRandomTrigger = false;
      println("16 has been activated");
    }
    if (boardPiece[7] == "X" && boardPiece[8] == "X" && mediumModeTrigger[17] == false && countAllow == false && boardPiece[6] != "O") { // should try to combine all of these in catogories if you have time
      count++;
      position = 7;
      mediumModeTrigger[17] = true;
      mediumRandomTrigger = false;
      println("17 has been activated");
    }
    mediumUsed();
    for (int i = 1; i < 9; i++) {
      mediumModeArray[0] = (int)random(10);
      // println("current number: ", mediumModeArray[0]);
      if (mediumRandomTrigger == true && countAllow == false && mediumModeArray[0] != 0 || mediumUsed[i] != true && mediumRandomTrigger == true && countAllow == false) {
        position = mediumModeArray[0];
        println("countAllow :", countAllow, "mediumModeArray :", mediumModeArray[0], "position: ", position);
        mediumRandomTrigger = false;
        println(mediumUsed[i], i);
        count++;
        // println("new number: ", mediumModeArray[0]);
      } else if (mediumRandomTrigger == true && countAllow == false && mediumModeArray[0] == 0 || mediumUsed[i] == true && mediumRandomTrigger == true && countAllow == false) {
        println("DUN, DUN, DUN!!!");
      }
      
    }
    mediumRandomTrigger = true;
  }
}
//  }

void countAllow() {
  if (count == 1 || count == 3 || count == 5 || count == 7 || count == 9) {
    countAllow = false;
  }
  if (count == 0 || count == 2 || count == 4 || count == 6 || count == 8) {
    countAllow = true;
  }
}

void mediumUsed() {
  if (boardPiece[0] == "X" || boardPiece[0] == "O") {
    mediumUsed[0] = true;
//    println("1 has been activated");
  }
  if (boardPiece[1] == "X" || boardPiece[1] == "O") {
    mediumUsed[1] = true;
//    println("2 has been activated");
  }
  if (boardPiece[2] == "X" || boardPiece[2] == "O") {
    mediumUsed[2] = true;
//    println("3 has been activated");
  }
  if (boardPiece[3] == "X" || boardPiece[3] == "O") {
    mediumUsed[3] = true;
//    println("4 has been activated");
  }
  if (boardPiece[4] == "X" || boardPiece[4] == "O") {
    mediumUsed[4] = true;
//    println("5 has been activated");
  }
  if (boardPiece[5] == "X" || boardPiece[5] == "O") {
    mediumUsed[5] = true;
//    println("6 has been activated");
  }
  if (boardPiece[6] == "X" || boardPiece[6] == "O") {
    mediumUsed[6] = true;
//    println("7 has been activated");
  }
  if (boardPiece[7] == "X" || boardPiece[7] == "O") {
    mediumUsed[7] = true;
//    println("8 has been activated");
  }
  if (boardPiece[8] == "X" || boardPiece[8] == "O") {
    mediumUsed[8] = true;
//    println("9 has been activated");
  }
} 
