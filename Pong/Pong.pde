//Malcolm Armstrong
//1-1B
//Oct 15th, 2020

//Pong

//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftX, leftY, leftD, rightX, rightY, rightD;
float ballX, ballY, ballD;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//scoreboard variables
int lscore, rscore;

//colour pallette
color button1 = #FFAFC3;
color button2 = #FF4876;
color buttonStroke = #FF0342;
color textFill;
color paddle1 = #CE55FF;
color paddle2 = #5572FF;
color ballFill = #FF5558;


void setup() {
  size(800, 800);
  mode = INTRO;

  //initializing paddles
  leftX = 0;
  leftY = height/2;
  leftD = 150;

  rightX = width;
  rightY = height/2;
  rightD = 150;

  //initializing ball
  ballX = width/2;
  ballY = height/2;
  ballD = 50;

  //initialize keyboard
  wkey= skey= upkey= downkey= false;
}

void draw() {
  if (mode ==INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}