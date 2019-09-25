void intro() {
  background(#96DB87); 
  image(gif.get(n), 0, 0);
  if (frameCount % 5 == 0) {
    n++;
  }
  if (n>71) {
    n = 0;
  }
  fill(240);
  textSize(90);
  text("COLOR", width/2, 250);
  text("GAME", width/2, 350); 
  fill(255);
  points = 0;
  t = 120;
}
