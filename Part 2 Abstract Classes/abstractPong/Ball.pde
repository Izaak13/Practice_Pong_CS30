class Ball extends Circle {
  //Global variables
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
    ellipse(x, y, w, h); //ball
    //reset to defaults
  } //end draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
  void move() {
    //need to finish myself
  }//end move ball
  //
  /* features:
  - Ball in net triggers fireworks
  - give ball net dimensions & when it scores
  */
} //end ball
