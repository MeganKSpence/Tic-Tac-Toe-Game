boolean easyTrigger = false;
boolean mediumTrigger = false;
boolean hardTrigger = false;
boolean noAI = true; 
//Global Variables
//boolean check3InRowX = false; 
//boolean check3InRowO = false;
boolean winX = false;
boolean winO = false; 
boolean trigger = true;
boolean trigger2 = true;
boolean trigger3 = true;
boolean trigger4 = true;
boolean trigger5 = true; 

int numberOfBoardPieces = 9;
int resetTrigger = 0; 

String[] boardPiece = new String[numberOfBoardPieces]; 
String[] onlyXPiece = new String[numberOfBoardPieces];
String[] onlyOPiece = new String[numberOfBoardPieces]; //let game_Piece be in void xoText
//String[] trigger = new String[triggerPieces]; 
color red  = #FF0000;

//check for wins
void check3InRow() { 
  onlyX();
  checkNestedFORO();
  checkNestedFORX();
  if (winX == true && trigger2 == true && trigger5 == true) {
    println("X won!"); //Need to set winX as false again and then also simultaniusly stop or "break" the code from running again
    trigger2 = false;
  } 
  if (winO == true && trigger2 == true && trigger5 == true) {
    println("O won!");
    trigger2 = false;
  } 
  if (count == 9 && trigger2 == true && trigger5 == true && tieActivator == true) {
    println("You Tied!");
    trigger2 = false;
  }
}

void onlyX() {
  for (int i=0; i<numberOfBoardPieces; i++) {
    if (boardPiece[i] == "X") {
      onlyXPiece[i] = "X";
    }
  }
}

void onlyO() {
  for (int i=0; i<numberOfBoardPieces; i++) {
    if (boardPiece[i] == "O") {
      onlyOPiece[i] = "O";
    }
  }
} 

void scoreboardCount() {
  if (winX == true && trigger3 == true && trigger4 == true) {
    fill(255);
   // rect(width*2/10, height*13/24, width*3/20, height*1/6);
    xWin = xWin + 1;
    Text_Setup(str(xWin), scoreFont, height, 0, CENTER, CENTER, width*2/10, height*13/24, width*3/20, height*1/6);
    fill(255);
    trigger3 = false;
    trigger4 = false;
  }
  if (winO == true && trigger3 == true && trigger4 == true) {
    fill(255);
    rect(width*2/10, height*19/24, width*3/20, height*1/6);
    oWin = oWin + 1;
    trigger3 = false;
    fill(0);
    textAlign(CENTER, CENTER);
    textFont(xoFont, 40);
    text(str(oWin), width*2/10, height*19/24, width*3/20, height*1/6);
    fill(255);
    trigger4 = false;
  }
}

Boolean checkNestedFORX() {
  onlyX();
  if (onlyXPiece[0] == "X" && onlyXPiece[3] == "X" && onlyXPiece[6] == "X" && trigger == true) {
    winX = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*10/20, height*1/24, width*10/20, height*23/24);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyXPiece[1] == "X" && onlyXPiece[4] == "X" && onlyXPiece[7] == "X" && trigger == true) {
    winX = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*14/20, height*1/24, width*14/20, height*23/24);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyXPiece[2] == "X" && onlyXPiece[5] == "X" && onlyXPiece[8] == "X" && trigger == true) {
    winX = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*18/20, height*1/24, width*18/20, height*23/24);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyXPiece[0] == "X" && onlyXPiece[1] == "X" && onlyXPiece[2] == "X" && trigger == true) {
    winX = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*9/20, height*9/48, width*19/20, height*9/48);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyXPiece[3] == "X" && onlyXPiece[4] == "X" && onlyXPiece[5] == "X" && trigger == true) {
    winX = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*9/20, height*25/48, width*19/20, height*25/48);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyXPiece[6] == "X" && onlyXPiece[7] == "X" && onlyXPiece[8] == "X" && trigger == true) {
    winX = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*9/20, height*41/48, width*19/20, height*41/48);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyXPiece[0] == "X" && onlyXPiece[4] == "X" && onlyXPiece[8] == "X" && trigger == true) {
    winX = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*9/20, height*5/48, width*23/24, height*19/20);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyXPiece[2] == "X" && onlyXPiece[4] == "X" && onlyXPiece[6] == "X" && trigger == true) {
    winX = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*23/24, height*4/48, width*9/20, height*19/20);
    strokeWeight(1);
    stroke(0);
  } 
  return winX;
}

