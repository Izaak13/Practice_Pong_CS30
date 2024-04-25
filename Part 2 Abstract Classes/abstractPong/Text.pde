PFont font;
color white=#FFFFFF, gray=#747473, black=#0A0A0A;//not night mode friendly
//
void textSetup() {
  //Fonts from OS
  String[] fontList = PFont.list(); //To list all fonts available on system
  printArray(fontList); //For listing all possible fonts to choos, then createFont
  //
  font = createFont ("Impact", 193); //Verify font exists
  //Tools create Font / find font / DO NOT PRESS "OK", known bug
  //
}//End text setup
//
  void textDraw( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight) {
  fill( ink ); //Ink, hexadecimal
  textAlign ( alignX, alignY ); //Align X&Y
  float size = height/25;
  //println(size);
  textFont(font, size); //Change the number until it fits, largest font size
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill ( white ); //Default
  } //End textDraw
