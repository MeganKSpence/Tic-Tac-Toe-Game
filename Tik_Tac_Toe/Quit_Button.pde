color white = #FFFFFF;
color white2 = #989898;
color regularButton = white;
color hoverOverButton = white2;

void Quit_Button() { 

  Fonts();
  //println ("Mousex:", mouseX, "\tMouseY:", mouseY);

  if (mouseX>width*0 && mouseX<width*2/5 && mouseY>height*5/12 && mouseY<height*6/12) { //Hover Over
    fill(hoverOverButton);
    rect(width*0, height*5/12, width*2/5, height*1/12);
  } else {
    fill(regularButton);
    rect(width*0, height*5/12, width*2/5, height*1/12);
  }
  Text_Setup(exitButton, levelFont, height, 0, CENTER, CENTER, width*0, height*5/12, titleWidth, titleHeight);
}

void exitButtonMouseClicked () {
  if (mouseX>width*0 && mouseX<width*2/5 && mouseY>height*5/12 && mouseY<height*6/12) {
    exit();
  }
} 
