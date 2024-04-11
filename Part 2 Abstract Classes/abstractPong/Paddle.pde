class Paddle extends Rectangle {
  //global var
  //
  Paddle(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//paddle
  //Methods
  void draw() {
    //border
    strokeWeight(2);
    rect(x, y, w, h); //rectangle
    //reset to defaults
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
}//end paddle class
