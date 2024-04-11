//Global varaibles
PongTable pongTable;
Ball ball;
Paddle paddle;
//
void setup() {
  //size(400, 600); //landscape orientation
  fullScreen();
  display();
  //night mode
  //error: 0 is not night mode
  color colourBackground = 255; //Caution: using timer or button to change night mode`  
  int ballDiameter = (appWidth > appHeight) ? appHeight: appWidth;
  ballDiameter *= 0.05;
  float netWidth = ballDiameter;
  float netHeight = pongTable.h/5;
  float netY = pongTable.y+netHeight/2;
  //
  pongTable = new PongTable (0, appHeight*1/10, appWidth, appHeight*8/10, colourBackground);
  ball = new Ball (pongTable.w/2, pongTable.y+(pongTable.h/2), ballDiameter, ballDiameter, 0);
  paddle = new Paddle (ballDiameter*3, netY, netWidth, netHeight, 255);
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
