//Global Variables


void displayChecker() {
  if (width > height) {
    exit();
    println("This program cannot run in landscape mode. Please resize to portrait and try again.");
  } else if (width == height) {
    exit();
    println("This program cannot run in square mode. Please resize to portrait and try again.");
  } else if (width < height) {
    println("running program.");
  }
}
