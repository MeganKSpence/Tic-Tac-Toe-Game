color purple= #EA0EE7, pink= #FFB7E2, blue= #86DEFF, white = #FFFFFF; 


void origionalPieces() {
  circleDiameter = width*1/8;
  background(white);
  fill(purple);
  ellipse(width*1/4, height*3/4, circleDiameter, circleDiameter); // Circle #1
  fill(pink);
  ellipse(width*3/4, height*3/4, circleDiameter, circleDiameter);// Circle #2
  fill(blue);
  rect(width*1/8, height*1/8, circleDiameter*2, circleDiameter*2); // Target Area #1
  rect(width*5/8, height*1/8, circleDiameter*2, circleDiameter*2);// Target Area #2
  fill(white);
}
