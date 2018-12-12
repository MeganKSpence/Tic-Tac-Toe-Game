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
    if (mouseX > width*0 && mouseX < height*2/5 && mouseY > height*4/12 && mouseY < height*5/12) {
      count = 0; //Note figure out how to reset an array
      trigger = true;
      trigger2 = true;
      trigger3 = true; 
      position = 0;
      for (int i = 0; i < 9; i++) {
        noDraw[i] = false;
      }
      fill(white);
    }
  }
} 
