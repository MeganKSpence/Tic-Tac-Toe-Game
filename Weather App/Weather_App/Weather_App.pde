//Global Variables

void setup() {
  size(500, 600);
  //fullScreen();
  buildingURL();
  unwrappingData();
  Fonts();
  variables();
}

void draw() {
  //Drawing Setup
  setGradient(0, 0, width, height, backgroundBlue, white);
  pageHighlight();
  drawingDataHighlight();
  quitButtonHighlight();
  drawingData();
  GUI_Setup();
  arrowBlock();
  currentVSForcast();
  Text();
}

void mouseClicked() {
  pageTurn();
  mouseClickedData();
  quitButtonExit();
}
