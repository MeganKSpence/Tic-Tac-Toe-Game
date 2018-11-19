//Global Variables
String title;
PFont titleFont; //variable to hold the font type
float titleWidth;
float titleHeight;
float titleFontSize; 
//String[] fontList = PFont.list(); //Lists all fonts available on system // should only need to be activated temporarily 
String titleFontString;
float titleFontDecrease;   
float i = 1; 
float footerHeight; 

void setup() {
  //fullScreen(); 
  size(600, 600);
  //Global Variables
  Text_Setup();
  
  println("start console");

  //GUI Rectangle setup, in void setup because we only want it to be displayed once
  GUI_Setup();
}

void draw() {
  text_Draw(); //Title
  //text_Draw(); //Footer
}


/*if (titleFontString == "Harrington") {
  titleFontSize = titleFontSize * titleFontDecrease;
} */
