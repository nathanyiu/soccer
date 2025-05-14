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
int Mode, Intro, Controls, Game, Pause, GG;
float intBallx, intBally, ballDist;
float intBallvx, intBallvy;
int scoreA, scoreB;
int top, topL, BottomL, Bottom, BottomR, TopR, Mid;
int pauseBack, i;
boolean pause,introBack;
PImage soccer;
float backballx, backbally, rotate;
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
  Mode = Intro;
  scoreA = 0;
  scoreB = 0;
  pauseBack = 1;
  i = 0;
  soccer = loadImage("soccer2.png");
  backballx = 450;
  backbally = -100;
  rotate = 20;
}
void draw() {
  if (Mode == Intro) {
    introBack();
    Intro();
  }
  else if (Mode == Controls) {
    Controls();
  }
  else if (Mode == Game) {
    Game();
  }
  else if (Mode == GG) {
    GG();
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
  }
  else if (keyCode == TAB && pause == true && Mode == Pause) {
    Mode = Game; 
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
void mouseReleased(){
  if (Mode == Intro) {
    IntroClicked();
  }
  else if (Mode == Controls) {
    ControlsClicked();
  }
  else if (Mode == Game) {
    GameClicked();
  }
  else if (Mode == GG) {
    GGClicked();
  }
  else if (Mode == Pause) {
    PauseClicked();
  }
}
void IntroClicked() {
  // if (mouseX > 400 && mouseX < 800 && mouseY > 300 && mouseY < 425) {
  //  Mode = Game;
  //}
  //if (mouseX > 400 && mouseX < 800 && mouseY > 450 && mouseY < 575) {
  //  Mode = Controls;
  //}
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
