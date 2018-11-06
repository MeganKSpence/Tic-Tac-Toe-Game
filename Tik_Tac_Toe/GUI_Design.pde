void GUI_Design() {
  //basic parameters
  line(width*1/3, 0, width*1/3, height);
  line(width*2/3, 0, width*2/3, height);
  line(0, height*1/4, width, height*1/4);
  line(0, height*2/4, width, height*2/4);
  line(0, height*3/4, width, height*3/4);
  
  //easy, medium, and hard button lines
  line(0, height*1/12, width*1/3, height*1/12);
  line(0, height*2/12, width*1/3, height*2/12);
  fill(0); //Ink, hexidecimal (RGB) copied from color selector
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(easy, width*0, height*0, width*1/3, height*1/12); // 1st width and height are where you want it to start while 2nd width and height is how long you want it to go on fo
  fill(255);
  
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(medium, width*0, height*1/12, width*1/3, height*1/12);
  fill(255);
  
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(hard, width*0, height*2/12, width*1/3, height*1/12);
  fill(255); //Reset to white for the rest of the program
  
  //start, exit and restart button lines
  line(width*2/3, height*1/12, width*3/3, height*1/12);
  line(width*2/3, height*2/12, width*3/3, height*2/12);
  line(width*2/3, height*3/12, width*3/3, height*3/12);
  
  //boxes // need Mercer to see if he can fix these or find a way to not need rectangles //update :supposedly fixed itself???
  rect(width*1/24, height*7/24, width*6/24, height*4/24);
  rect(width*1/24, height*13/24, width*6/24, height*4/24);
  rect(width*1/24, height*19/24, width*6/24, height*4/24);
  rect(width*9/24, height*7/24, width*6/24, height*4/24);
  rect(width*9/24, height*13/24, width*6/24, height*4/24);
  rect(width*9/24, height*19/24, width*6/24, height*4/24);
  rect(width*17/24, height*7/24, width*6/24, height*4/24);
  rect(width*17/24, height*13/24, width*6/24, height*4/24);
  rect(width*17/24, height*19/24, width*6/24, height*4/24); 
}
