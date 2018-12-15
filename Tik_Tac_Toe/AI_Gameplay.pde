int easyModeArray[] = {1, 2, 3, 4};//, 3, 4, 5, 6, 7, 8, 9};
int easyRandom = (int)random(easyModeArray.length);
int alreadyUsed[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};

boolean easyTrigger = false;
boolean[] easyModeTrigger = new boolean[8];

void Modes() {
  if (mouseX > width*0 && mouseX < width*2/5 && mouseY > height*0 && mouseY < height*1/12) {
    if (boardPiece[0] == null && boardPiece[1] == null && boardPiece[2] == null && boardPiece[3] == null && boardPiece[4] == null && boardPiece[5] == null && boardPiece[6] == null && boardPiece[7] == null && boardPiece[8] == null) {
      fill(white2);
      rect(width*0, height*0, titleWidth, titleHeight);
      Text_Setup(easy, levelFont, height, 0, CENTER, CENTER, width*0, height*0, titleWidth, titleHeight);
      fill(white);
      rect(width*0, height*1/12, width*2/5, height*1/12); 
      Text_Setup(medium, levelFont, height, 0, CENTER, CENTER, width*0, height*1/12, titleWidth, titleHeight);
      rect(width*0, height*2/12, titleWidth, titleHeight);
      Text_Setup(hard, levelFont, height, 0, CENTER, CENTER, width*0, height*2/12, titleWidth, titleHeight);
      easyTrigger = true;
    } else if (boardPiece[0] != null ||  boardPiece[1] != null || boardPiece[2] != null || boardPiece[3] != null || boardPiece[4] != null || boardPiece[5] != null || boardPiece[6] != null || boardPiece[7] != null || boardPiece[8] != null) {
      println("please finish your current game and then press restart to change modes");
    }
  }
  if (mouseX > width*0 && mouseX < width*2/5 && mouseY > height*1/12 && mouseY < height*2/12) {
    if (boardPiece[0] == null && boardPiece[1] == null && boardPiece[2] == null && boardPiece[3] == null && boardPiece[4] == null && boardPiece[5] == null && boardPiece[6] == null && boardPiece[7] == null && boardPiece[8] == null) {
      fill(white2);
      rect(width*0, height*1/12, width*2/5, height*1/12); 
      Text_Setup(medium, levelFont, height, 0, CENTER, CENTER, width*0, height*1/12, titleWidth, titleHeight);
      fill(white); 
      rect(width*0, height*0, titleWidth, titleHeight);
      Text_Setup(easy, levelFont, height, 0, CENTER, CENTER, width*0, height*0, titleWidth, titleHeight);
      rect(width*0, height*2/12, titleWidth, titleHeight);
      Text_Setup(hard, levelFont, height, 0, CENTER, CENTER, width*0, height*2/12, titleWidth, titleHeight);
    } else if (boardPiece[0] != null ||  boardPiece[1] != null || boardPiece[2] != null || boardPiece[3] != null || boardPiece[4] != null || boardPiece[5] != null || boardPiece[6] != null || boardPiece[7] != null || boardPiece[8] != null) {
      println("please finish your current game and then press restart to change modes");
    }
  }
  if (mouseX > width*0 && mouseX < width*2/5 && mouseY > height*2/12 && mouseY < height*3/12) {
    if (boardPiece[0] == null && boardPiece[1] == null && boardPiece[2] == null && boardPiece[3] == null && boardPiece[4] == null && boardPiece[5] == null && boardPiece[6] == null && boardPiece[7] == null && boardPiece[8] == null) {
      fill(white2);
      rect(width*0, height*2/12, titleWidth, titleHeight);
      Text_Setup(hard, levelFont, height, 0, CENTER, CENTER, width*0, height*2/12, titleWidth, titleHeight);
      fill(white);
      rect(width*0, height*1/12, width*2/5, height*1/12); 
      Text_Setup(medium, levelFont, height, 0, CENTER, CENTER, width*0, height*1/12, titleWidth, titleHeight);
      rect(width*0, height*0, titleWidth, titleHeight);
      Text_Setup(easy, levelFont, height, 0, CENTER, CENTER, width*0, height*0, titleWidth, titleHeight);
    } else if (boardPiece[0] != null ||  boardPiece[1] != null || boardPiece[2] != null || boardPiece[3] != null || boardPiece[4] != null || boardPiece[5] != null || boardPiece[6] != null || boardPiece[7] != null || boardPiece[8] != null) {
      println("please finish your current game and then press restart to change modes");
    }
  }
}

