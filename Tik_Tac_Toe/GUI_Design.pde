void GUI_Design() {
  //basic parameters
  line(width*2/5, 0, width*2/5, height);
  line(width*7/10, 0, width*7/10, height*1/4);
  line(width*3/5, height*1/4, width*3/5, height*4/4);
  line(width*4/5, height*1/4, width*4/5, height*4/4);
  line(0, height*1/4, width, height*1/4);
  line(width*2/5, height*2/4, width, height*2/4);
  line(width*0, height*3/4, width, height*3/4);
  
  //easy, medium, and hard button lines
  line(0, height*1/12, width*2/5, height*1/12);
  line(0, height*2/12, width*2/5, height*2/12);
  fill(0); //Ink, hexidecimal (RGB) copied from color selector
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(easy, width*0, height*0, width*2/5, height*1/12); // 1st width and height are where you want it to start while 2nd width and height is how long you want it to go on fo
  fill(255);
  
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(medium, width*0, height*1/12, width*2/5, height*1/12);
  fill(255);
  
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(hard, width*0, height*2/12, width*2/5, height*1/12);
  fill(255); //Reset to white for the rest of the program
  
  //start, exit and restart button lines
  line(width*0, height*4/12, width*2/5, height*4/12);
  line(width*0, height*5/12, width*2/5, height*5/12);
  line(width*0, height*6/12, width*2/5, height*6/12);
  
  // Will create X scoreboard
  fill(0);
  textFont(playerFont, 100);
  text(player1, width*0, height*6/12, width*2/10, height*3/12);
  fill(255);
  
  // Will create O scoreboard
  fill(0);
  textFont(playerFont, 100);
  text(player2, width*0, height*9/12, width*2/10, height*3/12);
  fill(255);
  
  /*//boxes // need Mercer to see if he can fix these or find a way to not need rectangles //update :supposedly fixed itself???
  rect(width*1/24, height*7/24, width*6/24, height*4/24);
  rect(width*1/24, height*13/24, width*6/24, height*4/24);
  rect(width*1/24, height*19/24, width*6/24, height*4/24);
  rect(width*9/24, height*7/24, width*6/24, height*4/24);
  rect(width*9/24, height*13/24, width*6/24, height*4/24);
  rect(width*9/24, height*19/24, width*6/24, height*4/24);
  rect(width*17/24, height*7/24, width*6/24, height*4/24);
  rect(width*17/24, height*13/24, width*6/24, height*4/24);
  rect(width*17/24, height*19/24, width*6/24, height*4/24); */
}
