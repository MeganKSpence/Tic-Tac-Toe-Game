//Global Variables

void setup() {
  size(1366, 768);
  println("Monitor Dimensions are : width ", displayWidth, "height ", displayHeight);
  if (width > displayWidth || height > displayHeight) {
    exit();
    println("Canvas is to large. \nChange the size() dimesions");
  } else {
    if (width > height && displayWidth > displayHeight) {
      println("The cavas is landscape");
    } else if (width < height && displayWidth < displayHeight) {
      println("The canvas is portrait");
    } else {
      println("The cavas is square");
    }
  }
}

void draw() {
}

void mouseClicked() {
}