boolean checkNestedFORO() {
  onlyO();
  if (onlyOPiece[0] == "O" && onlyOPiece[3] == "O" && onlyOPiece[6] == "O" && trigger == true) {
    winO = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*10/20, height*1/24, width*10/20, height*23/24);
    strokeWeight(1);
    stroke(red);
  } 
  if (onlyOPiece[1] == "O" && onlyOPiece[4] == "O" && onlyOPiece[7] == "O" && trigger == true) {
    winO = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*14/20, height*1/24, width*14/20, height*23/24);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyOPiece[2] == "O" && onlyOPiece[5] == "O" && onlyOPiece[8] == "O" && trigger == true) {
    winO = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*18/20, height*1/24, width*18/20, height*23/24);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyOPiece[0] == "O" && onlyOPiece[1] == "O" && onlyOPiece[2] == "O" && trigger == true) {
    winO = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*9/20, height*9/48, width*19/20, height*9/48);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyOPiece[3] == "O" && onlyOPiece[4] == "O" && onlyOPiece[5] == "O" && trigger == true) {
    winO = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*9/20, height*25/48, width*19/20, height*25/48);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyOPiece[6] == "O" && onlyOPiece[7] == "O" && onlyOPiece[8] == "O" && trigger == true) {
    winO = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*9/20, height*41/48, width*19/20, height*41/48);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyOPiece[0] == "O" && onlyOPiece[4] == "O" && onlyOPiece[8] == "O" && trigger == true) {
    winO = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*9/20, height*5/48, width*23/24, height*19/20);
    strokeWeight(1);
    stroke(0);
  } 
  if (onlyOPiece[2] == "O" && onlyOPiece[4] == "O" && onlyOPiece[6] == "O" && trigger == true) {
    winO = true;
    trigger = false;
    strokeWeight(4);
    stroke(red);
    line(width*23/24, height*4/48, width*9/20, height*19/20);
    strokeWeight(1);
    stroke(0);
  } 
  return winO;
}

//setup Modes
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
      noAI = false;
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
  if (mouseX > width*0 && mouseX < width*2/5 && mouseY > height*3/12 && mouseY < height*4/12) {
    if (boardPiece[0] == null && boardPiece[1] == null && boardPiece[2] == null && boardPiece[3] == null && boardPiece[4] == null && boardPiece[5] == null && boardPiece[6] == null && boardPiece[7] == null && boardPiece[8] == null) {
      fill(white2);
      rect(width*0, height*3/12, titleWidth, titleHeight);
      Text_Setup(start, levelFont, height, 0, CENTER, CENTER, width*0, height*2/12, titleWidth, titleHeight);
      fill(white);
      rect(width*0, height*1/12, width*2/5, height*1/12); 
      Text_Setup(medium, levelFont, height, 0, CENTER, CENTER, width*0, height*1/12, titleWidth, titleHeight);
      rect(width*0, height*0, titleWidth, titleHeight);
      Text_Setup(easy, levelFont, height, 0, CENTER, CENTER, width*0, height*0, titleWidth, titleHeight);
      rect(width*0, height*2/12, titleWidth, titleHeight); 
      Text_Setup(hard, levelFont, height, 0, CENTER, CENTER, width*0, height*2/12, titleWidth, titleHeight);
      easyTrigger = false;
      mediumTrigger = false;
      hardTrigger = false;
      noAI = true;
    } else if (boardPiece[0] != null ||  boardPiece[1] != null || boardPiece[2] != null || boardPiece[3] != null || boardPiece[4] != null || boardPiece[5] != null || boardPiece[6] != null || boardPiece[7] != null || boardPiece[8] != null) {
      println("please finish your current game and then press restart to change modes");
    }
  }
}
