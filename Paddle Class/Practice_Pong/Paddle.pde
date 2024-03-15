/* Known errors
-TBA
*/
class Paddle {
  //
  //global variables
  float tableX, tableY, tableWidth, tableHeight, tableBottom;
  float netX, netY, netWidth, netHeight;
  float paddleX, paddleY, paddleWidth, paddleHeight, paddleStartHeight;\
  int paddleMove;
  color paddleColour;
  boolean up=false, down=false; //keyPressed to draw
  //
  //Overloaded constructor
  Paddle (float paddleStartParameter, float ballDiameterParameter) {
    netWidth = ballDiameterParameter*3;
    paddleWidth = ballDiameterParameter * 1/2;
    tableY = height * 1/10; 
    tableHeight = height * 4/5;
    tableBottom = tableY+tableHeight;
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
  paddleMove =5; //easter egg, paddle speed is 1 pixel but can change
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
    //this.down=false; //ERROR: boolean reset means only one paddle at a time, no gaming
  } //end move paddleDown
  //
  void movePaddleUp() {
    paddleY -= paddleMove;
    if ( paddleY < tableY ) paddleY = tableY; //error catch
    //this.up=false; //ERROR: boolean reset means only one paddle at a time, no gaming
  } //end move paddleUp
  //
  void keyPressedWS() {
    if (key=='w' || key=='W') up=true;
    if (key=='s' || key=='S') down=true;
  }
  //
  void keyPressedIK() {
    if (key=='i' || key=='I') up=true;
    if (key=='k' || key=='K') down=true;   
  }
  //
  void keyReleasedWS() {
    if (key=='w' || key=='W') up=false;
    if (key=='s' || key=='S') down=false;
  }
  //
  void keyReleasedIK() {
    if (key=='i' || key=='I') up=false;
    if (key=='k' || key=='K') down=false;   
  }
  //
}// end paddle
