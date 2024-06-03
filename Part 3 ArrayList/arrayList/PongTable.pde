class PongTable extends Rectangle {
  //Local Variables to PongTable in Shape, will be deleted
  //Global Variables to PongTable
  float leftNetX_Top, leftNetY_Top, leftNetX_Bottom, leftNetY_Bottom;
  float rightNetX_Top, rightNetY_Top, rightNetX_Bottom, rightNetY_Bottom;
  float middlePongTableX, middlePongTableY_Top, middlePongTableY_Bottom;
  //
  PongTable (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//pongtable
  //Methods
  void draw() {
    //border
    strokeWeight(5);
    fill(c);
    rect(x, y, w, h); //pong table
    //reset to defaults
    fill(255);
  } //end draw
  //
  color backgroundColour() {
    color colour=0;
    return colour;
  }
  //getters and settersj
  void update( float netWidth, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9, float variable10, float variable11 ) {
    leftNetX_Top = x+netWidth;
    leftNetY_Top = y;
    leftNetX_Bottom = leftNetX_Top;
    leftNetY_Bottom = leftNetY_Top+h;
    rightNetX_Top = w-netWidth;
    rightNetY_Top = leftNetY_Top;
    rightNetX_Bottom = rightNetX_Top;
    rightNetY_Bottom = leftNetY_Bottom;
    middlePongTableX = ( ( rightNetX_Top - leftNetX_Top ) / 2 ) + netWidth; //Used in Paddle Constructor to create left or right Paddle
    middlePongTableY_Top = leftNetY_Top;
    middlePongTableY_Bottom = leftNetY_Bottom;
  }
  /*
  Features:
  - bounces ball off edges
  - gives ball net dimensions and when it scores
  - gives paddle edge of net, what id defends
  */
}//end pongtable
