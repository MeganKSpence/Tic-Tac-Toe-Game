void resetButtonColor() { 
  if (winX == true || winO == true || count == 9) {
    fill(white2);
    rect(width*0, height*4/12, width*2/5, height*1/12);
    fill(255);
    Text_Setup(restart, levelFont, height, 0, CENTER, CENTER, width*0, height*4/12, titleWidth, titleHeight);
  }
} 

void resetProgram_Play() { //In this progeram we need to keep the score while removing all x's and o's from board, and setting all trigger booleans to true again
  if (winX == true || winO == true || count == 9) {
    if (mouseX > width*0 && mouseX < height*2/5 && mouseY > height*4/12 && mouseY < height*5/12) { // Note this does currently reset the check if x or o won. The issue is removing the text
      count = 0;
      position = 0;
      trigger = true;
      trigger2 = true;
      trigger3 = true;
      trigger5 = false;
      positionTrigger2 = true;
      winX = false;
      winO =false;
      positionTrigger = false;
      positionTrigger2 = false;
      positionTrigger3 = false;
      positionTrigger4 = false;
      positionTrigger5 = false;
      positionTrigger6 = false;
      positionTrigger7 = false;
      positionTrigger8 = false;
      positionTrigger9 = false;

      for (int i = 0; i < 9; i++) {
        noDraw[i] = false;
      }

      println(boardPiece[0]); 
      if (boardPiece[0] == "X" || boardPiece[0] == "O" || boardPiece[0] == null) {
        fill(#FFFFFF);
        rect(width*2/5, height*0, width*1/5, height*1/3);
      } 
      if (boardPiece[1] == "X" || boardPiece[1] == "O" || boardPiece[1] == null) {
        fill(#FFFFFF);
        rect(width*3/5, height*0, width*1/5, height*1/3);
      } 
      if (boardPiece[2] == "X" || boardPiece[2] == "O" || boardPiece[2] == null) {
        fill(#FFFFFF);
        rect(width*4/5, height*0, width*1/5, height*1/3);
      } 
      if (boardPiece[3] == "X" || boardPiece[3] == "O" || boardPiece[3] == null) {
        fill(#FFFFFF);
        rect(width*2/5, height*1/3, width*1/5, height*1/3);
      } 
      if (boardPiece[4] == "X" || boardPiece[4] == "O" || boardPiece[4] == null) {
        fill(#FFFFFF);
        rect(width*3/5, height*1/3, width*1/5, height*1/3);
      } 
      if (boardPiece[5] == "X" || boardPiece[5] == "O" || boardPiece[5] == null) {
        fill(#FFFFFF);
        rect(width*4/5, height*1/3, width*1/5, height*1/3);
      } 
      if (boardPiece[6] == "X" || boardPiece[6] == "O" || boardPiece[6] == null) {
        fill(#FFFFFF);
        rect(width*2/5, height*2/3, width*1/5, height*1/3);
      }  
      if (boardPiece[7] == "X" || boardPiece[7] == "O" || boardPiece[7] == null) {
        fill(#FFFFFF);
        rect(width*3/5, height*2/3, width*1/5, height*1/3);
      } 
      if (boardPiece[8] == "X" || boardPiece[8] == "O" || boardPiece[8] == null) {
        fill(#FFFFFF);
        rect(width*4/5, height*2/3, width*1/5, height*1/3);
      }
    }
  }
} 
