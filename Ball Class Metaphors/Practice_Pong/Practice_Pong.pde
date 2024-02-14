//global variables and objects
Ball myBall; // Both 1/2's of constructor
Ball[] fireworks = new Ball[25];
//
color pongTableColour = 255; //ERROR: move to table CLASS, 255 is full Blue
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
  background(pongTableColour); //Night mode is known in CLASS, not DRIVER
  myBall.draw();
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
  }
  println(myBall.xSpeed, myBall.ySpeed);
} //end draw
//
void keyPressed() {} //end keyPressed
//
void mousePressed() {
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(0.5);
  }
} //end mousePressed
//
void ballCollisions() {
  //change code to instances
  //if ( x < 0+(diameter*1/2) || x > width-(diameter*1/2) ) xSpeed *= xDirection; //Repetition is *-1
  //if ( y < 0+(diameter*1/2) || y > height-(diameter*1/2)) ySpeed *= yDirection; //Repetition is *-1
}//End ball collisions
//End DRIVER
