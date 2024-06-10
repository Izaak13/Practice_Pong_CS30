class Fireworks extends Circle {
  //global variables
  float gravity = 0.5;
  float fDiameter;
  float xFSpeed;
  float yFSpeed;
  color colour;
  float ballX, ballY;
  Fireworks[] fireworks = new Fireworks[20];
  //
  Fireworks (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    this.fDiameter = random(width*1/30);
    this.xFSpeed = random(-5, 5);
    this.yFSpeed = random(-10, 5);
    this.colour = color (random(255), random(255), random(255));
  }//fireworks
  //
  //Methods
  void draw() {
    //border
    strokeWeight(2);
    fill(colour);
    ellipse(x, y, fDiameter, fDiameter); //ball
    //reset to defaults
    fill(255);
    differentMove();
  } //End draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //end night mode colour
  //
  void ballUpdate(float ballXParameter, float ballYParameter, float ballDiameterParameter) {
    ballX = ballXParameter;
    ballY = ballYParameter;
    ballDiameter = ballDiameterParameter;
  }
  //
  void mousePressed() {
    for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Fireworks ( mouseX, mouseY, fDiameter, fDiameter, colour );
    println("click");
  }
  }
  //
  void explosion() {
    println("working");
    for (int i=0; i < fireworks.length; i++) {
      fireworks[i] = new Fireworks ( ballX, ballY, fDiameter, fDiameter, colour);
    }
  }
  //
  void differentMove() {
    yFSpeed += gravity; //ball() is not affected, gravity is zero for it
    x += this.xFSpeed; //x = x + xSpeed
    y += this.yFSpeed;
    //not the same as ball move
  }//end move ball
  //
} //End fireworks
