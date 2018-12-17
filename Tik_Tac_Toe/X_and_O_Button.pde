int xWin = 0, oWin = 0, count = 0, position; //count might work to replace boardPieces in gamePieces in Game_Pieces
Boolean[] noDraw = new Boolean[9]; 

boolean positionTrigger = false;
boolean positionTrigger2 = false;
boolean positionTrigger3 = false;
boolean positionTrigger4 = false;
boolean positionTrigger5 = false;
boolean positionTrigger6 = false;
boolean positionTrigger7 = false;
boolean positionTrigger8 = false;
boolean positionTrigger9 = false;
boolean tieActivator = false;

//String triggerText = "O";

void textDraw() {

  if (count % 2 == 1) {
    xoText(X, position); //You cannot get rid of this text when trying to make X bigger //put boardpiece == x in this area?
    if (count == 9) {
      tieActivator = true;
    }
  } else {
    xoText(O, position); //You cannot get rid of this text when trying to make O bigger
  }

  //when board is full, reset button will change color
//  resetButtonColor();
}  

void xoText (String text, int position) {

  //println(" Position:", position, "Count:", count);

  fill(0);
  textAlign(CENTER, CENTER);
  textFont(xoFont, 40);
  
  if (position == 1 && trigger2 == true && positionTrigger == false) {
    text(text, width*2/5, height*0, width*1/5, height*1/3);
    boardPiece[0] = text;
    positionTrigger = true;
  } else if (position == 1 && trigger2 == true && positionTrigger == true) {
  }
  if (position == 2 && trigger2 == true && positionTrigger2 == false) {
    text(text, width*3/5, height*0, width*1/5, height*1/3);
    boardPiece[1] = text;
    positionTrigger2 = true;
  } else if (position == 2 && trigger2 == true && positionTrigger2 == true) {
  }
  if (position == 3 && trigger2 == true && positionTrigger3 == false) {
    text(text, width*4/5, height*0, width*1/5, height*1/3);
    boardPiece[2] = text;
    positionTrigger3 = true;
  } else if (position == 3 && trigger2 == true && positionTrigger3 == true) {
  }
  if (position == 4 && trigger2 == true && positionTrigger4 == false) {
    text(text, width*2/5, height*1/3, width*1/5, height*1/3);
    boardPiece[3] = text;
    positionTrigger4 = true;
  } else if (position == 4 && trigger2 == true && positionTrigger4 == true) {
  }
  if (position == 5 && trigger2 == true && positionTrigger5 == false) {
    text(text, width*3/5, height*1/3, width*1/5, height*1/3);
    boardPiece[4] = text;
    positionTrigger5 = true;
  } else if (position == 5 && trigger2 == true && positionTrigger5 == true) {
  }
  if (position == 6 && trigger2 == true && positionTrigger6 == false) {
    text(text, width*4/5, height*1/3, width*1/5, height*1/3);
    boardPiece[5] = text;
    positionTrigger6 = true;
  } else if (position == 6 && trigger2 == true && positionTrigger6 == true) {
  }
  if (position == 7 && trigger2 == true && positionTrigger7 == false) {
    text(text, width*2/5, height*2/3, width*1/5, height*1/3);
    boardPiece[6] = text;
    positionTrigger7 = true;
  } else if (position == 7 && trigger2 == true && positionTrigger6 == true) {
  }
  if (position == 8 && trigger2 == true && positionTrigger8 == false) {
    text(text, width*3/5, height*2/3, width*1/5, height*1/3);
    boardPiece[7] = text;
    positionTrigger8 = true;
  } else if (position == 8 && trigger2 == true && positionTrigger8 == true) {
  }
  if (position == 9 && trigger2 == true && positionTrigger9 == false) {
    text(text, width*4/5, height*2/3, width*1/5, height*1/3);
    boardPiece[8] = text;
    positionTrigger9 = true;
  } else if (position == 9 && trigger2 == true && positionTrigger9 == true) {
  }
  fill(255);
}



void xoButtonDraw () {

  if (noDraw[0] == false && mouseX<width*3/5 && mouseX>width*2/5 && mouseY<height*1/3 && mouseY>height*0) { //#1
    position = 1;
    noDraw[0] = true;
    count++;
  }
  if (noDraw[1] == false && mouseX<width*4/5 && mouseX>width*3/5 && mouseY<height*1/3 && mouseY>height*0) { //#2
    position = 2;
    noDraw[1] = true;
    count++;
  } 
  if (noDraw[2] == false && mouseX<width*5/5 && mouseX>width*4/5 && mouseY<height*1/3 && mouseY>height*0) { //#3
    position = 3;
    noDraw[2] = true;
    count++;
  } 
  if (noDraw[3] == false && mouseX<width*3/5 && mouseX>width*2/5 && mouseY<height*2/3 && mouseY>height*1/3) { //#4
    position = 4;
    noDraw[3] = true;
    count++;
  } 
  if (noDraw[4] == false && mouseX<width*4/5 && mouseX>width*3/5 && mouseY<height*2/3 && mouseY>height*1/3) { //#5
    position = 5;
    noDraw[4] = true;
    count++;
  } 
  if (noDraw[5] == false && mouseX<width*5/5 && mouseX>width*4/5 && mouseY<height*2/3 && mouseY>height*1/3) { //#6
    position = 6;
    noDraw[5] = true;
    count++;
  } 
  if (noDraw[6] == false && mouseX<width*3/5 && mouseX>width*2/5 && mouseY<height*3/3 && mouseY>height*2/3) { //#7
    position = 7;
    noDraw[6] = true;
    count++;
  } 
  if (noDraw[7] == false && mouseX<width*4/5 && mouseX>width*3/5 && mouseY<height*3/3 && mouseY>height*2/3) { //#8
    position = 8;
    noDraw[7] = true;
    count++;
  } 
  if (noDraw[8] == false && mouseX<width*5/5 && mouseX>width*4/5 && mouseY<height*3/3 && mouseY>height*2/3) { //#9
    position = 9;
    noDraw[8] = true;
    count++;
  }
} 
