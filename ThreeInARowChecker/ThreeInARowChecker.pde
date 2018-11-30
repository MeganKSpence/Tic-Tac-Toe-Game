/* Purpose: output is to console win or loss, no visual data
 computer "sees" the board by 3x3 matric, left to right, top to bottom, 1-9
 Null used to represent empty board space
 */

//Global Variables

void setup() {
  //size(400, 600); //Not done, no visual data
  //fullscreen
  gamePieces();
  trigger();
  check3InRow();
}

void draw() { //Empty draw() loop without visual data
  noLoop();
}
