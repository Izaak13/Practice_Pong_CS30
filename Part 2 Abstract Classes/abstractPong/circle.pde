abstract class Circle extends Shape {
  //global variables
  //
  Circle (float x, float y, float w, float h, color c) {
    super (x, y, w, h, c);
    //add gravity to Fireworks.move()
  } //End circle
  //
  //Methods
  void draw() {
    fill(c);
    ellipse(x, y, w, h);
    fill(rd);
  }//end draw
  //
  abstract color backgroundColour(); //end color background
  //
} //end circle
