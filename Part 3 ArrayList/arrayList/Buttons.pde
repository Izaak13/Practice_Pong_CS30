abstract class Buttons extends Rectangle {
  //global var
  //
  Buttons (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//buttons
  //Methods
  abstract void draw();
  //
  /* Features:
  - Quit: exit();
  - Restart: resets starting variables
  - player selection: 2 or singleplayer
  - Menu | Personalization | instructions | settings: TBA
  */
}//end buttons class
