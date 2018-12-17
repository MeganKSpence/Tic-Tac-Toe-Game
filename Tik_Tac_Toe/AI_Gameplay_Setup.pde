boolean easyTrigger = false;
boolean mediumTrigger = false;
boolean hardTrigger = false;

void Modes() {
  if (mouseX > width*0 && mouseX < width*2/5 && mouseY > height*0 && mouseY < height*1/12) {
    if (boardPiece[0] == null && boardPiece[1] == null && boardPiece[2] == null && boardPiece[3] == null && boardPiece[4] == null && boardPiece[5] == null && boardPiece[6] == null && boardPiece[7] == null && boardPiece[8] == null) {
      fill(white2);
      rect(width*0, height*0, titleWidth, titleHeight);
      fill(white);
      rect(width*0, height*1/12, width*2/5, height*1/12); 
      rect(width*0, height*2/12, titleWidth, titleHeight);
      Text_Setup(medium, levelFont, height, 0, CENTER, CENTER, width*0, height*1/12, titleWidth, titleHeight);
      Text_Setup(hard, levelFont, height, 0, CENTER, CENTER, width*0, height*2/12, titleWidth, titleHeight);
      Text_Setup(easy, levelFont, height, 0, CENTER, CENTER, width*0, height*0, titleWidth, titleHeight);
      easyTrigger = true;
      mediumTrigger = false;
      hardTrigger = false;
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
      easyTrigger = false;
      mediumTrigger = true;
      hardTrigger = false;
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
      easyTrigger = false;
      mediumTrigger = false;
      hardTrigger = true;
    } else if (boardPiece[0] != null ||  boardPiece[1] != null || boardPiece[2] != null || boardPiece[3] != null || boardPiece[4] != null || boardPiece[5] != null || boardPiece[6] != null || boardPiece[7] != null || boardPiece[8] != null) {
      println("please finish your current game and then press restart to change modes");
    }
  }
}
