//global variables and objects
Ball myBall; // Both 1/2's of constructor
Ball yourBall;
//
color pongTableColour = 255; //ERROR: move to table CLASS, 255 is full Blue
//
void setup() {
  size(600, 400); //fullscreen(); displayWidth; displayHeight
  //ScreenSizeChecker for landscape, portrait, square views
  //Updated automatically for screen rotation on android
  // Population
  myBall = new Ball();
  yourBall = new Ball();
  // yourBall = new Ball();
} //end setup
//
void draw() { 
  background(pongTableColour); //Night mode is known in CLASS, not DRIVER
  myBall.draw();
  yourBall.draw();
  println(myBall.xSpeed, myBall.ySpeed);
  println(yourBall.xSpeed, yourBall.ySpeed);
} //end draw
//
void keyPressed() {} //end keyPressed
//
void mousePressed() {} //end mousePressed
//
void ballCollisions() {
  //change code to instances
  //if ( x < 0+(diameter*1/2) || x > width-(diameter*1/2) ) xSpeed *= xDirection; //Repetition is *-1
  //if ( y < 0+(diameter*1/2) || y > height-(diameter*1/2)) ySpeed *= yDirection; //Repetition is *-1
}//End ball collisions
//End DRIVER
