//global variables and objects
Ball myBall, movedBall; // Both 1/2's of constructor
Ball[] fireworks = new Ball[25];
Paddle pongTable, myPaddle, yourPaddle;
//
color pongTableColour = #171CFA; //ERROR: move to table CLASS, 255 is full Blue
boolean speedActive = true;
boolean explosion = true;
float gravity=0.5;
int playerOneScore=0, playerTwoScore=0;
int opponentSelect;
//
void setup() {
  //size(700, 400); //fullscreen(); displayWidth; displayHeight
  fullScreen();
  //ScreenSizeChecker for landscape, portrait, square views
  //Updated automatically for screen rotation on android
  // Population
  starsSetup();
  textSetup();
  myBall = new Ball();
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball( width*-1, height*-1, 0.5 );
  }
  movedBall = new Ball(width*-1, height*-1, myBall.diameter, myBall.colour, myBall.xSpeed, myBall.ySpeed);
  //error: paddle constructor for table does not populate paddle variables before paddles, paddle variables fail due to NULL
  //pongTable = new Paddle(); //rect(), drawn here
  myPaddle = new Paddle( 0, myBall.diameter );
  yourPaddle = new Paddle( width, myBall.diameter);
  //
} //end setup
//
void draw() { 
  //background(pongTableColour); //Night mode is known in CLASS, not DRIVER
  starsDraw();
  //
  //Arithmetic for paddles
  //paddles drawn before ball
  myPaddle.table();
  myPaddle.buttons();
  myPaddle.draw();
  yourPaddle.draw();
  //
  if ( myBall.disappear == true ) {
    //EMPTY IF
    //myBall.step(); //Keeps active the variables but not .draw
  } else {
    myBall.draw();
  }
  //
  myBall.bounce(myPaddle.tableY, myPaddle.tableBottom);
  movedBall.bounce(myPaddle.tableY, myPaddle.tableBottom);
  myBall.explosionTrigger();
  //
  //myBall.tableYUpdate(myPaddle.tableX, myPaddle.tableY, myPaddle.tableWidth, myPaddle.tableHeight, myPaddle.paddleX, yourPaddle.paddleX, myPaddle.paddleY, yourPaddle.paddleY, myPaddle.paddleWidth, myPaddle.paddleHeight, yourPaddle.paddleHeight);
  //movedBall.tableYUpdate(myPaddle.tableX, myPaddle.tableY, myPaddle.tableWidth, myPaddle.tableHeight, myPaddle.paddleX, yourPaddle.paddleX, myPaddle.paddleY, yourPaddle.paddleY, myPaddle.paddleWidth, myPaddle.paddleHeight, yourPaddle.paddleHeight);
  //Trigger: left goal, right goal
  //ERROR: ball instance still bounces
  /*
if ((myBall.x < (2*myBall.diameter) || myBall.x > ( width-(2*myBall.diameter)) || movedBall.x < (2*movedBall.diameter) || movedBall.x > ( width-(2*movedBall.diameter)))) {
    if (explosion==true) {
    if (myBall.x < (2*myBall.diameter) || myBall.x > ( width-(2*myBall.diameter)) ) netExplosion(myBall.x, myBall.y);
    if (movedBall.x < (2*movedBall.diameter) || movedBall.x > ( width-(2*movedBall.diameter)) ) netExplosion(movedBall.x, movedBall.y);
    if (myBall.x < (2*myBall.diameter) || movedBall.x < (2*myBall.diameter)) playerTwoScore++;
    if (myBall.x > ( width-(2*myBall.diameter)) || movedBall.x > ( width-(2*movedBall.diameter))) playerOneScore++;
    }
    explosion=false;
  } //Goal, firework constructor execution, based on x-value
  else 
  {
  explosion=true;
  }*/
  //
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
  }
  movedBall.draw();
  //
  //textDraw
  textDraw(black, CENTER, TOP, font, "QUIT", width*9/10-width/6, height*59/60-height/15, width/6, height/15);
  textDraw(black, CENTER, TOP, font, String.valueOf(playerOneScore), width/4, height/60, width/12, height/15);
  textDraw(black, CENTER, TOP, font, String.valueOf(playerTwoScore), width*3/4-width/12, height/60, width/12, height/15);
  textDraw(black, CENTER, CENTER, boldFont, "PONG", width*2.5/6, height/60, width/6, height/15);
  textDraw(black, CENTER, TOP, font, "Player 1", width/15, height/60, width/6, height/15);
  textDraw(black, CENTER, TOP, font, "Player 2", width*14/15-width/6, height/60, width/6, height/15);
  textDraw(black, CENTER, TOP, font, "RESET", width*4.5/10, height*59/60-height/15, width/10, height/15);
  //
  if (opponentSelect < 3) {
  }
  //
} //end draw
//
void keyPressed() {
  if (key=='o' || key=='O') {
    if (speedActive == true) {
    myBall.xSpeed*=1.25;
    myBall.ySpeed*=1.25;
    speedActive=false;
    }
  } 
  if (key=='a' || key=='A') {
    if (speedActive == true) {
    myBall.xSpeed*=1.25;
    myBall.ySpeed*=1.25;
    speedActive=false;
    }
  } 
  //
  myPaddle.keyPressedWS();
  yourPaddle.keyPressedIK();
} //end keyPressed
//
void keyReleased() {
  if (key=='o' || key=='O') {
    if (speedActive == false) {
  myBall.xSpeed/=1.25;
  myBall.ySpeed/=1.25;
  speedActive=true;
    }
  }
  if (key=='a' || key=='A') {
    if (speedActive == false) {
  myBall.xSpeed/=1.25;
  myBall.ySpeed/=1.25;
  speedActive=true;
    }
  }
  //
  myPaddle.keyReleasedWS();
  yourPaddle.keyReleasedIK();
} //end KeyReleased
void mousePressed() {
  starsMousePressed();
  if (mouseY > myPaddle.tableY && mouseY < (myPaddle.tableY+myPaddle.tableHeight)) {
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(-300, 900, 0.5);
  }
  myBall = new Ball(mouseX, mouseY, myBall.diameter, myBall.colour, myBall.xSpeed, myBall.ySpeed);
  }
  //
  //button clicking
  if (mouseX >= (width*9/10-width/6) && mouseX <= (width*9/10) && mouseY >= (height*59/60-height/15) && mouseY <= height*59/60) System. exit(0); //quit
  if (mouseX >= (width*4.5/10) && mouseX <= (width*4.5/10+width/10) && mouseY >= (height*59/60-height/15) && mouseY <= height*59/60) { //Reset
    myBall = new Ball(width/2, height/2, myBall.diameter, myBall.colour, myBall.xSpeed, myBall.ySpeed);
    playerTwoScore = 0;
    playerOneScore = 0;
  }
  if (mouseX >= (width*9/10-width/6) && mouseX <= (width*9/10) && mouseY >= (height*59/60-height/15) && mouseY <= height*59/60) { //Opponent selector
    opponentSelect++;
  }
} //end mousePressed
//
void ballCollisions() {
  //change code to instances
  //if ( x < 0+(diameter*1/2) || x > width-(diameter*1/2) ) xSpeed *= xDirection; //Repetition is *-1
  //if ( y < 0+(diameter*1/2) || y > height-(diameter*1/2)) ySpeed *= yDirection; //Repetition is *-1
}//End ball collisions
//End DRIVER
