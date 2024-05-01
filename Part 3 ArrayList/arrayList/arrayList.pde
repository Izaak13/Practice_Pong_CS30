//
//Global Variables 
ArrayList<Shape> shapes = new ArrayList<Shape>();
//
void setup() {
  size(600,400);
  //Audio - students to add
  //Classes - add, hint: TABS
  //Build local objects - students to add, i.e. start with Ball, then pongTable, etc.
  //
  //Objects Created:
  Paddle lPaddle = new Paddle (ballDiameter*3, netY, netWidth, netHeight, color (random(255), random(255), random(255)));
  Paddle rPaddle = new Paddle (displayWidth-ballDiameter*3.5, netY, netWidth, netHeight, color (random(255), random(255), random(255)));
  Ball ball = new Ball (pongTable.w/2, pongTable.y+(pongTable.h/2), ballDiameter, ballDiameter, #EA151C);
  Scoreboard title1 = new Scoreboard (displayWidth*1/8, displayHeight*1/30, displayWidth*1/4, displayHeight*1/15, #8B8888);
  Scoreboard title2 = new Scoreboard (displayWidth*7/8-displayWidth/4, displayHeight*1/30, displayWidth*1/4, displayHeight*1/15, #8B8888);
  Scoreboard score1 = new Scoreboard (displayWidth*3.5/9, displayHeight*1/30, displayWidth*1/20, displayHeight*1/15, #8B8888);
  Scoreboard score2 = new Scoreboard (displayWidth*5.5/9-displayWidth/20, displayHeight*1/30, displayWidth*1/20, displayHeight*1/15, #8B8888);
  for (int i=0; i<fireworks.length; i++) {
    float fDiameter = random(displayWidth*1/25);
    fireworks[i] = new Fireworks (appWidth*-1, appHeight*-1, fDiameter, fDiameter, color (random(255), random(255), random(255)) );
  }
  //Paddle Update
  shapes.add(lPaddle); //Element 0, left paddle
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
void mousePressed() {}//end mousePressed
//
void keyPressed() {}//end keyPressed
//end arraylist
