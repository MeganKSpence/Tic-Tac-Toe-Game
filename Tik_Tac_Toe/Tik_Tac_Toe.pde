// Main divisions
void setup () { 
  //blank page setup
  //size(600, 400);
  fullScreen();
  background(255);
  
  //calling other "voids" from other pages
   GUI_Design();
   Fonts();
   Text_Setup(easy, );
  
  for(int i=0; i < noDraw.length; i++) {
    noDraw[i] = false;
  } 
}

void draw () {
  Quit_Button();
  textDraw();
 }
 
 
void mouseClicked (){
   exitButtonMouseClicked();
   xoButtonDraw();
   println(" Position:", position, "Count:", count);
   /*for (int i = 0; i < noDraw.length; i++) {
     print(" noDraw " + str(i) + ": " + str(noDraw[i])); 
   } */
 }
 

 
 
