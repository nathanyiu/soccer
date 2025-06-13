//char cord
float player1x, player1y;
float player1Bx, player1By;
float player2x, player2y;
float player2Bx, player2By;
float ballx, bally, balld;
float vx, vy;
float ballvx, ballvy;
//movemnt
boolean wkey, akey, skey, dkey;
boolean upkey, leftkey, downkey, rightkey;
//player collision
boolean OneTouch2Top, OneTouch2Left, OneTouch2Down, OneTouch2Right;
boolean OneTouch2BTop, OneTouch2BLeft, OneTouch2BDown, OneTouch2BRight;
boolean OneTouch1BTop, OneTouch1BLeft, OneTouch1BDown, OneTouch1BRight;
boolean OneBTouch2BTop, OneBTouch2BLeft, OneBTouch2BDown, OneBTouch2BRight;
boolean OneBTouch2Top, OneBTouch2Left, OneBTouch2Down, OneBTouch2Right;
boolean TwoTouch2BTop, TwoTouch2BLeft, TwoTouch2BDown, TwoTouch2BRight;
float player1B, player2B;
int Mode, Intro, Controls, Game, Pause, GG, modeSelect, RGoal, BGoal, pen;
float intBallx, intBally, ballDist;
float intBallvx, intBallvy;
int scoreA, scoreA10, scoreB, scoreB10;
int top, topL, BottomL, Bottom, BottomR, TopR, Mid;
int pauseBack, i;
boolean pause, introBack;
PImage soccer;
float backballx, backbally, rotate;
PFont font;
int gameMode;
float line1, line2, line3, line4;
float moveCircle, ballCircle;
int maxScore, timeLimit;
float ballSpeed, bsReduce;
int bs;
String inf;
int timer, min10, min, sec10, sec;
int Rx, Bx;
PImage screen;
PImage red, blue;
int redMode, blueMode;
boolean rPicked,bPicked;
void setup() {
  size(1200, 880);
  player1x = width/4;
  player1y = 455;
  player1Bx = width/4;
  player1By = 625;
  player2x = width/4 * 3;
  player2y = 455;
  player2Bx = width/4 * 3;
  player2By = 625;
  ballx = 600;
  bally = 540;
  balld = 30;
  vx = -5;
  vy = -5;
  ballvx = 0;
  ballvy = 0;
  player1B = -1;
  player2B = -1;
  Intro = 0;
  Controls = 1;
  Game = 2;
  GG = 3;
  Pause = 4;
  modeSelect = 5;
  RGoal = 6;
  BGoal = 7;
  pen = 8;
  Mode = pen;
  scoreA = 0;
  scoreB = 0;
  pauseBack = 1;
  i = 0;
  soccer = loadImage("soccer2.png");
  backballx = 450;
  backbally = -100;
  rotate = 20;
  gameMode = 0;
  line1 = 315;
  line2 = 325;
  line3 = 315;
  line4 = 325;
  moveCircle = 600;
  ballCircle = 600;
  maxScore = 1;
  ballSpeed = 1;
  bsReduce = 0.8;
  inf = "\u221E";
  timeLimit = 0;
  font = createFont("04B_30__.TTF", 30);
  timer = 0;
  Rx = 1200;
  Bx = -1200;
  redMode = 0;
  blueMode = 0;
  red = loadImage("red.png");
  blue = loadImage("blue.png");
  rPicked = false;
  bPicked = false;
}
void draw() {
  //background(58, 201, 57);
  textFont(font);
  if (Mode == Intro) {
    playerReset();
    timerReset();
    introBack();
    Intro();
  } else if (Mode == Controls) {
    playerReset();
    timerReset();
    Controls();
  } else if (Mode == Game) {
    Game();
  } else if (Mode == GG) {
    GG();
  } else if (Mode == modeSelect) {
    modeSelect();
  } else if (Mode == RGoal) {
    RGoal();
  } else if (Mode == BGoal) {
    BGoal();
  } else if (Mode == pen) {
    pen();
  }
  if (Mode == Pause) {
    pause = true;
    Pause();
  } else {
    pause = false;
  }
}
void player1A(float player1x, float player1y) {
  pushMatrix();
  translate(player1x, player1y);
  strokeWeight(1);
  noStroke();
  fill(255, 0, 0);
  circle(0, 0, 50);
  if (redMode == 0) {
    image(red, -25, -25);
  }
  popMatrix();
}
void player1B(float player1x, float player1y) {
  pushMatrix();
  translate(player1x, player1y);
  circle(0, 0, 50);
  image(red, -25, -25);
  popMatrix();
}
void player2A(float player2x, float player2y) {
  pushMatrix();
  translate(player2x, player2y);
  fill(0, 0, 255);
  circle(0, 0, 50);
  if (blueMode == 0) {
    image(blue, -25, -25);
  }
  popMatrix();
}
void player2B (float player2x, float player2y) {
  pushMatrix();
  translate(player2x, player2y);
  circle(0, 0, 50);
  image(blue, -25, -25);
  popMatrix();
}
void ball(float ballx, float bally, float balld) {
  pushMatrix();
  translate(ballx, bally);
  stroke(0);
  fill(80, 80, 80);
  //circle(0, 0, balld);
  image(soccer, -15, -15, balld, balld);
  popMatrix();
}
void keyPressed() {
  if (Mode == Intro) {
    IntroPressed();
  } else if (Mode == Game) {
    GamePressed();
  } else if (Mode == Pause) {
    PausePressed();
  } else if (Mode == pen) {
    penPressed();
  }
}
void penPressed() {
  if ((key == 'q'||key=='Q') && rPicked == false) {
    rPicked = true;
  } else if ((key == 'w'||key=='W') && rPicked == false) {
    rPicked = true;
  } else if ((key == 'e'||key=='E') && rPicked == false) {
    rPicked = true;
  } else if ((key == 'a'||key=='A') && rPicked == false) {
    rPicked = true;
  } else if ((key == 's'||key=='S') && rPicked == false) {
    rPicked = true;
  } else if ((key == 'd'||key=='D') && rPicked == false) {
    rPicked = true;
  }
}
void GamePressed() {
  if (key == 'w' || key == 'W') {
    wkey = true;
  }
  if (key == 'a' || key == 'A') {
    akey = true;
  }
  if (key == 's' || key == 'S') {
    skey = true;
  }
  if (key == 'd' || key == 'D') {
    dkey = true;
  }
  if (key == 'u' || key == 'U') {
    upkey = true;
  }
  if (key == 'h' || key == 'H') {
    leftkey = true;
  }
  if (key == 'j' || key == 'J') {
    downkey = true;
  }
  if (key == 'k' || key == 'K') {
    rightkey = true;
  }
  if (key == 'e' || key == 'E') {
    player1B *= -1;
  }
  if (key == 'i' || key == 'I') {
    player2B *= -1;
  }
  if (key == 'g') {
    scoreA++;
  }
  if (key == 't') {
    scoreB++;
  }
  if (keyCode == TAB && pause == false) {
    Mode = Pause;
    pause = true;
  }
}
void PausePressed() {
  if (keyCode == TAB && pause == true && Mode == Pause) {
    Mode = Game;
    pause = false;
    i = 0;
  }
}
void IntroPressed() {
  if (key == ' ' && Mode == Intro) {
    Mode = modeSelect;
  }
}
void keyReleased() {
  if (key == 'w' || key == 'W') {
    wkey = false;
  }
  if (key == 'a' || key == 'A') {
    akey = false;
  }
  if (key == 's' || key == 'S') {
    skey = false;
  }
  if (key == 'd' || key == 'D') {
    dkey = false;
  }
  if (key == 'u' || key == 'U') {
    upkey = false;
  }
  if (key == 'h' || key == 'H') {
    leftkey = false;
  }
  if (key == 'j' || key == 'J') {
    downkey = false;
  }
  if (key == 'k' || key == 'K') {
    rightkey = false;
  }
}
void mouseReleased() {
  if (Mode == Intro) {
    IntroClicked();
  } else if (Mode == Controls) {
    ControlsClicked();
  } else if (Mode == Game) {
    GameClicked();
  } else if (Mode == GG) {
    GGClicked();
  } else if (Mode == Pause) {
    PauseClicked();
  } else if (Mode == modeSelect) {
    modeSelectClicked();
  }
}
void mouseDragged() {
  if (mouseX > 495 && mouseX < 705 && mouseY > 540 && mouseY < 560 && Mode == modeSelect) {
    moveCircle = mouseX;
  }
}
void IntroClicked() {
}
void ControlsClicked() {
}
void GameClicked() {
  if (dist(mouseX, mouseY, 110, 50)< 25) {
    Mode = Pause;
    pause = true;
  }
  if (dist(mouseX, mouseY, 50, 50)<25) {
    Mode = Intro;
  }
}
void GGClicked() {
  if (mouseX > 400 && mouseX < 600 && mouseY > 700 && mouseY < 840) {
    Mode = modeSelect;
  } else if ( mouseX > 650 && mouseX < 850 && mouseY > 700 && mouseY < 840) {
    exit();
  }
}

