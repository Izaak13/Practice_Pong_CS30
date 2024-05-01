class Ball extends Circle {
  //Global variables
  float gravity=0;
  float pongTableTop, pongTableBottom, paddleLeftSurface, paddleRightSurface;
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
  //getters and setters
  void pongTableUpdate(float topParameter, float bottomParameter) {
    pongTableTop = topParameter;
    pongTableBottom = bottomParameter;
  }//end pong table update
  void pongPaddleUpdate(float leftParameter, float rightParameter) {
    paddleLeftSurface = leftParameter;
    paddleRightSurface = rightParameter;
  }//end paddle update
  //
  void move(int xSpeed, int ySpeed, int xSpeedChange, int ySpeedChange) {
    x += xSpeed * xSpeedChange; //x = x + xSpeed
    y += ySpeed * ySpeedChange;
    //need to finish myself
    //bounce off pongTable.y, paddles will be later
  }//end move ball
  //
  void bounce(float diameter) {
    if ( x < 0+(diameter*1/2) || x > width-(diameter*1/2) ) xSpeed *= -1; //Repetition is *-1
    if ( y < pongTableTop+(diameter*1/2) || y > pongTableBottom-(diameter*1/2)) ySpeed *= -1; //Repetition is *-1
    //paddle horizontal bounce code
    if (x < width*1/2 && xSpeed<0) {
      if ( y < (lPaddle.y+lPaddle.h) && y > lPaddle.y && x <= paddleLeftSurface && x >= lPaddle.x-ballDiameter/2  ) xSpeed *= -1;
    }
    if (x > width*1/2 && xSpeed>0) {
      if ( y < (rPaddle.y+rPaddle.h) && y > rPaddle.y && x >= paddleRightSurface && x <= rPaddle.x+rPaddle.w+ballDiameter/2 ) xSpeed *= -1;
    }
    //paddle vertical bounce code
    /*if (y < (lPaddle.y+lPaddle.h/2) && ySpeed > 0) {
      if ( y < (lPaddle.y+lPaddle.h+ballDiameter*1/2) && y > lPaddle.y-(diameter*1/2) && x >= lPaddle.x && x <= (lPaddle.x+lPaddle.w) ) ySpeed *= -1;
    }
    if (y > (lPaddle.y+lPaddle.h/2) && ySpeed < 0) {
      if ( y < (rPaddle.y+rPaddle.h+diameter*1/2) && y > rPaddle.y-(ballDiameter*1/2) && x >= rPaddle.x && x <= (rPaddle.x+rPaddle.w) ) ySpeed *= -1;
    }*/
  }//end bounce ball
  //
  /* features:
  - Ball in net triggers fireworks
  - give ball net dimensions & when it scores
  */
  //
} //end ball
