class Fireworks extends Circle {
  //global variables
  int gravity = 1;
  //
  Fireworks (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//fireworks
  //
  //Methods
  void draw() {
    //border
    strokeWeight(2);
    fill(c);
    ellipse(x, y, w, h); //ball
    //reset to defaults
    fill(255);
  } //End draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
  void differentMove() {
    yFSpeed += gravity; //ball() is not affected, gravity is zero for it
    x += xFSpeed; //x = x + xSpeed
    y += yFSpeed;
    //not the same as ball move
  }//end move ball
  //
} //End fireworks
