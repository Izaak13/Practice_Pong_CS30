//global variables and objects
Ball myBall; // Both 1/2's of constructor
//
void setup() {
  size(600, 400); //fullscreen(); displayWidth; displayHeight
  //ScreenSizeChecker for landscape, portrait, square views
  //Updated automatically for screen rotation on android
  // Population
  myBall = new Ball();
  // yourBall = new Ball();
} //end setup
//
void draw() {
  myBall.draw();
} //end draw
//
void keyPressed() {} //end keyPressed
//
void mousePressed() {} //end mousePressed
//
//End DRIVER
