// Main divisions
void setup() {
  //blank page setup
  size(600, 400);
  //fullScreen();
  background(255);

  //calling other "voids" from other pages
  GUI_Design();
  stringVariables();
  Fonts();

  //Writing Text
  //Need to put all of these into a void
  Text_Setup(easy, levelFont, height, 0, CENTER, CENTER, width*0, height*0, titleWidth, titleHeight);
  Text_Setup(medium, levelFont, height, 0, CENTER, CENTER, width*0, height*1/12, titleWidth, titleHeight);
  Text_Setup(hard, levelFont, height, 0, CENTER, CENTER, width*0, height*2/12, titleWidth, titleHeight);
  Text_Setup(start, levelFont, height, 0, CENTER, CENTER, width*0, height*3/12, titleWidth, titleHeight);
  Text_Setup(restart, levelFont, height, 0, CENTER, CENTER, width*0, height*4/12, titleWidth, titleHeight);
  // Text_Setup(exitButton, levelFont, height, 0, CENTER, CENTER, width*0, height*5/12, titleWidth, titleHeight); //This line of code is active in Quit_Button
  Text_Setup(player1, playerFont, height, 0, CENTER, CENTER, width*0, height*6/12, width*2/10, height*3/12); 
  Text_Setup(player2, playerFont, height, 0, CENTER, CENTER, width*0, height*9/12, width*2/10, height*3/12); 
  // Text_Setup(str(xWin), xoFont, height, 0, CENTER, CENTER, width*2/10, height*13/24, width*3/20, height*1/6); //line 22 and 23, ask Mercer how you would go about doing this
  // Text_Setup(str(oWin), xoFont, height, 0, CENTER, CENTER, width*2/10, height*19/24, width*3/20, height*1/6); 

  for (int i=0; i < noDraw.length; i++) {
    noDraw[i] = false;
  }
}

void draw () {
  check3InRow();
  scoreboardCount();
  textDraw(); 
  Quit_Button();
  resetButtonColor();
  EasyAI();
}




void mouseClicked () {
  exitButtonMouseClicked();
  xoButtonDraw();
  resetProgram_Play();
  Modes(); 
}
