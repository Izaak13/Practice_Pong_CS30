/*Known ERRORS
- Night Mode: Ball colour is full blue
*/
class Ball
{
  //Global variables (of class)
  float x, y, diameter;
  color colour;
  float xSpeed, ySpeed, xDirection, yDirection;
  float gravity=0.0;
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
  }//End Ball Constructor
  //
  //Firework constructor
  Ball (float gravityParameter) {
    //Ball(); //Place holder
    x = mouseX; //ERROR: trigger when ball enters goal
    y = mouseY; //ERROR: trigger when ball enters goal
    colour = color ( random(255), random(255), random(255)) ;
    diameter = random(1/20*width);
    xSpeed = random(-5, 5);
    ySpeed = random(-5, 5);
    gravity = gravityParameter; //gloabl variable = local variable
    
  } //End firework
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
    step();
  }//End draw
  void step() {
    bounce();
    ySpeed += gravity;
    x += xSpeed; //x = x + xSpeed
    y += ySpeed;
  } //End step
  void bounce() {
    if ( x < 0+(diameter*1/2) || x > width-(diameter*1/2) ) xSpeed *= xDirection; //Repetition is *-1
    if ( y < 0+(diameter*1/2) || y > height-(diameter*1/2)) ySpeed *= yDirection; //Repetition is *-1
  }//End bounce
} //end BALL
