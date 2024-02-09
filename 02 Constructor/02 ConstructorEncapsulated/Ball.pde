class Ball
{
  //Global variables (of class)
  float x, y, diameter;
  color colour;
  float xSpeed, ySpeed;
  int xDirection, yDirection;
  //
  //Constructor
  Ball () {
    //Costructor Is... hard coded, single variable object
    //Local variables, deleted at the end of constructor
    int startX = width*1/2;
    int startY = height*1/2;
    int referentMeasure = ( width<height) ? width : height ; //review ternary operator
    //
    //Object variables
    x = startX; //span myBall in middle of display
    y = startY; 
    diameter = referentMeasure*1/20;
    colour = color ( random(255), random(255), random(255)) ; //random(), shortcut, casting from float to intin color var
    xSpeed = 1; // width/width
    ySpeed = 1;
    xDirection = -1; //Hard code will change
    yDirection = -1;
  }//End Constructor
  //
  void draw() { //ball, different draw function than the main program
    fill(colour); //caution: must reset defaults
    ellipse(x, y, diameter, diameter);
    fill(0);
  }//End draw
  void step() {
    x += xSpeed; //x = x + xSpeed
    y += ySpeed;
  } //End step
  void bounce() {
    if () {
      xSpeed *= -1*xDirection; //Repetition is *-1
    }
    if () {
      ySpeed *= -1*yDirection; //Repetition is *-1
    }
  }//End bounce
} //end BALL
