void setup() {
  //fullScreen(); 
  size(600, 600);
  //Global Variables
  Text_Setup();
  
  println("start console");

  //GUI Rectangle setup, in void setup because we only want it to be displayed once
  GUI_Setup();
  text_Draw(title, titleFont, height, #0AAA23, CENTER, CENTER, width*1/4, height*0, titleWidth, titleHeight); //Title
  text_Draw(footer, titleFont, height, #0AAA23, CENTER, CENTER, width*1/4, height*9/10, titleWidth, titleHeight); //Footer
  text_Draw(Assignment1, titleFont, height, #0AAA23, CENTER, CENTER, width*0/4, height*3/10, titleWidth, titleHeight);
  text_Draw(Assignment2, titleFont, height, #0AAA23, CENTER, CENTER, width*2/4, height*7/10, titleWidth, titleHeight); 
  text_Draw(Assignment3, titleFont, height, #0AAA23, CENTER, CENTER, width*1/4, height*5/10, titleWidth, titleHeight); 
}

void draw() {
}

/*if (titleFontString == "Harrington") {
  titleFontSize = titleFontSize * titleFontDecrease;
} */
