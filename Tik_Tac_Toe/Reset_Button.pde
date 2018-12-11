void resetButtonColor() { 
  if (winX == true || winO == true || count == 9) {
    fill(white2);
    rect(width*0, height*4/12, width*2/5, height*1/12);
    fill(255);
    Text_Setup(restart, levelFont, height, 0, CENTER, CENTER, width*0, height*4/12, titleWidth, titleHeight);
  } else {
  }
}
