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
    if (x < pongTableMiddle) {
      rect(x, plt, w, h); //note: drawing paddle must change (plt)
    } else {
      rect( x, prt, w, h);
    }
    //reset to defaults
    fill(255);
    if (up == true) movePaddleUp();
    if (down == true) movePaddleDown();
  }// end draw
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
    y += this.h/5;
    if ( y > tableY+tableHeight-h ) y = tableY+tableHeight-h;
    //down=false; //ERROR: boolean reset means only one paddle at a time, no gaming
  } //end move paddleDown
  //
  void movePaddleUp() {
    y -= this.h/5;
    if ( y < tableY ) y = tableY; //error catch
    //this.up=false; //ERROR: boolean reset means only one paddle at a time, no gaming
  } //end move paddleUp
  //
  //
  void keyPressedWS() {
    if (key=='w' || key=='W') up=true;
    if (key=='s' || key=='S') down=true;
  }
  //
  void keyPressedIK() {
    if (key=='i' || key=='I') up=true;
    if (key=='k' || key=='K') down=true;
  }
  //
  void keyReleasedWS() {
    if (key=='w' || key=='W') up=false;
    if (key=='s' || key=='S') down=false;
  }
  //
  void keyReleasedIK() {
    if (key=='i' || key=='I') up=false;
    if (key=='k' || key=='K') down=false;   
  }
  //
  //Getters and Setters
  void updateSetup( float pongTableMiddle ) {
    
  }
}//end paddle class
