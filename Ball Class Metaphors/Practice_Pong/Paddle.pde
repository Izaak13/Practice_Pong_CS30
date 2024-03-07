/* Known errors
-TBA
*/
class Paddle {
  //
  //global variables
  float tableX, tableY, tableWidth, tableHeight;
  float netX, netY, netWidth, netHeight;
  float paddleX, paddleY, paddleWidth, paddleHeight, paddleStartHeight;\
  int paddleMove;
  color paddleColour;
  //
  //Overloaded constructor
  Paddle (float paddleStartParameter, float ballDiameterParameter) {
    netWidth = ballDiameterParameter*3;
    paddleWidth = ballDiameterParameter * 1/2;
    tableY = height * 1/10; 
    tableHeight = height * 4/5;
    if (paddleStartParameter == 0) netX = paddleStartParameter; //Adding to the netX
    if ( paddleStartParameter == width ) {
      netX = paddleStartParameter - netWidth*2 - paddleWidth; //Subtracting the netX
    }
  this.paddleX = netX + netWidth;
  if ( paddleStartParameter == width ) netX = paddleStartParameter - netWidth;
  paddleStartHeight = .25;
  this.paddleHeight = tableHeight*paddleStartHeight; //color(int(random()), int(random()), int(random())
  this.paddleY = tableY + (tableHeight * 1/2) - ( paddleHeight*1/2 );
  paddleColour = 255; //greyscale
  paddleMove = 1; //easter egg, paddle speed is 1 pixel but can change
  } //end paddle constructor
  //
  void draw() {
    fill(paddleColour);
    paddles();
    fill(0);
    if (up == true) movePaddleUp();
    if (down == true) movePaddleDown();
  }//end draw
  //
  //VOIDs and RETURNs
  void paddles() {
    rect(paddleX, paddleY, paddleWidth, paddleHeight);
  } //End paddles
  //
  void movePaddleDown() {
    paddleY += paddleMove;
    if ( paddleY > tableY+tableHeight-paddleHeight ) paddleY = tableY+tableHeight-paddleHeight;
    down=false;
  } //end move paddleDown
  //
  void movePaddleUp() {
    paddleY -= paddleMove;
    if ( paddleY < tableY ) paddleY = tableY; //error catch
    up=false;
  } //end move paddleUp
  //
}// end paddle
