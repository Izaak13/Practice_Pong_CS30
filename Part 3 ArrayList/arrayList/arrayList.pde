//
//Global Variables 
ArrayList<Shape> shapes = new ArrayList<Shape>();
//
void setup() {
  fullScreen();
  //display();
  //Audio - students to add
  //musicSetup();
  //Classes - add, hint: TABS
  //Build local objects - students to add, i.e. start with Ball, then pongTable, etc.
  //
  int ballDiameter = ( displayWidth > displayHeight ) ? displayHeight : displayWidth;
  float netWidth = ballDiameter/2;
  //Objects Created:
  ballDiameter = ballDiameter*1/60;
  PongTable pongTable = new PongTable (0, displayHeight*1/8, displayWidth, displayHeight*4/5, #A27474);
  float netHeight = pongTable.h/5;
  float netY = pongTable.y+pongTable.h/2-netHeight/2;
  float lNetX = ballDiameter*3;
  float rNetX = displayWidth-ballDiameter*3.5;
  pongTable.update( ballDiameter*2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 );
  Paddle lPaddle = new Paddle (lNetX, netY, netWidth, netHeight, color (random(255), random(255), random(255)));
  Paddle rPaddle = new Paddle (rNetX, netY, netWidth, netHeight, color (random(255), random(255), random(255)));
  lPaddle.updateSetup( pongTable.w*1/2, lNetX, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 );
  rPaddle.updateSetup( pongTable.w*1/2, rNetX, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 );
  Ball ball = new Ball (pongTable.w/2, pongTable.y+(pongTable.h/2), ballDiameter, ballDiameter, #EA151C);
  ball.updateSetup( pongTable.x, pongTable.x+pongTable.w, pongTable.y, pongTable.y+pongTable.h, pongTable.middlePongTableX, lPaddle.el, rPaddle.er, lPaddle.y, lPaddle.y+lPaddle.h, rPaddle.y, rPaddle.y+rPaddle.h );
  Fireworks[] fireworks = new Fireworks[20];
  Scoreboard title1 = new Scoreboard (displayWidth*1/8, displayHeight*1/30, displayWidth*1/4, displayHeight*1/15, #8B8888);
  Scoreboard title2 = new Scoreboard (displayWidth*7/8-displayWidth/4, displayHeight*1/30, displayWidth*1/4, displayHeight*1/15, #8B8888);
  Scoreboard score1 = new Scoreboard (displayWidth*3.5/9, displayHeight*1/30, displayWidth*1/20, displayHeight*1/15, #8B8888);
  Scoreboard score2 = new Scoreboard (displayWidth*5.5/9-displayWidth/20, displayHeight*1/30, displayWidth*1/20, displayHeight*1/15, #8B8888);
  for (int i=0; i<fireworks.length; i++) {
    float fDiameter = random(displayWidth*1/25);
    fireworks[i] = new Fireworks (displayWidth*-1, displayHeight*-1, fDiameter, fDiameter, color (random(255), random(255), random(255)));
  }
  //Paddle Update
  shapes.add(pongTable); //Element 0, pongTable
  shapes.add(lPaddle);
  shapes.add(rPaddle);
  shapes.add(ball);
  shapes.add(title1);
  shapes.add(title2);
  shapes.add(score1);
  shapes.add(score2);
  //
}//end setup
//
void draw() {
  background(0);
  //
  for (Shape s : shapes) {
    s.draw();
  }
  /*for (int i=0; i<shapes.size(); i++) {
    shapes.get(i).draw();
  }*/
}//end draw
//
void mousePressed() {
}//end mousePressed
//
/*
void keyPressed() {
  lPaddle.keyPressedWS();
  rPaddle.keyPressedIK();
}//end keyPressed
//
void keyReleased() {
  lPaddle.keyReleasedWS();
  rPaddle.keyReleasedIK();
}//end key released
*/
//end arrayList
