void Text_Setup() {
  title="1234567890";
  titleWidth = width*1/2;
  titleHeight = height*1/10;
  titleFontSize = height; 
  //String[] fontList = PFont.list(); //Lists all fonts available on system // should only need to be activated temporarily 
  titleFontString = "Harrington";
  titleFontDecrease = 1;  //67%, 200|300; 57%, 200|200; 18%
  
  //printArray(fontList); //Lists all possible fonts to choose, then createFont
  titleFont = createFont ("Harrington", height); //Must also /create Font/ find Font/ NEVER!!!!!!!!! press ok DONT YOU DARE TOUCH IT, WILL BREAK INTERNET AROUND THE WORLD but it is tempting...*clicks on "OK"
  
}

void text_Draw() {
  fill(#0AAA23); //black ink, uses RGB colors
  textAlign (CENTER, CENTER); //Align X&Y
  // values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  
  //Reference to Text Calculator
  titleFontSize = textCalculator(titleFontSize, title, titleWidth);
  
  textFont(titleFont, titleFontSize); //change the number until it fits
  text(title, width*1/4, height*0, titleWidth, titleHeight);
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
