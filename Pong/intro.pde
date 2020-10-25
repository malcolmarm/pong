void intro() {
  background(#FFE3E5);
  intro.play();

  //titlecard
  textAlign(CENTER, CENTER);
  fill(textFill);
  textSize(150);
  text("PONGISH", 400, 300);

  textSize(35);
  tactileRect(150, 600, 200, 100);
  fill(textFill);
  text("2 PLAYER", 250, 650);
  tactileRect(450, 600, 200, 100);
  fill(textFill);
  text("1 PLAYER", 550, 650);
}

void introClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 600 && mouseY < 700) { 
    mode = GAME;
    AI = false;
    intro.pause();
  } else if (mouseX > 450 && mouseX < 650 && mouseY > 600 && mouseY < 700) {
    mode = GAME;
    AI = true;
    intro.pause();
  }
}
