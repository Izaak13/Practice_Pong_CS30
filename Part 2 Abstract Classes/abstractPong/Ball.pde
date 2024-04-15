class Ball extends Circle {
  //Global variables
  float pongTableTop, pongTableBottom;
  //
  Ball(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //end ball
  //
  //Methods
  //
  void draw() {
    //border
    strokeWeight(2);
    fill(c);
    ellipse(x, y, w, h); //ball
    //reset to defaults
    fill(255);
  } //end draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
  void move(int xSpeed, int ySpeed, int xSpeedChange, int ySpeedChange) {
    x += xSpeed * xSpeedChange; //x = x + xSpeed
    y += ySpeed * ySpeedChange;
    //need to finish myself
    //bounce off pongTable.y, paddles will be later
  }//end move ball
  //
  void bounce(float diameter, float topParameter, float bottomParameter, float leftPaddleParameter, float rightPaddleParameter) {
    if ( x < 0+(diameter*1/2) || x > width-(diameter*1/2) ) xSpeed *= xDirection; //Repetition is *-1
    if ( y < topParameter+(diameter*1/2) || y > bottomParameter-(diameter*1/2)) ySpeed *= yDirection; //Repetition is *-1
    //paddle horizontal bounce code
    if (x < width*1/2) {
      if ( y < (myPaddle.paddleY+myPaddle.paddleHeight) & y > myPaddle.paddleY & x <= (myPaddle.paddleX+myPaddle.paddleWidth+diameter*1/2) & x >= (myPaddle.paddleX-diameter*1/2)) xSpeed *= xDirection;
    }
    if (x > width*1/2) {
      if ( y < (yourPaddle.paddleY+yourPaddle.paddleHeight) & y > yourPaddle.paddleY & x >= (yourPaddle.paddleX-diameter*1/2) & x <= (yourPaddle.paddleX+yourPaddle.paddleWidth+diameter*1/2) ) xSpeed *= xDirection;
    }
    //paddle vertical bounce code
    if (x < width*1/2) {
      if ( y < (myPaddle.paddleY+myPaddle.paddleHeight+diameter*1/2) & y > myPaddle.paddleY-(diameter*1/2) & x >= myPaddle.paddleX & x <= (myPaddle.paddleX+myPaddle.paddleWidth) ) ySpeed *= yDirection;
    }
    if (x > width*1/2) {
      if ( y < (yourPaddle.paddleY+yourPaddle.paddleHeight+diameter*1/2) & y > yourPaddle.paddleY-(diameter*1/2) & x >= yourPaddle.paddleX & x <= (yourPaddle.paddleX+yourPaddle.paddleWidth) ) ySpeed *= yDirection;
    }
  }//end bounce ball
  //
  /* features:
  - Ball in net triggers fireworks
  - give ball net dimensions & when it scores
  */
  //
  //getters and setters
  void pongTableUpdate(float topParameter, float bottomParameter) {
    pongTableTop = topParameter;
    pongTableBottom = bottomParameter;
  }//end pong table update
  void pongPaddleUpdate() {
    //left paddle bounce line
    //right paddle bounce line
  }//end paddle update
  //
} //end ball
