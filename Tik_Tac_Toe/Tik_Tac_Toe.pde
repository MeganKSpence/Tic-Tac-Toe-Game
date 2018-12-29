
void setup() {
  //blank page setup
  size(600, 400);
  //fullScreen();
  background(255);

  //calling other "voids" from other pages
  GUI_Design(); //Draws basic outline - can be found in GUI_Design
  //draws text - all can be found in Text_Setup
  stringVariables(); //creates variables for text generation 
  Fonts(); //creates fonts 
  Text(); //creates text 

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
  HardAI();
}




void mouseClicked () {
  exitButtonMouseClicked();
  xoButtonDraw();
  resetProgram_Play();
  Modes();
  //  Modes();
}
