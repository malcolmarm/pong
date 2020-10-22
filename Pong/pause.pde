void pause() {
  fill(textFill);
  textSize(200);
  textAlign(CENTER,CENTER);
  text("PAUSED", width/2, height/2);
}

void pauseClicks() {
  mode = GAME;
}
