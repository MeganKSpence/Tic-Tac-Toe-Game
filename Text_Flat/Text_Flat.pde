//fullScreen(); 
size(100, 100);
String title="PLZ Work";
PFont titleFont; //variable to hold the font type
float titleWidth = width*1/2;
float titleHeight = height*1/10;
float titleFontSize = height; 
String[] fontList = PFont.list(); //Lists all fonts available on system
println("start console");
printArray(fontList); //Lists all possible fonts to choose, then createFont
titleFont = createFont ("Harrington", height); //Must also /create Font/ find Font/ NEVER!!!!!!!!! press ok DONT YOU DARE TOUCH IT, WILL BREAK INTERNET AROUND THE WORLD but it is tempting...*clicks on "OK"
String titleFontString = "Harrington";
float titleFontDecrease = 1; //  

float i = 1; 
rect(width*1/4, height*0, titleWidth, height*1/10);
fill(#0AAA23); //black ink, uses RGB colors
textAlign (CENTER, CENTER); //Align X&Y
// values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
textFont(titleFont, titleFontSize); //change the number until it fits
while (textWidth(title) > titleWidth) {
  titleFontSize = titleFontSize * i; 
  textSize(titleFontSize);
  i = i - 0.1;
  println("i: ", i, "Title Font Size: ", titleFontSize);
}
if (titleFontString == "Harrington") {
  titleFontSize = titleFontSize * titleFontDecrease;
}
text(title, width*1/4, height*0, width*1/2, height*1/10);
fill(255); //Reset to white for the rest of the program
// Minimum number of steps to put text into a box

/*rect(width*1/4, height*0, width*1/2, height*1/10);
fill (#0AAA23);
textAlign (CENTER, CENTER);
textSize(height*1/10); //value from rectangle
float textLength = width*1/2; 
for (float i=i; textWidth(title)>width*1/2; i=i-0.01) {
  textSize (textLength);
  println ("for" + textLength);
} //resizing algorithm
textFont(titleFont, 60); //change the number until it fits
text(title, width*1/4, height*0, width*1/2, height*1/10);
fill(255); */
