void netExplosion(float xParameter, float yParameter) {
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(xParameter, yParameter, 0.5);
  }
} //End netExplosion
