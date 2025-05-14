void ballMovement() {
  ballx -= ballvx;
  bally -= ballvy;
  //if (bally <= 214.5 || bally >=894.5) {
  //  ballvy *= -1;
  //}
  if (ballx < 50 && bally > 200 && bally < 440.4) {
    ballx = 600;
    bally = 540;
    ballvx = 0;
    ballvy = 0;
  }
  if (ballx < 50 && bally > 640.4 && bally < 880) {
    ballx = 600;
    bally = 540;
    ballvx = 0;
    ballvy = 0;
  }
  if (ballx > 1125 && bally > 200 && bally < 440.4) {
    ballx = 600;
    bally = 540;
    ballvx = 0;
    ballvy = 0;
  }
  if (ballx > 1125 && bally > 640.4 && bally < 880) {
    ballx = 600;
    bally = 540;
    ballvx = 0;
    ballvy = 0;
  }
  if (ballx <= -14.5 || ballx >= 1214.5) {
    ballx = 600;
    bally = 540;
    ballvx = 0;
    ballvy = 0;
  }
  if (ballx > 30 && ballx < 75 && bally > 465.4 && bally < 615.4) {
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
    ballvx = 0;
    ballvy = 0;
    scoreB++;
  }
  if (ballx > 1125 && ballx < 1170 && bally > 440.4 && bally < 640.4) {
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
    ballvx = 0;
    ballvy = 0;
    scoreA++;
  }
  ballvx = ballvx * 0.8;
  ballvy = ballvy * 0.8;

  if (bally <= 214.5 || bally >=894.5) {
    ballvy=ballvy*-1;
  }

  if (bally<= 214.5) bally = 214.5;
  if (bally>= 894.5) bally = 894.5;
}
