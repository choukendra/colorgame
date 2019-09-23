void gameover() {
  background (#F08F9A);
  if (points == hs) {
    textSize(65);
    text("HIGH SCORE:" + hs, width/2, height/2);
  } else {
    textSize(65);
    text("GAME OVER", width/2, height/2);
  }
}
