//main divisions
void setup () { 
  //fullScreen()
  size(600,400);
  textSize(60);
}
void draw () {
line(width*1/3, 0, width*1/3, height);
line(0, height*1/12, width*1/3, height*1/12);
line(0, height*2/12, width*1/3, height*2/12);
line(width*2/3, 0, width*2/3, height);
line(0, height*1/4, width, height*1/4);
line(0, height*2/4, width, height*2/4);
line(0, height*3/4, width, height*3/4); 
rect(width*1/24, height*7/24, width*6/24, height*4/24);
rect(width*1/24, height*13/24, width*6/24, height*4/24);
rect(width*1/24, height*19/24, width*6/24, height*4/24);
rect(width*9/24, height*7/24, width*6/24, height*4/24);
rect(width*9/24, height*13/24, width*6/24, height*4/24);
rect(width*9/24, height*19/24, width*6/24, height*4/24);
rect(width*17/24, height*7/24, width*6/24, height*4/24);
rect(width*17/24, height*13/24, width*6/24, height*4/24);
rect(width*17/24, height*19/24, width*6/24, height*4/24);

 if ((keyPressed == true) && (key == '7')) {
    line(width*1/24, height*7/24, width*7/24, height*11/24);
 //   line(width*7/24, height*11/24, width*1/24, height*7/24);
  } else { // Otherwise, draw an ellipse
    
  }
}
