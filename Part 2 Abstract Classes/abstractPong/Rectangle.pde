abstract class Rectangle extends Shape {
  //global var
  //
  Rectangle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//rectangle
  //
  //methods
  abstract void draw(); //empty draw
  //
  abstract color backgroundColour();
  //
}//end rectangle
