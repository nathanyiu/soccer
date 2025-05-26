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
int Mode, Intro, Controls, Game, Pause, GG, modeSelect;
float intBallx, intBally, ballDist;
float intBallvx, intBallvy;
int scoreA, scoreB;
int top, topL, BottomL, Bottom, BottomR, TopR, Mid;
int pauseBack, i;
boolean pause, introBack;
PImage soccer;
float backballx, backbally, rotate;
PFont font;
int gameMode; //83
float line1, line2, line3, line4;
float moveCircle, ballCircle;
int maxScore, timeLimit;
float ballSpeed, bsReduce;
int bs;
String inf;
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
  balld = 50;
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
  Mode = modeSelect;
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
  maxScore = 11;
  ballSpeed = 1;
  bsReduce = 0.9;
  inf = "\u221E";
  timeLimit = 0;
  font = createFont("04B_30__.TTF",30);
}
void draw() {
  background(58, 201, 57);
  textFont(font);
  if (Mode == Intro) {
    introBack();
    Intro();
  } else if (Mode == Controls) {
    Controls();
  } else if (Mode == Game) {
    Game();
  } else if (Mode == GG) {
    GG();
  } else if (Mode == modeSelect) {
    modeSelect();
  }
  if (Mode == Pause) {
    pause = true;
    Pause();
  } else {
    pause = false;
  }
  if (pause == false) {
    i = 0;
  }
  println(Mode);
}
void player1A(float player1x, float player1y) {
  pushMatrix();
  translate(player1x, player1y);
  strokeWeight(1);
  if (player1B == -1) {
    stroke(255);
  } else {
    stroke(0);
  }
  strokeWeight(3);
  fill(255, 0, 0);
  circle(0, 0, 50);
  popMatrix();
}
void player1B(float player1x, float player1y) {
  pushMatrix();
  translate(player1x, player1y);
  if (player1B == 1) {
    stroke(255);
  } else {
    stroke(0);
  }
  circle(0, 0, 50);
  popMatrix();
}
void player2A(float player2x, float player2y) {
  pushMatrix();
  translate(player2x, player2y);
  if (player2B == -1) {
    stroke(255);
  } else {
    stroke(0);
  }
  fill(0, 0, 255);
  circle(0, 0, 50);
  popMatrix();
}
void player2B (float player2x, float player2y) {
  pushMatrix();
  translate(player2x, player2y);
  if (player2B == 1) {
    stroke(255);
  } else {
    stroke(0);
  }
  circle(0, 0, 50);
  popMatrix();
}
void ball(float ballx, float bally) {
  pushMatrix();
  translate(ballx, bally);
  stroke(0);
  fill(80, 80, 80);
  circle(0, 0, 29);
  popMatrix();
}
void keyPressed() {
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
  if (keyCode == TAB && pause == false && Mode == Game) {
    Mode = Pause;
  } else if (keyCode == TAB && pause == true && Mode == Pause) {
    Mode = Game;
  } else if (key == ' ' && Mode == Intro) {
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
  //if (mouseX > 495 && mouseX < 705 && mouseY > 630 && mouseY < 650 && Mode == modeSelect) {
  //  ballCircle = mouseX;
  //}
}
void IntroClicked() {
}
void ControlsClicked() {
}
void GameClicked() {
  if (dist(mouseX, mouseY, 110, 50)< 25) {
    Mode = Pause;
  }
  if (dist(mouseX, mouseY, 50, 50)<25) {
    Mode = Intro;
  }
}
void GGClicked() {
}
void PauseClicked() {
  if (dist(mouseX, mouseY, 600, 700)< 100) {
    Mode = Game;
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
}
