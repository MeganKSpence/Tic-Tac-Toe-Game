//Global Variables
int drawData = 0; 

void drawingDataHighlight() {
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*1/8 && mouseY < height*2/8) {
    fill(highlight);
    rect(width*0, height*1/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*2/8 && mouseY < height*3/8) {
    fill(highlight);
    rect(width*0, height*2/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*3/8 && mouseY < height*4/8) {
    fill(highlight);
    rect(width*0, height*3/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*4/8 && mouseY < height*5/8) {
    fill(highlight);
    rect(width*0, height*4/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*5/8 && mouseY < height*6/8) {
    fill(highlight);
    rect(width*0, height*5/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
  if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*6/8 && mouseY < height*7/8) {
    fill(highlight);
    rect(width*0, height*6/8, width*3/8, height*1/8);
  } else { 
    noFill();
  }
}

void mouseClickedData() {
  if (pageChange == 1) {
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*1/8 && mouseY < height*2/8) {
      drawData = 1;
      forcastEnable = true; 
    } 
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*2/8 && mouseY < height*3/8) {
      drawData = 2;
    } 
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*3/8 && mouseY < height*4/8) {
      drawData = 3;
    } 
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*4/8 && mouseY < height*5/8) {
      drawData = 4;
    } 
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*5/8 && mouseY < height*6/8) {
      drawData = 5;
    } 
    if (mouseX > width*0 && mouseX < width*3/8 && mouseY > height*6/8 && mouseY < height*7/8) {
      drawData = 6;
    }
  }
}

void drawingData() {
  unwrappingData();
  println(tempED);
  println(tempEdmonton);
  if (pageChange == 1) {
    if (drawData == 1) {
      fill(highlight);
      rect(width*0, height*1/8, width*3/8, height*1/8);
      Text_Setup(tempED, selectionText, height, 0, CENTER, CENTER, width*0, height*0, width*1/2, height*1/2);
    } 
    if (drawData == 2) {
      fill(highlight);
      rect(width*0, height*2/8, width*3/8, height*1/8);
    }
    if (drawData == 3) {
      fill(highlight);
      rect(width*0, height*3/8, width*3/8, height*1/8);
    }
    if (drawData == 4) {
      fill(highlight);
      rect(width*0, height*4/8, width*3/8, height*1/8);
    }
    if (drawData == 5) {
      fill(highlight);
      rect(width*0, height*5/8, width*3/8, height*1/8);
    }
    if (drawData == 6) {
      fill(highlight);
      rect(width*0, height*6/8, width*3/8, height*1/8);
    }
  }
}
