class Paddle extends Rectangle {
  //global var
  float paddleHeight;
  boolean up=false, down=false;
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
