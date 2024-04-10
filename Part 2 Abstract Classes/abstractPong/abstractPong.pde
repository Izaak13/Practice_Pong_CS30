//Global varaibles
PongTable pongTable;
Ball ball;
//
void setup() {
  //size(400, 600); //landscape orientation
  fullScreen();
  display();
  //night mode
  //error: 0 is not night mode
  color colour = 0; //Caution: using timer or button to change night mode
  //
  pongTable = new PongTable (0, appHeight*1/10, appWidth, appHeight*8/10, colour);
  ball = new Ball (appWidth/2, appHeight/2, appHeight/20, appHeight/20, colour);
}//end setup
//
void draw() {
  //ERROR check of display: landscape only
  if (displayCheck == true) displayLandscape(); //turn your phone
  //
  pongTable.draw();
  ball.draw();
}//end draw
//
void mousePressed() {}//end mousePressed
//
void keyPressed() {}//end key pressed
//
//end Driver
