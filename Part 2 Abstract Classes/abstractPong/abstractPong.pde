//Global varaibles
//
void setup() {
  size(400, 600); //landscape orientation
  //fullScreen();
  display();
}//end setup
//
void draw() {
  //ERROR check of display: landscape only
  if (displayCheck == true) displayLandscape(); //turn your phone
  //
}//end draw
//
void mousePressed() {}//end mousePressed
//
void keyPressed() {}//end key pressed
//
//end Driver
