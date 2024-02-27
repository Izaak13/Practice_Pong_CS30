//global variables
int NumberOfStars=300;
Star[] stars = new Star[NumberOfStars];

void starsSetup() {
  createStars();
}//end setup
//
void starsDraw() {
  background(#000000);
  for (int i=0; i<stars.length; i++) {
    stars[i].draw();
  }
}
//
void starsMousePressed() {
  createStars();
}//end mousePressed
