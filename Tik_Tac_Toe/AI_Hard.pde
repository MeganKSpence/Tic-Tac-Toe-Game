void HardAI() { //In this code there should be nothin randomized and everything should be stragically placed but in a somewhat efficient manner
  if (hardTrigger == true) {
    countAllow();
    stopDraw = false;
    //println("I have been activated");
    //Defense rules
    //vertical defense
    if (boardPiece[0] == "X" && boardPiece[3] == "X" && mediumModeTrigger[0] == false && countAllow == false && stopDraw == false && boardPiece[6] != "O" && count < 9) { 
      count++;
      position = 7;
      mediumModeTrigger[0] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("1 has been activated");
    }
    if (boardPiece[1] == "X" && boardPiece[4] == "X" && mediumModeTrigger[1] == false && countAllow == false && stopDraw == false && boardPiece[7] != "O" && count < 9) { 
      count++;
      position = 8;
      mediumModeTrigger[1] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("2 has been activated");
    }
    if (boardPiece[2] == "X" && boardPiece[5] == "X" && mediumModeTrigger[2] == false && countAllow == false && stopDraw == false && boardPiece[8] != "O" && count < 9) { 
      count++;
      position = 9;
      mediumModeTrigger[2] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("3 has been activated");
    }
    if (boardPiece[0] == "X" && boardPiece[6] == "X" && mediumModeTrigger[3] == false && countAllow == false && stopDraw == false && boardPiece[3] != "O" && count < 9) { 
      count++;
      position = 4;
      mediumModeTrigger[3] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("4 has been activated");
    }
    if (boardPiece[1] == "X" && boardPiece[7] == "X" && mediumModeTrigger[4] == false && countAllow == false && stopDraw == false && boardPiece[4] != "O" && count < 9) { 
      count++;
      position = 5;
      mediumModeTrigger[4] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("5 has been activated");
    }
    if (boardPiece[2] == "X" && boardPiece[8] == "X" && mediumModeTrigger[5] == false && countAllow == false && stopDraw == false && boardPiece[5] != "O" && count < 9) {
      count++;
      position = 6;
      mediumModeTrigger[5] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("6 has been activated");
    }
    if (boardPiece[3] == "X" && boardPiece[6] == "X" && mediumModeTrigger[6] == false && countAllow == false && stopDraw == false && boardPiece[0] != "O" && count < 9) { 
      count++;
      position = 1;
      mediumModeTrigger[6] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("7 has been activated");
    }
    if (boardPiece[4] == "X" && boardPiece[7] == "X" && mediumModeTrigger[7] == false && countAllow == false && stopDraw == false && boardPiece[1] != "O" && count < 9) {
      count++;
      position = 2;
      mediumModeTrigger[7] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("8 has been activated");
    }
    if (boardPiece[5] == "X" && boardPiece[8] == "X" && mediumModeTrigger[8] == false && countAllow == false && stopDraw == false && boardPiece[2] != "O" && count < 9) { 
      count++;
      position = 3;
      mediumModeTrigger[8] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("9 has been activated");
    }


    //horizontal defence
    if (boardPiece[0] == "X" && boardPiece[1] == "X" && mediumModeTrigger[9] == false && countAllow == false && stopDraw == false && boardPiece[2] != "O" && count < 9) {
      count++;
      position = 3;
      mediumModeTrigger[9] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("10 has been activated", "the count is: ", count);
    }
    if (boardPiece[3] == "X" && boardPiece[4] == "X" && mediumModeTrigger[10] == false && countAllow == false && stopDraw == false && boardPiece[5] != "O" && count < 9) { 
      count++;
      position = 6;
      mediumModeTrigger[10] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("11 has been activated", "the count is: ", count);
    }
    if (boardPiece[6] == "X" && boardPiece[7] == "X" && mediumModeTrigger[11] == false && countAllow == false && stopDraw == false && boardPiece[8] != "O" && count < 9) { 
      count++;
      position = 9;
      mediumModeTrigger[11] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("12 has been activated", "the count is: ", count);
    }
    if (boardPiece[0] == "X" && boardPiece[2] == "X" && mediumModeTrigger[12] == false && countAllow == false && stopDraw == false && boardPiece[1] != "O" && count < 9) { 
      count++;
      position = 2;
      mediumModeTrigger[12] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("13 has been activated", "the count is: ", count);
    }
    if (boardPiece[3] == "X" && boardPiece[5] == "X" && mediumModeTrigger[13] == false && countAllow == false && stopDraw == false && boardPiece[4] != "O" && count < 9) {
      count++;
      position = 5;
      mediumModeTrigger[13] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("14 has been activated", "the count is: ", count);
    }
    if (boardPiece[6] == "X" && boardPiece[8] == "X" && mediumModeTrigger[14] == false && countAllow == false && stopDraw == false && boardPiece[7] != "O" && count < 9) { 
      count++;
      position = 8;
      mediumModeTrigger[14] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("15 has been activated", "the count is: ", count);
    }
    if (boardPiece[1] == "X" && boardPiece[2] == "X" && mediumModeTrigger[15] == false && countAllow == false && stopDraw == false && boardPiece[0] != "O" && count < 9) { 
      count++;
      position = 1;
      mediumModeTrigger[15] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("16 has been activated", "the count is: ", count);
    }
    if (boardPiece[4] == "X" && boardPiece[5] == "X" && mediumModeTrigger[16] == false && countAllow == false && stopDraw == false && boardPiece[3] != "O" && count < 9) {
      count++;
      position = 4;
      mediumModeTrigger[16] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("16 has been activated", "the count is: ", count);
    }
    if (boardPiece[7] == "X" && boardPiece[8] == "X" && mediumModeTrigger[17] == false && countAllow == false && stopDraw == false && boardPiece[6] != "O" && count < 9) {
      count++;
      position = 7;
      mediumModeTrigger[17] = true;
      mediumRandomTrigger = false;
      stopDraw = true;
      println("17 has been activated", "the count is: ", count);
    } 
    
    
    // vertical defence
    if (boardPiece[0] == "X" && boardPiece[4] == "X" && mediumModeTrigger[18] == false && countAllow == false && stopDraw == false && boardPiece[8] != "O" && count < 9) {
     count++;
     position = 9;
     mediumModeTrigger[18] = true;
     mediumRandomTrigger = false;
     stopDraw = true;
    }
    if (boardPiece[2] == "X" && boardPiece[4] == "X" && mediumModeTrigger[19] == false && countAllow == false && stopDraw == false && boardPiece[6] != "O" && count < 9) {
     count++;
     position = 7;
     mediumModeTrigger[19] = true;
     mediumRandomTrigger = false;
     stopDraw = true;
    }
    if (boardPiece[0] == "X" && boardPiece[8] == "X" && mediumModeTrigger[20] == false && countAllow == false && stopDraw == false && boardPiece[4] != "O" && count < 9) {
     count++;
     position = 5;
     mediumModeTrigger[20] = true;
     mediumRandomTrigger = false;
     stopDraw = true;
    }
    if (boardPiece[2] == "X" && boardPiece[6] == "X" && mediumModeTrigger[21] == false && countAllow == false && stopDraw == false && boardPiece[4] != "O" && count < 9) {
     count++;
     position = 5;
     mediumModeTrigger[21] = true;
     mediumRandomTrigger = false;
     stopDraw = true;
    }
    if (boardPiece[4] == "X" && boardPiece[8] == "X" && mediumModeTrigger[22] == false && countAllow == false && stopDraw == false && boardPiece[0] != "O" && count < 9) {
     count++;
     position = 1;
     mediumModeTrigger[22] = true;
     mediumRandomTrigger = false;
     stopDraw = true;
    }
    if (boardPiece[4] == "X" && boardPiece[6] == "X" && mediumModeTrigger[23] == false && countAllow == false && stopDraw == false && boardPiece[2] != "O" && count < 9) {
     count++;
     position = 3;
     mediumModeTrigger[23] = true;
     mediumRandomTrigger = false;
     stopDraw = true;
    }
    
    
    //specific attack rules
    if (count == 1 && boardPiece[4] == null) { 
      count++;
      position = 5; 
      println("I have been activated and the count is: ", count);
    }
    if (count == 3 && boardPiece[0] == "X" && boardPiece[4] == "O" && boardPiece[8] == "X") {
      count++;
      position = 4; //NOTE this will need to be changed to a side randomizer
      println("I am going to stop the player!");
    }
    if (count == 5 && boardPiece[3] == "O" &&
  }
}