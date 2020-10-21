void game() {
  background(#FFDDFF);
  strokeWeight(5);
  fill(0);
  line(width/2, 0, width/2, height);
  strokeWeight(1);
  stroke(0);

  //Scoreboard
  textAlign(CENTER, CENTER);
  fill(textFill);
  textSize(100);
  text(lscore, 200, 100);
  text(rscore, 600, 100);

  //Paddles
  fill(paddle1);
  circle(leftX, leftY, leftD);
  fill(paddle2);
  circle(rightX, rightY, rightD);

  //Paddle Control
  if (wkey == true) leftY = leftY - 8;
  if (skey == true) leftY = leftY + 8;
  if (upkey == true) rightY = rightY - 8;
  if (downkey == true) rightY = rightY + 8;
  if (leftY < 0 + leftD/2) leftY = 0 + leftD/2;
  if (leftY > height - leftD/2) leftY = height - leftD/2;
  if (rightY < 0 + rightD/2) rightY = 0 + rightD/2;
  if (rightY > height - rightD/2) rightY = height - rightD/2;

  //Ball
  fill(ballFill);
  circle(ballX, ballY, ballD);

  //Ball Movement
  ballX = ballX + ballVX;
  ballY = ballY + ballVY;
  if (ballY > height - ballD/2) {
    ballY = height - ballD/2;
    ballVY = ballVY * -1;
  }
  if (ballY < 0 + ballD/2) {
    ballY = 0 + ballD/2;
    ballVY = ballVY *-1;
  }
  if (dist(ballX, ballY, leftX, leftY) <= ballD/2 + leftD/2) {
    ballVX = (ballX - leftX)/10;
    ballVY = (ballY - leftY)/10;
  }
  if (dist(ballX, ballY, rightX, rightY) <= ballD/2 + rightD/2) { 
    ballVX = (ballX - rightX)/10;
    ballVY = (ballY - rightY)/10;
  }
  if (ballX >= width) {
    lscore ++;
    ballX = 400;
    ballY = 400;
    ballVX = 0;
    ballVY = 0;
    leftY = 400;
    rightY = 400;
    rdelay = true;
  }
  if (ballX <= 0) {
    rscore ++;
    ballX = 400;
    ballY = 400;
    ballVX = 0;
    ballVY = 0;
    leftY = 400;
    rightY = 400;
    ldelay = true;
  }
  if (rdelay == true) {
    delayTick ++;
    if (delayTick >= 60) {
      rdelay = false;
      ballVX = -5;
      delayTick = 0;
    }
  }
  if (ldelay == true) {
    delayTick ++;
    if (delayTick >= 60) {
      ldelay = false;
      ballVX = 5;
      delayTick = 0;
    }
  }

  //Gameover Detection
  if (lscore >= 3) {
    winner = PURPLE;
    mode = GAMEOVER;
  }
  if (rscore >= 3) {
    winner = BLUE;
    mode = GAMEOVER;
  }
}

void gameClicks() {
}
