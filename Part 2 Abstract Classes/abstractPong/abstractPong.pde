//Global varaibles
PongTable pongTable;
Ball ball;
Paddle lPaddle;
Paddle rPaddle;
Fireworks[] fireworks = new Fireworks[20];
Scoreboard title1, title2, score1, score2;
int xSpeedDirection = 1;
int xSpeed = 15, ySpeed = 10, xSpeedFactor = 1, ySpeedFactor = 1;
int ballDiameter;
boolean explosion=false;
int playerOneScore, playerTwoScore;
//
void setup() {
  //size(400, 600); //landscape orientation
  fullScreen();
  display();
  textSetup();
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
  lPaddle = new Paddle (ballDiameter*3, netY, netWidth, netHeight, color (random(255), random(255), random(255)));
  rPaddle = new Paddle (displayWidth-ballDiameter*3.5, netY, netWidth, netHeight, color (random(255), random(255), random(255)));
  ball = new Ball (pongTable.w/2, pongTable.y+(pongTable.h/2), ballDiameter, ballDiameter, #EA151C);
  ball.pongTableUpdate(pongTable.y, pongTable.y+pongTable.h); //execute once
  ball.pongPaddleUpdate((lPaddle.x+lPaddle.w+ballDiameter*1/2), (rPaddle.x-ballDiameter*1/2));
  for (int i=0; i<fireworks.length; i++) {
    float fDiameter = random(displayWidth*1/25);
    fireworks[i] = new Fireworks (appWidth*-1, appHeight*-1, fDiameter, fDiameter, color (random(255), random(255), random(255)) );
  }
  title1 = new Scoreboard (displayWidth*1/8, displayHeight*1/30, displayWidth*1/4, displayHeight*1/15, #8B8888);
  title2 = new Scoreboard (displayWidth*7/8-displayWidth/4, displayHeight*1/30, displayWidth*1/4, displayHeight*1/15, #8B8888);
  score1 = new Scoreboard (displayWidth*3.5/9, displayHeight*1/30, displayWidth*1/20, displayHeight*1/15, #8B8888);
  score2 = new Scoreboard (displayWidth*5.5/9-displayWidth/20, displayHeight*1/30, displayWidth*1/20, displayHeight*1/15, #8B8888);
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
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
    fireworks[i].differentMove();
  }
  lPaddle.draw();
  rPaddle.draw();
  ball.move( xSpeed, ySpeed, xSpeedFactor, ySpeedFactor );
  ball.bounce( ballDiameter );
  title1.draw();
  textDraw( white, CENTER, CENTER, font, "Player 1", displayWidth*1/8, displayHeight*1/30, displayWidth*1/4, displayHeight*1/15);
  title2.draw();
  textDraw( white, CENTER, CENTER, font, "Player 2", displayWidth*7/8-displayWidth/4, displayHeight*1/30, displayWidth*1/4, displayHeight*1/15);
  score1.draw();
  textDraw( white, CENTER, CENTER, font, String.valueOf(playerOneScore), displayWidth*3.5/9, displayHeight*1/30, displayWidth*1/20, displayHeight*1/15);
  score2.draw();
  textDraw( white, CENTER, CENTER, font, String.valueOf(playerTwoScore), displayWidth*5.5/9-displayWidth/20, displayHeight*1/30, displayWidth*1/20, displayHeight*1/15);
  //update ball.PaddleUpdate
  //
  if ((ball.x < (2*ball.w) || ball.x > ( width-(2*ball.w)))) {
    if (explosion==true) {
      if (ball.x < (2*ball.w) || ball.x > ( width-(2*ball.w)) ) {
        for (int i=0; i < fireworks.length; i++) {
          fireworks[i] = new Fireworks ( ball.x, ball.y, ballDiameter, ballDiameter, ball.c );
        }
      }
      if (ball.x < (2*ball.w)) playerTwoScore++;
      if (ball.x > ( width-(2*ball.w))) playerOneScore++;
    }
    explosion=false;
    //
  } //Goal, firework constructor execution, based on x-value
  else 
  {
  explosion=true;
  }
  //
}//end draw
//
void mousePressed() {
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Fireworks ( mouseX, mouseY, ballDiameter, ballDiameter, ball.c );
  }
}//end mousePressed
//
void keyPressed() {
  //if (key=='w'
  lPaddle.keyPressedWS();
  rPaddle.keyPressedIK();
}//end key pressed
//
void keyReleased() {
  lPaddle.keyReleasedWS();
  rPaddle.keyReleasedIK();
}//end key released
//end Driver
