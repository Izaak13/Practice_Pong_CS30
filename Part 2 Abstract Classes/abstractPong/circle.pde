abstract class Circle extends Shape {
  //global variables
  //
  Circle (float x, float y, float w, float h, color c) {
    super (x, y, w, h, c);
  } //End circle
  //
  //Methods
  void draw() {
    fill(c);
    ellipse(x, y, w, h);
    fill(rd);
  }//end draw
  //
} //end circle
