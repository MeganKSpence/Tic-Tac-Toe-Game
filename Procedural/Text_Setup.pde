//Global Variables
String title;
PFont titleFont; //variable to hold the font type
float titleWidth;
float titleHeight;
//float titleFontSize; 
//String[] fontList = PFont.list(); //Lists all fonts available on system // should only need to be activated temporarily 
//String titleFontString;
float titleFontDecrease;   
String footer; 
String Assignment1;
String Assignment2;
String Assignment3; 

void Text_Setup() {
  title="1234567890";
  footer="Bottom";
  Assignment1 = "Assignment 1";
  Assignment2 = "Assignment 2";
  Assignment3 = "Assignment 3";
  titleWidth = width*1/2;
  titleHeight = height*1/10;
  //titleFontSize = height; 
  //String[] fontList = PFont.list(); //Lists all fonts available on system // should only need to be activated temporarily 
  //titleFontString = "Harrington";
  titleFontDecrease = 1;  //67%, 200|300; 57%, 200|200; 18%
  
  //printArray(fontList); //Lists all possible fonts to choose, then createFont
  titleFont = createFont ("Harrington", height); //Must also /create Font/ find Font/ NEVER!!!!!!!!! press ok DONT YOU DARE TOUCH IT, WILL BREAK INTERNET AROUND THE WORLD but it is tempting...*clicks on "OK"
  
  
}

void text_Draw(String string, PFont font, float height, color ink, int alignHorizontal, int alignVertical, float rectX, float rextY, float rectWidth, float rectHeight) {
  float fontSize = height;
  fill(ink); //black ink, uses RGB colors
  textAlign (alignHorizontal, alignVertical); //Align X&Y
  // values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  
  //Reference to Text Calculator
  print( string.length() );
    if (string.length() >= 10) { //Number changes depending on geometry ratio (width/height)
      fontSize = textCalculator(height, string, titleWidth);
    } else {
     // catch for string less than 13 characters
     fontSize = fontSize * 0.08; //change number as needed
  }
  
  textFont(font, fontSize); //change the number until it fits
  text(string, rectX, rextY, rectWidth, rectHeight);
  fill(255); //Reset to white for the rest of the program
  // Minimum number of steps to put text into a box
  
  
}

float textCalculator(float size, String string, float rectWidth ) { //float size lines up with titlefont size on line 22, string string lines up with title on line 22 and so on
  
  float i = 1;
  textSize(size); //for textWidth sizing
  while (textWidth(string) > rectWidth) {
  size = size * i; 
  textSize(size);
  i = i - 0.1;
 // println("i: ", i, "Title Font Size: ", titleFontSize);
 }
//  println("New Font Size", titleFontSize);
  
  return size; //Purpose of calculator
}
