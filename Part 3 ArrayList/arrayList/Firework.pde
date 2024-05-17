class Fireworks extends Circle {
  //global variables
  int gravity = 1;
  float fDiameter;
  float xFSpeed;
  float yFSpeed;
  color colour;
  //
  Fireworks (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    this.fDiameter = random(width*1/30);
    this.xFSpeed = random(-5, 5);
    this.yFSpeed = random(-10, 5);
    this.colour = color (random(255), random(255), random(255));
  }//fireworks
  //
  //Methods
  void draw() {
    //border
    strokeWeight(2);
    fill(colour);
    ellipse(x, y, fDiameter, fDiameter); //ball
    //reset to defaults
    fill(255);
  } //End draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
  void updateSetup( float variable1, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 ) {
  }
  //
  void differentMove() {
    yFSpeed += gravity; //ball() is not affected, gravity is zero for it
    x += this.xFSpeed; //x = x + xSpeed
    y += this.yFSpeed;
    //not the same as ball move
  }//end move ball
  //
} //End fireworks
