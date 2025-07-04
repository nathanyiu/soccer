void Game() {
  background(58, 201, 57);
  stroke(0);
  strokeWeight(2);
  //back
  if (dist(mouseX, mouseY, 50, 50)<25) {
    stroke(255);
  } else {
    stroke(0);
  }
  fill(255, 0, 0);
  circle(50, 50, 50);
  fill(255);
  triangle(62.5, 37.5, 62.5, 62.5, 32.5, 50);
  //pause
  if (dist(mouseX, mouseY, 110, 50)<25) {
    stroke(255);
  } else {
    stroke(0);
  }
  fill(0, 0, 255);
  circle(110, 50, 50);
  //pitch
  fill(131, 199, 28);
  stroke(255);
  strokeWeight(5);
  fill(58, 201, 57);
  fill(131, 199, 28);
  rect(75, 200, 1050, 680);
  circle(600, 540, 190);
  line(600, 200, 600, 880);
  //goal area
  rect(30, 440.4, 45, 200);
  rect(1125, 440.4, 45, 200);
  circle(180, 540, 130);
  rect(75, 400, 140, 280);
  circle(1020, 540, 130);
  rect(985, 400, 140, 280);
  fill(255);
  circle(180, 540, 5);
  circle(1020, 540, 5);
  circle(600, 540, 25);
  if (scoreA == maxScore || scoreB == maxScore || min10 == 9) {
    Mode = GG; 
  }
  noStroke();
  scoreboard(scoreA, scoreB);
  player1A(player1x, player1y);
  player1B(player1Bx, player1By);
  player2A(player2x, player2y);
  player2B(player2Bx, player2By);
  balld = 30;
  ball(ballx, bally,balld);
  playerMovement();
  playerCollision();
  ballMovement();
  
}
