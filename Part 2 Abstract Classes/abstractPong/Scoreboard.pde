abstract class Scoreboard extends Rectangle {
  //Global variables
  //
  Scoreboard(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //end scoreboard
  //
  //Methods
  //
  void draw() {
    //border
    strokeWeight(2);
    //background colour
    fill(c);
    rect(x, y, w, h);
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
}// end scoreboard
