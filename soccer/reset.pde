void playerReset() {
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
  ballvx = 0;
  ballvy = 0;
  player1B = -1;
  player2B = -1;
}
void timerReset() {
  scoreA = 0;
  scoreB = 0;
  timer=0;
}
