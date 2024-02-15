//global variables and objects
Ball myBall; // Both 1/2's of constructor
Ball[] fireworks = new Ball[25];
Ball movedBall;
//
color pongTableColour = #171CFA; //ERROR: move to table CLASS, 255 is full Blue
//
void setup() {
  size(600, 400); //fullscreen(); displayWidth; displayHeight
  //ScreenSizeChecker for landscape, portrait, square views
  //Updated automatically for screen rotation on android
  // Population
  myBall = new Ball();
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball( width*-1, height*-1, 0.5 );
  }
  movedBall = new Ball(width*-1, height*-1);
  //
} //end setup
//
void draw() { 
  background(pongTableColour); //Night mode is known in CLASS, not DRIVER
  myBall.draw();
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
  }
  println(fireworks[0].y);
  movedBall.draw();
} //end draw
//
void keyPressed() {} //end keyPressed
//
void mousePressed() {
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(mouseX, mouseY, 0.5);
  }
  movedBall = new Ball(mouseX, mouseY, myBall.diameter, myBall.colour);
} //end mousePressed
//
void ballCollisions() {
  //change code to instances
  //if ( x < 0+(diameter*1/2) || x > width-(diameter*1/2) ) xSpeed *= xDirection; //Repetition is *-1
  //if ( y < 0+(diameter*1/2) || y > height-(diameter*1/2)) ySpeed *= yDirection; //Repetition is *-1
}//End ball collisions
//End DRIVER
