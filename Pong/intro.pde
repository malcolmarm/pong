void intro() {
  background(#FFE3E5);
  
  //titlecard
  textAlign(CENTER, CENTER);
  fill(textFill);
  textSize(150);
  text("PONGISH", 400,300);
  
  tactileRect(300, 600, 200, 100);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 600 && mouseY < 700) mode = GAME;
}
