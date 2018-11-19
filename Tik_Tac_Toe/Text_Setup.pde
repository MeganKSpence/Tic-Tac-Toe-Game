void Text_Setup(){
  //Easy Button Text
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(easy, width*0, height*0, width*2/5, height*1/12); // 1st width and height are where you want it to start while 2nd width and height is how long you want it to go on fo
  fill(255);
  //Medium Button Text
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(medium, width*0, height*1/12, width*2/5, height*1/12);
  fill(255);
  //Hard Button Text
  fill(0);
  textAlign (CENTER, CENTER);
  textFont(levelFont, 54);
  text(hard, width*0, height*2/12, width*2/5, height*1/12);
  fill(255); //Reset to white for the rest of the program
  line(width*0, height*3/12, width*2/5, height*3/12);
  //Start Button Text
  fill(0);
  textFont(levelFont, 54);
  text(start, width*0, height*3/12, width*2/5, height*1/12);
  fill(255);
  //X Scoreboard Text
  fill(0);
  textFont(playerFont, 100);
  text(player1, width*0, height*6/12, width*2/10, height*3/12);
  fill(255);
  //O Scoreboard Text
  fill(0);
  textFont(playerFont, 100);
  text(player2, width*0, height*9/12, width*2/10, height*3/12);
  fill(255);
}

void Reset_Text() {
  fill(0);
  textAlign (CENTER, CENTER);
  //textFont(levelFont, 54);
  text(restart, width*0, height*4/12, width*2/5, height*1/12);
  fill(255);
}
