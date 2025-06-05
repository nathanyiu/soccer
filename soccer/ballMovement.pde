void ballMovement() {
  ballx -= ballvx;
  bally -= ballvy;
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
  if (ballx > 30 && bally > 440 && bally < 640);

  if (ballx > 30 && ballx < 50 && bally > 465.4 && bally < 615.4) {
    ballx = 45;
    playerReset();
    scoreB++;
    screen = get();
    Mode = BGoal;
  }
  if (ballx > 1135 && ballx < 1170 && bally > 440.4 && bally < 640.4) {
    ballx = 1140;
    playerReset();
    scoreA ++;
    screen = get();
    Mode = RGoal;
  }
  //bsReduce = map(ballSpeed,0.1,1,0.9,0.8);
  ballvx = ballvx * bsReduce;
  ballvy = ballvy * bsReduce;

  if (bally <= 214.5 || bally >=865) {
    ballvy=ballvy*-1;
  }

  if (bally<= 214.5) bally = 214.5;
  if (bally>= 865) bally = 865;
}
