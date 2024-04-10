class PongTable extends Rectangle {
  //global var
  //
  PongTable (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//pongtable
  //Methods
  void draw() {
    //border
    strokeWeight(5);
    //background colour
    fill(#1958BC);
    rect(x, y, w, h); //pong table
    //reset to defaults
  } //end draw
  //
  color backgroundColour() {
    color colour=0;
    return colour;
  }
  /*
  Features:
  - bounces ball off edges
  - gives ball net dimensions and when it scores
  - gives paddle edge of net, what id defends
  */
}//end pongtable
