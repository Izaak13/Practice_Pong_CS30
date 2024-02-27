void createStars() 
{
for (int i=0; i<stars.length; i++) {
  float diameterRandom = random(width*1/200, width*1/120);
    float xRandom = random(diameterRandom*1/2, width-diameterRandom*1/2);
    float yRandom = random(diameterRandom*1/2, height-diameterRandom*1/2);
    stars[i] = new Star(xRandom, yRandom, diameterRandom);
    int j=i;
    //
    while (j>=0) {
      if (xRandom-diameterRandom*1/2 > stars[j].x && xRandom+diameterRandom*1/2 < stars[j].x) {
        xRandom = random(diameter