void EasyAI () {
  textDraw();
  already_Used();
  println(easyModeArray[easyRandom]);
  for (int i = 0; i < 8; i++) {
    if (boardPiece[0] == "X") {
      if (easyTrigger == true && easyModeTrigger[0] == false) { 
        if (easyModeArray[easyRandom] != alreadyUsed[i]) { //Tommorow change already used to boardPiece[i] != "X" || "O"
          position = easyModeArray[easyRandom];
          easyModeTrigger[0] = true;
          count++;
        } else if (boardPiece[0] == "X" || boardPiece[0] == "O") {
          println("I tried");
          easyModeArray[easyRandom] = i + 1;
        }
      }
    }
    if (boardPiece[1] == "X") {
      if (easyTrigger == true && easyModeTrigger[1] == false) {
        if (easyModeArray[easyRandom] != alreadyUsed[i]) {
          position = easyModeArray[easyRandom];
          easyModeTrigger[1] = true; 
          count++;
        } else if (boardPiece[1] == "X" || boardPiece[1] == "O") {
          println("I tried 2");
          easyModeArray[easyRandom] = i + 1;
        }
      }
    }
    if (boardPiece[2] == "X") {
      if (easyTrigger == true && easyModeTrigger[2] == false) {
        if (easyModeArray[easyRandom] != alreadyUsed[i]) {
          position = easyModeArray[easyRandom];
          easyModeTrigger[2] = true; 
          count++;
        } else if (boardPiece[2] == "X" || boardPiece[2] == "O") {
          println("I tried 3");
          easyModeArray[easyRandom] = i + 1;
        }
      }
    }
    if (boardPiece[3] == "X") {
      if (easyTrigger == true && easyModeTrigger[3] == false) {
        if (easyModeArray[easyRandom] != alreadyUsed[i]) {
          position = easyModeArray[easyRandom];
          easyModeTrigger[3] = true; 
          count++;
        } else if (boardPiece[3] == "X" || boardPiece[3] == "O") {
          println("I tried 4");
          easyModeArray[easyRandom] = i + 1;
        }
      }
    }
    if (boardPiece[4] == "X") {
      if (easyTrigger == true && easyModeTrigger[4] == false) {
        if (easyModeArray[easyRandom] != alreadyUsed[i]) {
          position = easyModeArray[easyRandom];
          easyModeTrigger[4] = true; 
          count++;
        } else if (boardPiece[4] == "X" || boardPiece[4] == "O") {
          println("I tried 5");
          easyModeArray[easyRandom] = i + 1;
        }
      }
    }
    if (boardPiece[5] == "X") {
      if (easyTrigger == true && easyModeTrigger[5] == false) {
        if (easyModeArray[easyRandom] != alreadyUsed[i]) {
          position = easyModeArray[easyRandom];
          easyModeTrigger[5] = true; 
          count++;
        } else if (boardPiece[5] == "X" || boardPiece[5] == "O") {
          println("I tried 6");
          easyModeArray[easyRandom] = i + 1;
        }
      }
    }
    if (boardPiece[6] == "X") {
      if (easyTrigger == true && easyModeTrigger[6] == false) {
        if (easyModeArray[easyRandom] != alreadyUsed[i]) {
          position = easyModeArray[easyRandom];
          easyModeTrigger[6] = true; 
          count++;
        } else if (boardPiece[6] == "X" || boardPiece[6] == "O") {
          println("I tried 7");
          easyModeArray[easyRandom] = i + 1;
        }
      }
    }
    if (boardPiece[7] == "X") {
      if (easyTrigger == true && easyModeTrigger[7] == false) {
        if (easyModeArray[easyRandom] != alreadyUsed[i]) {
          position = easyModeArray[easyRandom];
          easyModeTrigger[7] = true; 
          count++;
        } else if (boardPiece[7] == "X" || boardPiece[7] == "O") {
          println("I tried 8");
          easyModeArray[easyRandom] = i + 1;
        }
      }
    }
    if (boardPiece[8] == "X") {
      if (easyTrigger == true && easyModeTrigger[8] == false) {
        if (easyModeArray[easyRandom] != alreadyUsed[i]) {
          position = easyModeArray[easyRandom];
          easyModeTrigger[8] = true; 
          count++;
        } else if (boardPiece[8] == "X" || boardPiece[8] == "O") {
          println("I tried 9");
          easyModeArray[easyRandom] = i + 1;
        }
      }
    }
  }
}

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
