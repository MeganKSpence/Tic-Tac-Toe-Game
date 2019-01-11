//Global Variables
color backgroundBlue = #7CDBFF; //Used in gradient
color white = #FFFFFF;

void setGradient(int x, int y, float w, float h, color c1, color c2) { //Draws Gradient Background
  noFill();
  for (int i = y; i <= y+h; i++) {
    float inter = map(i, y, y+h, 0, 1);
    color c = lerpColor(c1, c2, inter);
    stroke(c);
    line(x, i, x+w, i);
  }
}

void GUI_Setup() {
  //City selection lines
  stroke(0);
  strokeWeight(2);
  line(width*3/8, height*0, width*3/8, height*1);
  line(width*0, height*1/8, width*3/8, height*1/8);
  line(width*0, height*1/4, width*3/8, height*1/4);
  line(width*0, height*3/8, width*3/8, height*3/8);
  line(width*0, height*1/2, width*3/8, height*1/2);
  line(width*0, height*5/8, width*3/8, height*5/8);
  line(width*0, height*3/4, width*3/8, height*3/4);
  line(width*0, height*7/8, width*3/8, height*7/8);
  
  //Selection Triangles
  fill(0);
  triangle(55, 51, 92, 20, 130, 51);
  triangle(55, 549, 92, 585, 130, 549);
}
