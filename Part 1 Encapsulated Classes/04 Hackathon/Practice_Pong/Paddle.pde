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
    tablePopulation(); //technically, vars populated twice
    netWidth = ballDiameterParameter*3;
    paddleWidth = ballDiameterParameter * 1/2;
    tableY = height * 1/10; 
    tableHeight = height * 4/5;
    tableBottom = tableY+tableHeight;
    tableWidth = width+1;
    if (paddleStartParameter == 0) netX = paddleStartParameter; //Adding to the netXk
    if ( paddleStartParameter == width ) {
      netX = paddleStartParameter - netWidth*2 - paddleWidth; //Subtracting the netX
    }
  this.paddleX = netX + netWidth;
  if ( paddleStartParameter == width ) netX = paddleStartParameter - netWidth;
  paddleStartHeight = .25;
  this.paddleHeight = tableHeight*paddleStartHeight; //color(int(random()), int(random()), int(random())
  this.paddleY = tableY + (tableHeight * 1/2) - ( paddleHeight*1/2 );
  this.paddleColour = color ( random(255), random(255), random(255)); //greyscale
  paddleMove = height/150; //easter egg, paddle speed is 1 pixel but can change
  } //end paddle constructor
  //
  //Pong Table Constructor
  //CAUTION: executes once, can be a problem
  void tablePopulation() {
    //table variables required for pong-paddle objects
    tableX = -1;
    tableY = height * 1/10; 
    tableHeight = height * 4/5;
    tableWidth = width+2;
  }// end paddle for table constructor
  void draw() {
    //CAUTION: pong table drawn 120 times a second, code in both paddle instances
    //system resources ERROR: draw loop is too much for one drawing
    fill(paddleColour);
    paddles();
    fill(0);
    if (up == true) movePaddleUp();
    if (down == true) movePaddleDown();
  }//end draw
  //
  //VOIDs and RETURNs
  //draw table
  void table() {
    stroke(255);
    fill(#234ECB);
    rect(tableX, tableY, tableWidth, tableHeight); //need lines for design
    strokeWeight(7);
    ellipse(tableX+width/2, tableY+tableHeight/2, tableHeight/2, tableHeight/2);
    line(tableX+width/2, tableY, tableX+width/2, tableHeight*1.125);
    line(tableX+(myBall.diameter*3), tableY, tableX+(myBall.diameter*3), tableHeight*1.125);
    line(tableX+width-(myBall.diameter*2.9), tableY, tableX+width-(myBall.diameter*2.9), tableHeight*1.125);
    strokeWeight(1);
    //line(); //alternative design
  }//end table
  //draw buttons
  void buttons() {
    fill(#32F50C);
    rect(width/15, height/60, width/6, height/15); //player 1
    rect(width*14/15-width/6, height/60, width/6, height/15); //player 2
    rect(width/4, height/60, width/12, height/15); //player 1 score
    rect(width*3/4-width/12, height/60, width/12, height/15); //player 2 score
    rect(width*2.5/6, height/60, width/6, height/15); //Title
    //
    rect(width/10, height*59/60-height/15, width/6, height/15); //opponent selector
    rect(width*4.5/10, height*59/60-height/15, width/10, height/15); //reset
    rect(width*9/10-width/6, height*59/60-height/15, width/6, height/15); //quit
  }//end buttons
  //draw paddles
  void paddles() {
    strokeWeight(2);
    rect(paddleX, paddleY, paddleWidth, paddleHeight);
    strokeWeight(1);
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
