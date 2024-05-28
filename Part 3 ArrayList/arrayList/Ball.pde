class Ball extends Circle {
  //Global variables for ball
  float pongTableTop, pongTableBottom, pongTableLeftSurface, pongTableRightSurface, pongTableMiddle;
  float leftPaddleTop, leftPaddleBottom, rightPaddleTop, rightPaddleBottom, paddleHeight;
  float diameter;
  int xSpeed = 10;
  int ySpeed = 10;
  Fireworks fireworks;
  //
  Ball(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //end ball
  //
  //Methods
  //
  void draw() {
    //border
    fill(c);
    strokeWeight(2);
    ellipse(x, y, w, h); //ball
    fill(255);
    //move
    x += xSpeed; //x = x + xSpeed
    y += ySpeed;
    //bounce
    if ( x < 0+(diameter*1/2) || x > width-(diameter*1/2) ) xSpeed *= -1; //Repetition is *-1
    if ( y < pongTableTop+(diameter*1/2) || y > pongTableBottom-(diameter*1/2)) ySpeed *= -1; //Repetition is *-1
    //paddle horizontal bounce code
    if (x < width*1/2 && xSpeed<0) {
      if ( y < (leftPaddleTop+paddleHeight) && y > leftPaddleTop && x <= el && x >= el-this.w  ) xSpeed *= -1;
    }
    if (x > width*1/2 && xSpeed>0) {
      if ( y < (rightPaddleTop+paddleHeight) && y > rightPaddleTop && x >= er && x <= er+this.w ) xSpeed *= -1;
    }
    //
    /*
    if ( s==false && ( x>el && x<er ) ) { //Logical Short Circuit Boolean, !=
      move(); //regular movement, ELSE IF ignored
    } else if ( s==false && x<=el ) { // <= & >= creates clear binary boundary
      x = pongTableLeft+w; //unseen decimals in a float cause the x-value to break free
      bx=x; //Ball Scoring Position on x-axis or width
      by=y;
      pty=pongTableTop;
      pby=pongTableBottom;
      ptm=pongTableMiddle;
      fireworks = new Fireworks( bx, by, w, h, c );
      fireworks.updateSetup( bx, by, w, pty, pby, ptm, 0.0, 0.0, 0.0, 0.0, 0.0 ); //CAUTION: s=false at start of fame
      s=fireworks.s=true; //Alternate Fireworks update
    } else if ( s==false && x>=er ) {
      x = pongTableRight-w; //NOTE: int() can block unseen decimals if no clear boundary
      bx=x; //Ball Scoring Position on x-axis or width
      by=y;
      pty = pongTableTopY;
      pby = pongTableBottomY;
      ptm = pongTableX_Middle;
      fireworks = new Fireworks( bx, by, w, h, c );
      fireworks.updateSetup( bx, by, w, pty, pby, ptm, 0.0, 0.0, 0.0, 0.0, 0.0 ); //CAUTION: s=false at start of fame
      s=fireworks.s=true; //Alternate Fireworks update
    } else {
      fireworks.draw();
    }
    */
    //
  } //end draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
  //getters and setters
  void updateSetup( float leftParameter, float rightParameter, float topParameter, float bottomParameter, float middleParameter, float leftPaddleEdge, float rightPaddleEdge, float leftPaddleTopParameter, float leftPaddleBottomParameter, float rightPaddleTopParameter, float rightPaddleBottomParameter, float ballDiameter ) {
    pongTableLeftSurface = leftParameter;
    pongTableRightSurface = rightParameter;
    pongTableTop = topParameter;
    pongTableBottom = bottomParameter;
    pongTableMiddle = middleParameter;
    el = leftPaddleEdge; //Left Paddle X Bounce Line //NOTE: second population
    er = rightPaddleEdge; //Right Paddles X Bounce Line //NOTE: second population
    diameter = ballDiameter;
    //s = false; //Note: FIRST population
    //paddleUpdate(leftPaddleTopParameter, leftPaddleBottomParameter, rightPaddleTopParameter, rightPaddleBottomParameter); //Executes Only Once in setup()
    //
    //For Moving the Ball, Executed Once
    /*
    xSpeed = xDirection(); //float, could be any number
    ySpeed = yDirection(); //float, could be any number
    //ERROR: random() will choose ZERO, not only -1 & 1
    xSpeedChange = 1; //Break bounce physics
    ySpeedChange = 1; //Change speeds
    */
  } //End Pong Table Update
  //for setup() & draw()
  void paddleUpdate( float leftPaddleTopParameter, float rightPaddleTopParameter) {
    lPaddleTop = leftPaddleTopParameter;
    rPaddleTop = rightPaddleTopParameter;
    paddleHeight = leftPaddleBottom-leftPaddleTop;
  } //End Paddle Update
  /*
  void pongTableUpdate(float topParameter, float bottomParameter) {
    pongTableTop = topParameter;
    pongTableBottom = bottomParameter;
  }//end pong table update
  void pongPaddleUpdate(float leftParameter, float rightParameter) {
    paddleLeftSurface = leftParameter;
    paddleRightSurface = rightParameter;
  }//end paddle update
  //*/
  void move(int xSpeed, int ySpeed, int xSpeedChange, int ySpeedChange) {
    x += xSpeed * xSpeedChange; //x = x + xSpeed
    y += ySpeed * ySpeedChange;
    //need to finish myself
    //bounce off pongTable.y, paddles will be later
  }//end move ball
  //
  //Getters and setters
  //
  void bounce(float diameter) {
    if ( x < 0+(diameter*1/2) || x > width-(diameter*1/2) ) xSpeed *= -1; //Repetition is *-1
    if ( y < pongTableTop+(diameter*1/2) || y > pongTableBottom-(diameter*1/2)) ySpeed *= -1; //Repetition is *-1
    //paddle horizontal bounce code
    if (x < width*1/2 && xSpeed<0) {
      if ( y < (lPaddleTop+paddleHeight) && y > lPaddleTop && x <= el && x >= el-this.w  ) xSpeed *= -1;
    }
    if (x > width*1/2 && xSpeed>0) {
      if ( y < (rPaddleTop+paddleHeight) && y > rPaddleTop && x >= er && x <= er+this.w ) xSpeed *= -1;
    }
    //paddle vertical bounce code
    /*if (y < (lPaddle.y+lPaddle.h/2) && ySpeed > 0) {
      if ( y < (lPaddle.y+lPaddle.h+ballDiameter*1/2) && y > lPaddle.y-(diameter*1/2) && x >= lPaddle.x && x <= (lPaddle.x+lPaddle.w) ) ySpeed *= -1;
    }
    if (y > (lPaddle.y+lPaddle.h/2) && ySpeed < 0) {
      if ( y < (rPaddle.y+rPaddle.h+diameter*1/2) && y > rPaddle.y-(ballDiameter*1/2) && x >= rPaddle.x && x <= (rPaddle.x+rPaddle.w) ) ySpeed *= -1;
    }*/
    } //end bounce ball
  //
  /* features:
  - Ball in net triggers fireworks
  - give ball net dimensions & when it scores
  */
  //
} //end ball
