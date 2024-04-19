class Fireworks extends Ball {
  //global variables
  float gravity = 1;
  //
  Fireworks (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
  }//fireworks
  //Methods
  void draw() {
  } //End draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
  void differentMove() {
    ySpeed += gravity; //ball() is not affected, gravity is zero for it
    x += xSpeed; //x = x + xSpeed
    y += ySpeed;
    //not the same as ball move
  }//end move ball
  //
} //End fireworks
