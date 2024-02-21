/*Known ERRORS
- Night Mode: Ball colour is full blue
*/
class Ball
{
  //Global variables (of class)
  float x, y, diameter;
  color colour;
  float xSpeed, ySpeed, xDirection, yDirection, xSpeedChange=1.0, ySpeedChange=1.0;
  float gravity=0.0;
  Boolean disappear=false;
  //static int count = 25; //Static number for amount of ball instances in a firework
  //
  //Multiple Constructors by identifying different parameters
  Ball () {
    //Costructor Is... hard coded, single variable object
    //Local variables, deleted at the end of constructor
    int startX = width*1/2;
    int startY = height*1/2;
    int referentMeasure = ( width<height) ? width : height ; //review ternary operator
    //
    //Object variables
    this.x = startX; //span myBall in middle of display
    this.y = startY; 
    this.diameter = referentMeasure*1/20;
    this.colour = color ( random(255), random(255), random(255)) ; //random(), shortcut, casting from float to intin color var
    this.xSpeed = xDirection(); // float, could be any number
    this.ySpeed = yDirection();
    xDirection = -1; //float, truncated, must be minimum 2
    yDirection = -1;
    this.xSpeedChange = 1.0;
    this.ySpeedChange = 1.0;
  }//End Ball Constructor
  //
  //Firework constructor
  Ball (float xParameter, float yParameter, float gravityParameter) {
    //Ball(); //Place holder
    this.x = xParameter; //ERROR: trigger when ball enters goal
    this.y = yParameter; //ERROR: trigger when ball enters goal
    this.colour = color ( random(255), random(255), random(255)) ;
    this.diameter = random(width*1/25);
    this.xSpeed = random(-5, 5);
    this.ySpeed = random(-5, 5);
    gravity = gravityParameter; //gloabl variable = local variable
    
  } //End firework
  //
  //overloaded constructor, moved ball constructor
  //must look like old Ball instance, and make old ball instance disappear
  Ball(float xParameter, float yParameter, float diameterParameter, color colourParameter, float xSpeedParameter, float ySpeedParameter) {
    this.x = xParameter; //spawn myBall in middle of the display
    this.y = yParameter;
    this.diameter = diameterParameter;
    this.colour = colourParameter;
    this.xSpeed = xSpeedParameter;
    this.ySpeed = ySpeedParameter;
    //
    //
    this.xSpeed = xDirection(); // float, could be any number
    this.ySpeed = yDirection();
    xDirection = -1; //float, truncated, must be minimum 2
    yDirection = -1;
    this.xSpeedChange = 1.0;
    this.ySpeedChange = 1.0;
    //
    //
  } //End movedBall constructor
  //
  float xDirection() {
    float xDirection = int ( random(-10, 10) );
    while (xDirection > -5 && xDirection < 5) {
      xDirection = int ( random(-10, 10) ); //variable must be populated first
    }
    return xDirection;
  }
  float yDirection() {
    float yDirection = int ( random(-10, 10) );
    while (yDirection > -5 && yDirection < 5) {
      yDirection = int ( random(-10, 10) ); //variable must be populated first
    }
    return yDirection;  
  }
  void draw() { //ball, different draw function than the main program
    fill(colour); //caution: must reset defaults
    ellipse(x, y, diameter, diameter); //Easter egg: at bounce, diameters changes
    fill(0);
    //
    step(); //manipulating the variables
  } //End draw
  void step() {
    bounce();
    ySpeed += gravity; //ball() is not affected, gravity is zero for it
    x += xSpeed * xSpeedChange; //x = x + xSpeed
    y += ySpeed * ySpeedChange;
  } //End step
  void bounce() {
    if ( x < 0+(diameter*1/2) || x > width-(diameter*1/2) ) xSpeed *= xDirection; //Repetition is *-1
    if ( y < 0+(diameter*1/2) || y > height-(diameter*1/2)) ySpeed *= yDirection; //Repetition is *-1
  }//End bounce
} //end BALL
