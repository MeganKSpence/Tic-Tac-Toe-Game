//Global Variables
color backgroundBlue = #88B5FA; //Used in gradient
color white = #FFFFFF;
color highlight = #B5E1F2;
color stopRed = #F01124;

int pageChange = 1;

boolean forcastEnable = false;
boolean currentChange = false;
boolean forcastChange = false;

void setGradient(int x, int y, float w, float h, color c1, color c2) { //Draws Gradient Background
  noFill();
  for (int i = y; i <= y+h; i++) {
    float inter = map(i, y, y+h, 0, 1);
    color c = lerpColor(c1, c2, inter);
    stroke(c);
    line(x, i, x+w, i);
  }
}

void GUI_Setup() { //basic GUI
  //City selection lines
  stroke(0);
  strokeWeight(2);
  line(width*3/8, height*0, width*3/8, height*1);
  line(width*0, height*1/8, width*3/8, height*1/8);
  line(width*0, height*1/4, width*3/8, height*1/4);
  line(width*0, height*3/8, width*3/8, height*3/8);
  line(width*0, height*1/2, width*3/8, height*1/2);
  line(width*0, height*5/8, width*3/8, height*5/8);
  line(width*0, height*3/4, width*3/8, height*3/4);
  line(width*0, height*7/8, width*3/8, height*7/8);

  //Selection Triangles //NOTE: must change these to height and width values!
  fill(0);
  triangle(width*55/500, height*51/600, width*91/500, height*20/600, width*130/500, height*51/600);
  triangle(width*55/500, height*549/600, width*92/500, height*585/600, width*130/500, height*549/600);

  //Exit, Forcast change button lines
  line(width*3/8, height*3/32, width*1, height*3/32);
  line(width*6/8, height*0, width*6/8, height*3/32);
}

void quitButtonHighlight() { //Quit Button
  if (mouseX > width*6/8 && mouseX < width*1 && mouseY > height*0 && mouseY < height*3/32) { 
    fill(highlight);
    rect(width*6/8, height*0, width*2/8, height*3/32);
  }
}

void quitButtonExit() {
  if (mouseX > width*6/8 && mouseX < width*1 && mouseY > height*0 && mouseY < height*3/32) { 
    exit();
  }
}

void currentVSForcast() { //will change forcast to current and vise versa
  if (forcastEnable == true) {
    if (forcastChange == true) {
      Text_Setup(Current, selectionText, height, 0, CENTER, CENTER, width*3/8, height*0, width*3/8, height*3/32);
    } else if (forcastChange == false) {
      Text_Setup(Forcast, selectionText, height, 0, CENTER, CENTER, width*3/8, height*0, width*3/8, height*3/32);
    }
  }
}

void changeForcastHighlight() { 
  if (mouseX > width*3/8 && mouseX < width*6/8 && mouseY > height*0 && mouseY < height*3/32) {
    if (forcastEnable == true) {
      fill(highlight);
      rect(width*3/8, height*0, width*3/8, height*3/32);
    }
  }
}

void changeForcast() {
  if (mouseX > width*3/8 && mouseX < width*6/8 && mouseY > height*0 && mouseY < height*3/32) {
    if (forcastEnable == true) {
      if (forcastChange == true) {
        forcastChange = false;
      } else if (forcastChange == false) {
        forcastChange = true;
      }
    }
  }
}

void arrowBlock() { //Arrows/page turn
  if (pageChange == 1) {
    stroke(stopRed);
    strokeWeight(4);
    noFill();
    ellipse(width*9/50, height*40/600, width*50/500, width*50/500);
    line(width*70/500, height*20/600, width*110/500, height*60/600);
  }
  if (pageChange == 3) {
    stroke(stopRed);
    strokeWeight(4);
    noFill();
    ellipse(width*90/500, height*565/600, width*50/500, width*50/500);
    line(width*70/500, height*545/600, width*108/500, height*586/600);
  }
}

void pageTurn() {
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*7/8 && mouseY < height*1 && pageChange < 3) {
    if (pageChange != 2);
    pageChange = pageChange + 1;
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*0 && mouseY < height*1/8 && pageChange < 4) {
    if (pageChange != 1) {
      pageChange = pageChange - 1;
    }
  }
}
