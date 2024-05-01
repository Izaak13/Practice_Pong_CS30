class Paddle extends Rectangle {
  //global var
  float paddleHeight=pongTable.y+pongTable.h/2-(pongTable.h/5)/2;
  boolean up=false, down=false;
  Paddle lPaddle;
  //
  Paddle(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    this.y = paddleHeight;
  }//paddle
  //Methods
  void draw() {
    //border
    strokeWeight(2);
    fill(c);
    rect(x, y, w, h); //rectangle
    //reset to defaults
    fill(255);
    if (up == true) movePaddleUp();
    if (down == true) movePaddleDown();
  }// end draw
  //
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
  /* Features:
  - give ball x-var to bounce between two y-variables
  */
  void movePaddleDown() {
    y += pongTable.y/20;
    if ( y > pongTable.y+pongTable.h-h ) y = pongTable.y+pongTable.h-h;
    //down=false; //ERROR: boolean reset means only one paddle at a time, no gaming
  } //end move paddleDown
  //
  void movePaddleUp() {
    y -= pongTable.y/20;
    if ( y < pongTable.y ) y = pongTable.y; //error catch
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
}//end paddle class
