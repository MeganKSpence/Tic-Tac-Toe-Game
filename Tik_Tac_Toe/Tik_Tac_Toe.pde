// Main divisions
void setup() {
  //blank page setup
  //size(600, 400);
  fullScreen();
  background(255);

  //calling other "voids" from other pages
  stringVariables();
  GUI_Design();
  Fonts();
  
  //Writing Text
  Text_Setup(easy, levelFont, height, 0, CENTER, CENTER, width*0, height*0, titleWidth, titleHeight);
  Text_Setup(medium, levelFont, height, 0, CENTER, CENTER, width*0, height*1/12, titleWidth, titleHeight);
  Text_Setup(hard, levelFont, height, 0, CENTER, CENTER, width*0, height*2/12, titleWidth, titleHeight);
  Text_Setup(start, levelFont, height, 0, CENTER, CENTER, width*0, height*3/12, titleWidth, titleHeight);
  Text_Setup(restart, levelFont, height, 0, CENTER, CENTER, width*0, height*4/12, titleWidth, titleHeight);
  Text_Setup(player1, playerFont, height, 0, CENTER, CENTER, width*0, height*6/12, width*2/10, height*3/12); 
  Text_Setup(player2, playerFont, height, 0, CENTER, CENTER, width*0, height*9/12, width*2/10, height*3/12); 

  for (int i=0; i < noDraw.length; i++) {
    noDraw[i] = false;
  }
}

void draw () {
  Quit_Button();
  textDraw();
}


void mouseClicked () {
  exitButtonMouseClicked();
  xoButtonDraw();
  println(" Position:", position, "Count:", count);
  /*for (int i = 0; i < noDraw.length; i++) {
   print(" noDraw " + str(i) + ": " + str(noDraw[i])); 
   } */
}
