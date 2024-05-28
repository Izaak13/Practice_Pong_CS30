abstract class Shape {
  //Global variables
  float x; //x var, position
  float y;//y var, position
  float w;//width
  float h;//height
  //future paddle array
  //Note: width does not cahnge, stays local variable
  float el; //left bounce edge, x-pixel
  float er; //right bounce edge, x-pixel
  float plt; //left top paddle y-pixel
  float plb; //left bottom paddle y-pixel
  float prt; //right top paddle y-pixel
  float prb; //right bottom paddle y-pixel
  // plt plb prt prb
  boolean lUp, lDown, rUp, rDown;
  //
  color c, rd; //shape colour, reset default
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
  void keyPressed() {}//end keyPressed
  //
  void keyReleased() {}//end keyReleased
  //
  void paddleUpdate(float lPaddleTopParameter, float rPaddleTopParameter) {
    lPaddleTop = lPaddleTopParameter;
    rPaddleTop = rPaddleTopParameter;
  }//end paddleUpdate
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
} //end shape 
