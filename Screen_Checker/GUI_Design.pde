int circleDiameter;

void GUI_Design() {
  circleDiameter = width*1/8;
  //Circle #1
  ellipse(width*1/4, height*3/4, circleDiameter, circleDiameter);
  //Circle #2
  ellipse(width*3/4, height*3/4, circleDiameter, circleDiameter);
  //Target Area #1
  rect(width*1/8, height*1/8, circleDiameter, circleDiameter);
  //Traget Area #2
  rect(width*5/8, height*5/8, circleDiameter, circleDiameter); 
}
