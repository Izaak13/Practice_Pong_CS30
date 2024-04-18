class Fireworks extends Ball {
  //global variables
  int sparks = 25;
  int gravity = 5;
  float[] fX = new float [sparks];
  float[] fY = new float [sparks];
  float[] fW = new float [sparks];
  float[] fH = new float [sparks];
  color[] fC = new color [sparks];
  Boolean trigger=false;
  //
  Fireworks (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    updateVars();
  }//fireworks
  //Methods
  void draw() {
    while (trigger==true) {
      for ( int i=0; i<fX.length; i++) {
        fill(fC[i]);
        ellipse(fX[i], fY[i], fW[i], fW[i]);
        fill(rd);
      }
    }
  } //End draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
  void differentMove() {
    ySpeed += gravity; //ball() is not affected, gravity is zero for it
    x += xSpeed; //x = x + xSpeed
    y += ySpeed;
    //not the same as ball move
  }//end move ball
  //
  void updateVars() {
    for ( int i=0; i<fX.length; i++ ) {
      fX[i] = x;
      fY[i] = y;
      fW[i] = random ( w*1/50, w*1.2 );
      //fH[i] = h;
      fC[i] = color(random(255), random(255), random(255));
    }
  } //End UpDate Variables
  //
  void triggerUpdateXY(float x, float y, Boolean triggerParameter) {
    for ( int i=0; i<fX.length; i++ ) {
      fX[i] = x;
      fY[i] = y;
    }
    trigger=triggerParameter;
  } //End UpDate Variables
  //
} //End fireworks
