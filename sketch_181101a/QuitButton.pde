// Global Variables
color white = #FFFFFF;
color yellow = #FFF703;
color regularButton = white;
color hoverOverButton = yellow;

//Listener
void mouseClicked () {
  if (mouseX>width*2/3 && mouseX<width && mouseY>0 && mouseY<height*1/12) {
    exit();
  }
} //End mouseClicked
