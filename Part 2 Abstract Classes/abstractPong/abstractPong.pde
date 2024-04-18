//Global varaibles
PongTable pongTable;
Ball ball;
Paddle lPaddle;
Paddle rPaddle;
Fireworks fireworks;
//Ball[] fireworks = new Ball[25];
int xSpeedDirection = 1;
int xSpeed = 10, ySpeed = 20, xSpeedFactor = 1, ySpeedFactor = 1;
int ballDiameter;
//
void setup() {
  //size(400, 600); //landscape orientation
  fullScreen();
  display();
  //night mode
  //error: 0 is not night mode
  color colourBackground = #1773E8; //Caution: using timer or button to change night mode`  
  //
  pongTable = new PongTable (0, appHeight*1/8, appWidth, appHeight*4/5, colourBackground);
  ballDiameter = (appWidth > appHeight) ? appHeight: appWidth;
  ballDiameter *= 0.05;
  float netWidth = ballDiameter/2;
  float netHeight = pongTable.h/5;
  float netY = pongTable.y+pongTable.h/2-netHeight/2;
  lPaddle = new Paddle (ballDiameter*3, netY, netWidth, netHeight, #B9B9B9);
  rPaddle = new Paddle (displayWidth-ballDiameter*3.5, netY, netWidth, netHeight, #B9B9B9);
  ball = new Ball (pongTable.w/2, pongTable.y+(pongTable.h/2), ballDiameter, ballDiameter, #EA151C);
  ball.pongTableUpdate(pongTable.y, pongTable.y+pongTable.h); //execute once
  ball.pongPaddleUpdate((lPaddle.x+lPaddle.w+ballDiameter*1/2), (rPaddle.x-ballDiameter*1/2));
  fireworks = new Fireworks (appWidth*-1, appHeight*-1, ballDiameter, ballDiameter, ball.c);
}//end setup
//
void draw() {
  //ERROR check of display: landscape only
  if (displayCheck == true) displayLandscape(); //turn your phone
  //
  fill(#FFEB76);
  rect(-1, -1, appWidth+2, appHeight+2);
  fill(0);
  pongTable.draw();
  ball.draw();
  lPaddle.draw();
  rPaddle.draw();
  fireworks.draw();
  ball.move(xSpeed, ySpeed, xSpeedFactor, ySpeedFactor);
  ball.bounce( ballDiameter);
  //update ball.PaddleUpdate
}//end draw
//
void mousePressed() {
  fireworks.triggerUpdateXY(mouseX, mouseY, true);
}//end mousePressed
//
void keyPressed() {
  if (key=='S' || key=='s' ) {
    fireworks.trigger=false;
  }
}//end key pressed
//
//end Driver
