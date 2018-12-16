boolean[] easyModeTrigger = new boolean[9];

//boardNumberFill;
int[] easyModeArray = new int[10];
int[] alreadyUsed = new int[10];

void already_Used() {
  if (boardPiece[0] == "X" || boardPiece[0] == "O") {
    alreadyUsed[1] = 1;
  }
  if (boardPiece[1] == "X" || boardPiece[1] == "O") {
    alreadyUsed[2] = 2;
  }
  if (boardPiece[2] == "X" || boardPiece[2] == "O") {
    alreadyUsed[3] = 3;
  }
  if (boardPiece[3] == "X" || boardPiece[3] == "O") {
    alreadyUsed[4] = 4;
  }
  if (boardPiece[4] == "X" || boardPiece[4] == "O") {
    alreadyUsed[5] = 5;
  }
  if (boardPiece[5] == "X" || boardPiece[5] == "O") {
    alreadyUsed[6] = 6;
  }
  if (boardPiece[6] == "X" || boardPiece[6] == "O") {
    alreadyUsed[7] = 7;
  }
  if (boardPiece[7] == "X" || boardPiece[7] == "O") {
    alreadyUsed[8] = 8;
  }
  if (boardPiece[8] == "X" || boardPiece[8] == "O") {
    alreadyUsed[9] = 9;
  }
} 

void EasyAI () {
  already_Used();
  if (easyTrigger == true) {
    for (int j = 0; j < alreadyUsed.length; j++) {
      if (boardPiece[0] == "X" && easyModeTrigger[0] == false) { 
        if (easyModeArray[0]!= alreadyUsed[j] || easyModeArray[0] != 1);
        position = easyModeArray[0];
        easyModeTrigger[0] = true;
        count++;
      } else if (easyModeArray[0] == alreadyUsed[j] && easyModeTrigger[0] == false || easyModeArray[0] == 1 && easyModeTrigger[0] == false) {
        easyModeArray[0] = (int)random(9);  
      }
      if (boardPiece[1] == "X" && easyModeTrigger[1] == false) {
        if (easyModeArray[1]!= alreadyUsed[j] || easyModeArray[1] != 2) ;
        position = easyModeArray[1];
        easyModeTrigger[1] = true;
        count++;
      } else if (easyModeArray[1] == alreadyUsed[j] && easyModeTrigger[1] == false || easyModeArray[1] == 2 && easyModeTrigger[1] == false) {
        easyModeArray[1] = (int)random(9);  
      }
      if (boardPiece[2] == "X" && easyModeTrigger[2] == false) {
        if (easyModeArray[2]!= alreadyUsed[j] || easyModeArray[2] != 3);
        position = easyModeArray[2];
        easyModeTrigger[2] = true;
        count++;
      } else if (easyModeArray[2] == alreadyUsed[j] && easyModeTrigger[2] == false || easyModeArray[2] == 3 && easyModeTrigger[2] == false) {
        easyModeArray[2] = (int)random(9);  
      }
       if (boardPiece[3] == "X" && easyModeTrigger[3] == false) {
        if (easyModeArray[3]!= alreadyUsed[j] || easyModeArray[3] != 4);
        position = easyModeArray[3];
        easyModeTrigger[3] = true;
        count++;
      } else if (easyModeArray[3] == alreadyUsed[j] && easyModeTrigger[3] == false || easyModeArray[3] == 4 && easyModeTrigger[3] == false) {
        easyModeArray[3] = (int)random(9);  
      }
       if (boardPiece[4] == "X" && easyModeTrigger[4] == false) {
        if (easyModeArray[4]!= alreadyUsed[j] || easyModeArray[4] != 5);
        position = easyModeArray[4];
        easyModeTrigger[4] = true;
        count++;
      } else if (easyModeArray[4] == alreadyUsed[j] && easyModeTrigger[4] == false || easyModeArray[4] == 5 && easyModeTrigger[4] == false) {
        easyModeArray[4] = (int)random(9);  
      }
     if (boardPiece[5] == "X" && easyModeTrigger[5] == false) {
        if (easyModeArray[5]!= alreadyUsed[j] || easyModeArray[5] != 6);
        position = easyModeArray[5];
        easyModeTrigger[5] = true;
        count++;
      } else if (easyModeArray[5] == alreadyUsed[j] && easyModeTrigger[5] == false || easyModeArray[5] == 6 && easyModeTrigger[5] == false) {
        easyModeArray[5] = (int)random(9);
      }
      if (boardPiece[6] == "X" && easyModeTrigger[6] == false) {
        if (easyModeArray[6]!= alreadyUsed[j] || easyModeArray[6] != 7);
        position = easyModeArray[6];
        easyModeTrigger[6] = true;
        count++;
      } else if (easyModeArray[6] == alreadyUsed[j] && easyModeTrigger[6] == false || easyModeArray[6] == 7 && easyModeTrigger[6] == false) {
        easyModeArray[6] = (int)random(9);  
      }
       if (boardPiece[7] == "X" && easyModeTrigger[7] == false) {
        if (easyModeArray[7]!= alreadyUsed[j] || easyModeArray[7] != 8);
        position = easyModeArray[7];
        easyModeTrigger[7] = true;
        count++;
      } else if (easyModeArray[7] == alreadyUsed[j] && easyModeTrigger[7] == false || easyModeArray[7] == 8 && easyModeTrigger[7] == false) {
        easyModeArray[7] = (int)random(9);  
      }
       if (boardPiece[8] == "X" && easyModeTrigger[8] == false) {
        if (easyModeArray[8]!= alreadyUsed[j] || easyModeArray[8] != 9);
        position = easyModeArray[8];
        easyModeTrigger[8] = true;
        count++;
      } else if (easyModeArray[8] == alreadyUsed[j] && easyModeTrigger[8] == false || easyModeArray[8] == 9 && easyModeTrigger[8] == false) {
        easyModeArray[8] = (int)random(9);  
      }
    }
  }
}
