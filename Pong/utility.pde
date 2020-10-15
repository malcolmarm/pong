void tactileRect (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(button2);
    strokeWeight(15);
  } else {
    fill(button1);
    strokeWeight(5);
  }
  stroke(buttonStroke);
  rect(x,y,w,h);
}
