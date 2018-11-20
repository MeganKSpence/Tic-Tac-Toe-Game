void GUI_Design() {
  //basic parameters
  line(width*2/5, 0, width*2/5, height);
  line(width*3/5, height*0, width*3/5, height*4/4);
  line(width*4/5, height*0, width*4/5, height*4/4);
  line(0, height*1/3, width, height*1/3);
  line(width*2/5, height*2/3, width, height*2/3);
  
  //easy, medium, and hard button lines
  line(0, height*1/12, width*2/5, height*1/12);
  line(0, height*2/12, width*2/5, height*2/12);
  line(width*0, height*3/12, width*2/5, height*3/12);
  fill(0); //Ink, hexidecimal (RGB) copied from color selector
  
  //start, exit and restart button lines
  line(width*0, height*4/12, width*2/5, height*4/12);
  line(width*0, height*5/12, width*2/5, height*5/12);
  line(width*0, height*6/12, width*2/5, height*6/12);
  
  // Will create X scoreboard
  fill(#FFFFFF);
  rect(width*2/10, height*13/24, width*3/20, height*1/6);
  
  // Will create O scoreboard
  fill(#FFFFFF);
  rect(width*2/10, height*19/24, width*3/20, height*1/6);
  
  //Chose not to write boxes for game
}
