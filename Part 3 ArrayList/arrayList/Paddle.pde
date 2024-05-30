class Paddle extends Rectangle {
  //global var
  float pongTableMiddle, tableY, tableHeight;
  boolean up=false, down=false;
  Paddle lPaddle;
  Paddle rPaddle;
  //
  Paddle(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//paddle
  //Methods
  void draw() {
    //border
    strokeWeight(2);
    fill(c);
    rect(x, y, w, h);
    if (lUp == true && x < pongTableMiddle) {
      movePaddleUp();
    }
    if (rUp == true && x > pongTableMiddle) {
      movePaddleUp();
    }
    if (lDown == true && x < pongTableMiddle) {
      movePaddleDown();
    }
    if (rDown == true && x > pongTableMiddle) {
      movePaddleDown();
    }
    //
    if (x < pongTableMiddle) lPaddleTop = y;
    if (x > pongTableMiddle) rPaddleTop = y;
    //
  for (Ball s : ball) {
    s.paddleUpdate(lPaddleTop, rPaddleTop);
  }
    //reset to defaults
    fill(255);
  }// end draw
  //
  void keyPressed() {
    if (key=='w' || key=='W') lUp=true;
    if (key=='s' || key=='S') lDown=true;
    //
    if (key=='i' || key=='I') rUp=true;
    if (key=='k' || key=='K') rDown=true;
  }//end keyPressed
  //
  void keyReleased() {
    if (key=='w' || key=='W') lUp=false;
    if (key=='s' || key=='S') lDown=false;
    //
    if (key=='i' || key=='I') rUp=false;
    if (key=='k' || key=='K') rDown=false;
  }//end key released
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
  //Getters and setters
  void updateSetup( float pongTableMiddleParameter, float xNetValue, float pongTableYParameter, float pongTableHeightParameter, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 ) {
    pongTableMiddle = pongTableMiddleParameter;
    if ( x < pongTableMiddleParameter ) { //NOTE: var==NULL, IF == false
      el += xNetValue+w;
    } else {
      x -= w;
      er += xNetValue-w;
    }
    tableY = pongTableYParameter;
    tableHeight = pongTableHeightParameter;
    /*
    //plb prt prb
    if (x < pongTableMiddleParameter) {
      plt = y;
      plb = y+h;
      //note: h = difference of plt and plb
    } else {
      prt = y;
      prb = y+h;
    }
    */
    //
  } //End Paddle X Update
  //
  /* Features:
  - give ball x-var to bounce between two y-variables
  */
  void movePaddleDown() {
    y += this.h/20;
    if ( y > tableY+tableHeight-h ) y = tableY+tableHeight-h;
    //down=false; //ERROR: boolean reset means only one paddle at a time, no gaming
  } //end move paddleDown
  //
  void movePaddleUp() {
    y -= this.h/20;
    if ( y < tableY ) y = tableY; //error catch
    //this.up=false; //ERROR: boolean reset means only one paddle at a time, no gaming
  } //end move paddleUp
  //
}//end paddle class
