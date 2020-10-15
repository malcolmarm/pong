void game() {
  background(255);
  strokeWeight(1);
  stroke(0);

  //Paddles
  fill(paddle1);
  circle(leftX, leftY, leftD);
  fill(paddle2);
  circle(rightX, rightY, rightD);

  //Paddle Control
  if (wkey == true) leftY = leftY - 5;
  if (skey == true) leftY = leftY + 5;
  if (upkey == true) rightY = rightY - 5;
  if (downkey == true) rightY = rightY + 5;
  if (leftY < 0 + leftD/2) leftY = 0 + leftD/2;
  if (leftY > height - leftD/2) leftY = height - leftD/2;
  if (rightY < 0 + rightD/2) rightY = 0 + rightD/2;
  if (rightY > height - rightD/2) rightY = height - rightD/2;

  //Ball
  fill(ballFill);
  circle(ballX, ballY, ballD);
  
  //Ball Movement
  
}

void gameClicks() {
}
