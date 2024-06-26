abstract class Shape {
  //Global variables
  float x; //x var, position
  float y;//y var, position
  float w;//width
  float h;//height
  color c, rd; //shape colour, reset default
  boolean lUp, lDown, rUp, rDown;
  
  //
  //constructor
  Shape(float x, float y, float w, float h, color c) { 
    this.x = x; //x var, position
    this.y = y;//y var, position
    this.w = w;//width
    this.h = h;//height
    this.c = c; //shape colour
    rd = backgroundColour();
  } //end constructor
  //
  //Methods
  void draw() {} //end draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
} //end shape 