void PauseClicked() {
  if (dist(mouseX, mouseY, 600, 700)< 100) {
    Mode = Game;
    pause = false;
    i = 0;
  }
  if (dist(mouseX, mouseY, 300, 700)<62.5) {
    Mode = Intro;
  }
}
void modeSelectClicked() {
  if (mouseX > 200 && mouseX < 500 && mouseY > 160 && mouseY < 390) {
    gameMode = 1;
  }
  if (mouseX > 700 && mouseX < 900 && mouseY > 160 && mouseY < 390) {
    gameMode = 2;
  }
  if (mouseX > 495 && mouseX < 705 && mouseY > 540 && mouseY < 560) {
    moveCircle = mouseX;
  }
  if (mouseX > 435 && mouseX < 475 && mouseY > 530 && mouseY < 570) {
    if (moveCircle <= 500) {
      moveCircle-= 0;
    } else {
      moveCircle -= 25;
    }
  }
  if (mouseX > 725 && mouseX < 765 && mouseY > 530 && mouseY < 570) {
    if (moveCircle >= 705) {
      moveCircle += 0;
    } else {
      moveCircle += 25;
    }
  }
  if (mouseX > 429.5 && mouseX < 498 && mouseY > 615 && mouseY < 673) {
    ballSpeed = 0.5;
    bsReduce = 0.9;
  }
  if (mouseX > 498 && mouseX < 568 && mouseY > 615 && mouseY < 673) {
    ballSpeed = 1;
    bsReduce = 0.8;
  }
  if (mouseX > 568 && mouseX < 642 && mouseY > 615 && mouseY < 673) {
    ballSpeed = 1.5;
    bsReduce = 0.65;
  }
  if (mouseX > 642 && mouseX < 717 && mouseY > 615 && mouseY < 673) {
    ballSpeed = 2;
    bsReduce = 0.6;
  }
  if (mouseX > 717 && mouseX < 775 && mouseY > 615 && mouseY < 673) {
    ballSpeed = 3;
    bsReduce = 0.5;
  }

  if (mouseX > 429.5 && mouseX < 498 && mouseY > 700 && mouseY < 758) {
    maxScore = 1;
  }
  if (mouseX > 498 && mouseX < 568 && mouseY > 700 && mouseY < 758) {
    maxScore = 3;
  }
  if (mouseX > 568 && mouseX < 642 && mouseY > 700 && mouseY < 758) {
    maxScore = 5;
  }
  if (mouseX > 642 && mouseX < 717 && mouseY > 700 && mouseY < 758) {
    maxScore = 10;
  }
  if (mouseX > 717 && mouseX < 775 && mouseY > 700 && mouseY < 758) {
    maxScore = 1000000000;
  }


  if (mouseX > 429.5 && mouseX < 498 && mouseY > 790 && mouseY < 848) {
    timeLimit = 3;
  }
  if (mouseX > 498 && mouseX < 568 && mouseY > 790 && mouseY < 848) {
    timeLimit = 5;
  }
  if (mouseX > 568 && mouseX < 642 && mouseY > 790 && mouseY < 848) {
    timeLimit = 10;
  }
  if (mouseX > 642 && mouseX < 717 && mouseY > 790 && mouseY < 848) {
    timeLimit = 30;
  }
  if (mouseX > 717 && mouseX < 775 && mouseY > 790 && mouseY < 848) {
    timeLimit = 45;
  }

  if (mouseX > 1000 && mouseX < 1150 && mouseY > 820 && mouseY < 870) {
    Mode = Game;
  }
}
