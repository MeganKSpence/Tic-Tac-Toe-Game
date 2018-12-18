// Main divisions
void setup() {
  //blank page setup
  //size(600, 400);
  fullScreen();
  background(255);

  //calling other "voids" from other pages
  GUI_Design();
  stringVariables();
  Fonts();
  Text();

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
  MediumAI();
}




void mouseClicked () {
  exitButtonMouseClicked();
  xoButtonDraw();
  resetProgram_Play();
  Modes();
//  Modes();
}
