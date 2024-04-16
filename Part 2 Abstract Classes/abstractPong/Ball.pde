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
  //getters and setters
  void pongTableUpdate(float topParameter, float bottomParameter) {
    pongTableTop = topParameter;
    pongTableBottom = bottomParameter;
  }//end pong table update
  /*void pongPaddleUpdate() {
    left paddle bounce line
    right paddle bounce line
  }//end paddle update
  //*/
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
    if (x < width*1/2) {
      if ( y < (lPaddle.y+lPaddle.h) & y > lPaddle.h & x <= (lPaddle.x+lPaddle.w+diameter*1/2) & x >= (lPaddle.x-diameter*1/2) ) xSpeed *= -1;
    }
    if (x > width*1/2) {
      if ( y < (rPaddle.y+rPaddle.h) & y > rPaddle.y & x >= (rPaddle.x-diameter*1/2) & x <= (rPaddle.x+rPaddle.w+diameter*1/2) ) xSpeed *= -1;
    }
    //paddle vertical bounce code
    if (x < width*1/2) {
      if ( y < (lPaddle.y+lPaddle.h+diameter*1/2) & y > lPaddle.y-(diameter*1/2) & x >= lPaddle.x & x <= (lPaddle.x+lPaddle.w) ) ySpeed *= -1;
    }
    if (x > width*1/2) {
      if ( y < (rPaddle.y+rPaddle.h+diameter*1/2) & y > rPaddle.y-(diameter*1/2) & x >= rPaddle.x & x <= (lPaddle.x+rPaddle.w) ) ySpeed *= -1;
    }
  }//end bounce ball
  //
  /* features:
  - Ball in net triggers fireworks
  - give ball net dimensions & when it scores
  */
  //
} //end ball
