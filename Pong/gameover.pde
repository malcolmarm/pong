void gameover() {
  background(0);
  textAlign(CENTER, CENTER);
  fill(textFill);
  victory.play();
  textSize(100);
  if (winner == BLUE) text("BLUE WINS!", 400, 200);
  if (winner == PURPLE) text("PURPLE WINS!", 400, 200);
  textSize(50);
  tactileRect(150, 500, 200, 100);
  fill(textFill);
  text("Reset", 250, 550);
}

void gameoverClicks() {
}
