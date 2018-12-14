boolean circleMove1 = false;
boolean circleMove2 = false;
boolean boxPlacement1 = false;
boolean boxPlacement2 = false;
boolean purpleDraw = false;
boolean pinkDraw = false;

void setup() {
  size(700, 500); //Integers
  //screenChecker();
  GUI_Design();
}

void draw() {
  origionalPieces();
  collisions();
  fill(white);
}

void mouseClicked() {
  if (mouseX>width*1/4-width*1/16 && mouseX<width*1/4+width*1/16 && mouseY>height*3/4-width*1/16 && mouseY<height*3/4+1/16) {
    circleMove1 = true;
  }
  if (mouseX>width*3/4-width*1/16 && mouseX<width*3/4+width*1/16 && mouseY>height*3/4-width*1/16 && mouseY<height*3/4+1/16) {
    circleMove2 = true;
  }
  if (mouseX>width*1/8 && mouseX<width*3/8 && mouseY>height*1/8 && mouseY<height*1/2) {
    boxPlacement1 = true;
  }
  if (mouseX>width*5/8 && mouseX<width*3/8 && mouseY>height*1/8 && mouseY<height*1/2) {
    boxPlacement2 = true;
  }
}

void collisions() {
  if (circleMove1 == true) {
    fill(purple);
    ellipse(mouseX, mouseY, circleDiameter, circleDiameter);
    purpleDraw = true;
  }
  if (circleMove2 == true) {
    fill(pink);
    ellipse(mouseX, mouseY, circleDiameter, circleDiameter);
    pinkDraw = true;
  }
  if (boxPlacement2 == true && purpleDraw == true) {
    fill(purple);
    ellipse(width*2/8, height*5/16, circleDiameter, circleDiameter);
  } else if (boxPlacement1 == true && pinkDraw == true) {
    fill(pink);
    ellipse(width*2/8, height*5/16, circleDiameter, circleDiameter);
  }
  if (boxPlacement2 == true && purpleDraw == true) {
    fill(purple);
    ellipse(width*6/8, height*5/16, circleDiameter, circleDiameter);
  } else if (boxPlacement1 == true && pinkDraw == true) {
    fill(pink);
    ellipse(width*6/8, height*5/16, circleDiameter, circleDiameter);
  }
}
