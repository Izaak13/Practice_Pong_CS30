abstract class Paddle extends Rectangle {
  //global var
  //
  Paddle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//paddle
  //Methods
  abstract void draw();
  //
  /* Features:
  - give ball x-var to bounce between two y-variables
  */
}//end paddle class
