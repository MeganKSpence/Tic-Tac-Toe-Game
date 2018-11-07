color white = #FFFFFF;
color white2 = #989898;
color regularButton = white;
color hoverOverButton = white2;

void Quit_Button() {
  
  println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  
  if (mouseX>width*0 && mouseX<width*2/5 && mouseY>height*5/12 && mouseY<height*6/12) { //Hover Over
    fill(hoverOverButton);
    rect(width*0, height*5/12, width*2/5, height*1/12);
  } else {
    fill(regularButton);
    rect(width*0, height*5/12, width*2/5, height*1/12);
  }
    //add text to button
    fill(0); //Ink, hexidecimal (RGB) copied from color selector
    textAlign (CENTER, CENTER);
    textFont(levelFont, 54);
    text(exitButton, width*0, height*5/12, width*2/5, height*1/12); // 1st width and height are where you want it to start while 2nd width and height is how long you want it to go on fo
    fill(255);
}

void mouseClicked () {
  if (mouseX>width*0 && mouseX<width*2/5 && mouseY>height*5/12 && mouseY<height*6/12) {
    exit();
  }
} 
