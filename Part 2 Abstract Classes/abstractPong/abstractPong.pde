//Global varaibles
PongTable pongTable;
Ball ball;
Paddle paddle;
Paddle paddle2;
//
void setup() {
  //size(400, 600); //landscape orientation
  fullScreen();
  display();
  //night mode
  //error: 0 is not night mode
  color colourBackground = #1773E8; //Caution: using timer or button to change night mode`  
  //
  background(#EEFF81);
  pongTable = new PongTable (0, appHeight*1/8, appWidth, appHeight*4/5, colourBackground);
  int ballDiameter = (appWidth > appHeight) ? appHeight: appWidth;
  ballDiameter *= 0.05;
  ball = new Ball (pongTable.w/2, pongTable.y+(pongTable.h/2), ballDiameter, ballDiameter, #EA151C);
  float netWidth = ballDiameter/2;
  float netHeight = pongTable.h/5;
  float netY = pongTable.y+pongTable.h/2-netHeight/2;
  paddle = new Paddle (ballDiameter*3, netY, netWidth, netHeight, #B9B9B9);
  paddle2 = new Paddle (displayWidth-ballDiameter*3.5, netY, netWidth, netHeight, #B9B9B9);
}//end setup
//
void draw() {
  //ERROR check of display: landscape only
  if (displayCheck == true) displayLandscape(); //turn your phone
  //
  pongTable.draw();
  ball.draw();
  paddle.draw();
  paddle2.draw();
}//end draw
//
void mousePressed() {}//end mousePressed
//
void keyPressed() {}//end key pressed
//
//end Driver
