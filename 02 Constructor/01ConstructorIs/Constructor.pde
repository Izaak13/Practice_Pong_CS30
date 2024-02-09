//global variables
//
void setup() {
  size(600, 400); //fullscreen(); displayWidth; displayHeight
  //ScreenSizeChecker for landscape, portrait, square views
  //Updated automatically for screen rotation on android
  // An object is... see the CLASS
  Ball myBall = new Ball(); // Line = 1/2 of constructor
  int startX = width*1/2;
  int startY = height*1/2;
  int referentMeasure = ( width<height) ? width : height ; //review ternary operator
  //Population of object's varibles = other 1/2 of constructor
  myBall.x = startX; //span myBall in middle of display
  myBall.y = startY; 
  myBall.diameter = referentMeasure*1/20;
  myBall.colour = color ( random(255), random(255), random(255)) ; //random(), shortcut, casting from float to intin color var
  //code that uses object variables
  fill(myBall.colour); //caution: must reset defaults
  ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter); //ball
  fill(0); //Reset to grayscale; 0 to 255 in shades of gray
  //What if?
  //Ball yourBall = new Ball();
  //yourBall.x =
} //end setup
//
void draw() {
  //Empty Loop
} //end draw
//
void keyPressed() {} //end keyPressed
//
void mousePressed() {} //end mousePressed
//
//End DRIVER
