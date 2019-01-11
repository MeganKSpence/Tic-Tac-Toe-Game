//Global Variables
color backgroundBlue = #7CDBFF; //Used in gradient
color white = #FFFFFF;
color highlight = #B5E1F2;
color stopRed = #F01124;

int pageChange = 1;

boolean forcastEnable = false;

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
  triangle(55, 51, 92, 20, 130, 51);
  triangle(55, 549, 92, 585, 130, 549);
  
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

void currentVSForcast() {
  if (forcastEnable == true) {
    
  } else if (forcastEnable == false) {
    stroke(stopRed);
    strokeWeight(4);
    noFill();
    ellipse(width*23/40, height*1/21, width*2/20, width*2/20);
    line(width*21/40, height*1/40, width*25/40, height*3/40);
  }
}

void arrowBlock() { //Arrows/page turn
  if (pageChange == 1) {
    stroke(stopRed);
    strokeWeight(4);
    noFill();
    ellipse(90, 40, 50, 50);
    line(70, 20, 110, 60);
  }
  if (pageChange == 3) {
    stroke(stopRed);
    strokeWeight(4);
    noFill();
    ellipse(90, 565, 50, 50);
    line(70, 545, 112, 580);
  }
}

void pageTurn() {
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*7/8 && mouseY < height*1 && pageChange < 3) {
    if (pageChange != 2);
    pageChange = pageChange + 1;
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*0 && mouseY < height*1/8 && pageChange < 4) {
    if (pageChange != 1){
    pageChange = pageChange - 1;
    println("hey");
    }
  }
}
