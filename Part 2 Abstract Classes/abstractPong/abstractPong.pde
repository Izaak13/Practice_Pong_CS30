//Global varaibles
PongTable pongTable;
Ball ball;
Paddle lPaddle;
Paddle rPaddle;
Fireworks[] fireworks = new Fireworks[25];
int xSpeedDirection = 1;
int xSpeed = 10, ySpeed = 5, xSpeedFactor = 1, ySpeedFactor = 1;
int xFSpeed = 1, yFSpeed = 1;
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
  for (int i=0; i<3; i++) {
    float fDiameter = random(width*1/25);
    fireworks[i] = new Fireworks (appWidth*-1, appHeight*-1, fDiameter, fDiameter, color (random(255), random(255), random(255)));
  }
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
  for (int i=0; i < 3; i++) {
    fireworks[i].draw();
    fireworks[i].differentMove();
  }
  lPaddle.draw();
  rPaddle.draw();
  ball.move(xSpeed, ySpeed, xSpeedFactor, ySpeedFactor);
  ball.bounce( ballDiameter);
  //update ball.PaddleUpdate
}//end draw
//
void mousePressed() {
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Fireworks (appWidth*-1, appHeight*-1, ballDiameter, ballDiameter, ball.c);
  }
}//end mousePressed
//
void keyPressed() {
}//end key pressed
//
//end Driver
