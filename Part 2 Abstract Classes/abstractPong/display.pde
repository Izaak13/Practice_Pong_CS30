int appWidth, appHeight;
Boolean displayCheck = false;
PImage error;
//
void display() {
  //Display orientation: landscape, not portrait nor square (sort of)
  println(width, height, displayWidth, displayHeight);
  appWidth = width; //Best practice: do not manipulate key variables
  appHeight = height;
  error = loadImage("../abstractPongImages/error.png");
  displayCheck = ( appWidth >= appHeight ) ? false : true;
}//end display methods
//
void displayLandscape() { //display error check in draw()
  println("CAR!");
  image( error, 0, 0, appWidth, appHeight);
  //Add text, images, sounds etc. to the canvas telling gamer, not dev
  //Add MINIM library for sounds or song
  //text is mandatory for scoreboard & personalization (consider it here)
}//end displaylandscape ERROR check
