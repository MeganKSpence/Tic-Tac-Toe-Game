boolean[] mediumModeTrigger = new boolean[18];
boolean countAllow;
boolean mediumRandomTrigger = true;
boolean stopDraw = false; // boolean to stop the drawing of a second blocking O

int[] mediumUsed = new int[9];
int[] mediumModeArray = new int[1];

void MediumAI () {
  if (mediumTrigger == true) {
    countAllow();
    mediumRandomTrigger = true;
    stopDraw = false;
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
      println("11 has been activated", "the count isL ", count);
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
    mediumUsed();
     
    if (mediumRandomTrigger == true && countAllow == false && count < 9) { //you can say that count < 9 because AI only plays O's, and X's always will play on count of 9 so we dont need to worry about something not playing
      if (mediumModeArray[0] != 0) {
        println("I'm not equal to 0... right?", mediumModeArray[0]);
        println("count: ", count);
        if (mediumModeArray[0] != mediumUsed[0]) {
          println("I'm not equal to mediumUsed[0]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[0]);
          if (mediumModeArray[0] != mediumUsed[1]) {
            println("I'm not equal to mediumUsed[1]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[1]);
            if (mediumModeArray[0] != mediumUsed[2]) {
              println("I'm not equal to mediumUsed[2]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[2]);
              if (mediumModeArray[0] != mediumUsed[3]) {
                println("I'm not equal to mediumUsed[3]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[3]);
                if (mediumModeArray[0] != mediumUsed[4]) {
                  println("I'm not equal to mediumUsed[4]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[4]);
                  if (mediumModeArray[0] != mediumUsed[5]) {
                    println("I'm not equal to mediumUsed[5]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[5]);
                    if (mediumModeArray[0] != mediumUsed[6]) {
                      println("I'm not equal to mediumUsed[6]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[6]);
                      if (mediumModeArray[0] != mediumUsed[7]) {
                        println("I'm not equal to mediumUsed[7]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[7]);
                        if (mediumModeArray[0] != mediumUsed[8]) {
                          println("I'm not equal to mediumUsed[8]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[8]);
                          position = mediumModeArray[0];
                          count++;
                          println("the count is: ", count);
                        } else if (mediumModeArray[0] == mediumUsed[8]) {
                          println("I'm equal to mediumUsed[8]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[8]);
                          mediumModeArray[0] = (int)random(1, 10);
                        }
                      } else if (mediumModeArray[0] == mediumUsed[7]) {
                        println("I'm equal to mediumUsed[7]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[7]);
                        mediumModeArray[0] = (int)random(1, 10);
                      }
                    } else if (mediumModeArray[0] == mediumUsed[6]) {
                      println("I'm equal to mediumUsed[6]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[6]);
                      mediumModeArray[0] = (int)random(1, 10);
                    }
                  } else if (mediumModeArray[0] == mediumUsed[5]) {
                    println("I'm equal to mediumUsed[5]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[5]);
                    mediumModeArray[0] = (int)random(1, 10);
                  }
                } else if (mediumModeArray[0] == mediumUsed[4]) {
                  println("I'm equal to mediumUsed[4]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[4]);
                  mediumModeArray[0] = (int)random(1, 10);
                }
              } else if (mediumModeArray[0] == mediumUsed[3]) {
                println("I'm equal to mediumUsed[3]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[3]);
                mediumModeArray[0] = (int)random(1, 10);
              }
            } else if (mediumModeArray[0] == mediumUsed[2]) {
              println("I'm equal to mediumUsed[2]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[2]);
              mediumModeArray[0] = (int)random(1, 10);
            }
          } else if (mediumModeArray[0] == mediumUsed[1]) {
            println("I'm equal to mediumUsed[1]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[1]);
            mediumModeArray[0] = (int)random(1, 10);
          }
        } else if (mediumModeArray[0] == mediumUsed[0]) {
          println("I'm equal to mediumUsed[0]... right?", mediumModeArray[0], "mediumUsed: ", mediumUsed[0]);
          mediumModeArray[0] = (int)random(1, 10);
        }
      } else if (mediumModeArray[0] == 0) {
        println("I'm equal to 0... right?", mediumModeArray[0]);
        mediumModeArray[0] = (int)random(1, 10);
      }
    }
    //println("mediumRandomTrigger: ", mediumRandomTrigger);
    //println("mediumUsed[0]: ", mediumUsed[0]);
  }
}

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
    mediumUsed[0] = 1;
    //    println("1 has been activated");
  }
  if (boardPiece[1] == "X" || boardPiece[1] == "O") {
    mediumUsed[1] = 2;
    //    println("2 has been activated");
  }
  if (boardPiece[2] == "X" || boardPiece[2] == "O") {
    mediumUsed[2] = 3;
    //    println("3 has been activated");
  }
  if (boardPiece[3] == "X" || boardPiece[3] == "O") {
    mediumUsed[3] = 4;
    //    println("4 has been activated");
  }
  if (boardPiece[4] == "X" || boardPiece[4] == "O") {
    mediumUsed[4] = 5;
    //    println("5 has been activated");
  }
  if (boardPiece[5] == "X" || boardPiece[5] == "O") {
    mediumUsed[5] = 6;
    //    println("6 has been activated");
  }
  if (boardPiece[6] == "X" || boardPiece[6] == "O") {
    mediumUsed[6] = 7;
    //    println("7 has been activated");
  }
  if (boardPiece[7] == "X" || boardPiece[7] == "O") {
    mediumUsed[7] = 8;
    //    println("8 has been activated");
  }
  if (boardPiece[8] == "X" || boardPiece[8] == "O") {
    mediumUsed[8] = 9;
    //    println("9 has been activated");
  }
}
