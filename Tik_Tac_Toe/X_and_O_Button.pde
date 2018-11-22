void textDraw() {

  fill(0);
  textAlign(CENTER, CENTER);
  textFont(xoFont, 40);
  text(str(xWin), width*2/10, height*13/24, width*3/20, height*1/6);
  text(str(oWin), width*2/10, height*19/24, width*3/20, height*1/6);
  fill(255);

  if (count == 1 || count == 3 || count == 5 || count == 7 || count == 9) {
    xoText(player1, position);
  } else {
    xoText(player2, position);
  }

  //when board is full, reset button will change color
  if (count == 9) {
    fill(white2);
    rect(width*0, height*4/12, width*2/5, height*1/12);
    fill(255);
    Reset_Text(); //Need to create reset button
  }
}  

void xoText (String text, int position) {
  
  //println(" Position:", position, "Count:", count);

  fill(0);
  textAlign(CENTER, CENTER);
  textFont(xoFont, 40);

  if (position == 1) {
    text(text, width*2/5, height*0, width*1/5, height*1/3);
  }
  if (position == 2) {
    text(text, width*3/5, height*0, width*1/5, height*1/3);
  }
  if (position == 3) {
    text(text, width*4/5, height*0, width*1/5, height*1/3);
  }
  if (position == 4) {
    text(text, width*2/5, height*1/3, width*1/5, height*1/3);
  }
  if (position == 5) {
    text(text, width*3/5, height*1/3, width*1/5, height*1/3);
  }
  if (position == 6) {
    text(text, width*4/5, height*1/3, width*1/5, height*1/3);
  }
  if (position == 7) {
    text(text, width*2/5, height*2/3, width*1/5, height*1/3);
  }
  if (position == 8) {
    text(text, width*3/5, height*2/3, width*1/5, height*1/3);
  }
  if (position == 9) {
    text(text, width*4/5, height*2/3, width*1/5, height*1/3);
  }
  fill(255);
}



void xoButtonDraw () {

  //fill(255);
  /*    noStroke();
   rect(width*2/5, height*0, width*1/5, height*1/3);
   rect(width*3/5, height*0, width*1/5, height*1/3);
   rect(width*4/5, height*0, width*1/5, height*1/3);
   rect(width*2/5, height*1/3, width*1/5, height*1/3);
   rect(width*3/5, height*1/3, width*1/5, height*1/3);
   rect(width*4/5, height*1/3, width*1/5, height*1/3);
   rect(width*2/5, height*2/3, width*1/5, height*1/3);
   rect(width*3/5, height*2/3, width*1/5, height*1/3);
   rect(width*4/5, height*2/3, width*1/5, height*1/3);
   stroke(1);
   xWin+=1; */

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
