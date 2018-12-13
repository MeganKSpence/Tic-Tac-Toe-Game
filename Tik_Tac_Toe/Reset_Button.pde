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
      positionTrigger2 = true;
      winX = false;
      winO =false;

      for (int i = 0; i < 9; i++) {
        noDraw[i] = false;
      }

      println(boardPiece[0]); 
      if (boardPiece[0] == "X") {
        fill(#FFFFFF);
        rect(width*2/5, height*0, width*1/5, height*1/3);
      } else if (boardPiece[0] == "O") {
        fill(#FFFFFF);
        rect(width*2/5, height*0, width*1/5, height*1/3);
      }
      if (boardPiece[1] == "X") {
        fill(#FFFFFF);
        rect(width*3/5, height*0, width*1/5, height*1/3);
      } else if (boardPiece[1] == "O") {
        fill(#FFFFFF);
        rect(width*3/5, height*0, width*1/5, height*1/3);
      }
      
    }
  }
} 
