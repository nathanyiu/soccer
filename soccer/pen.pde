void pen() {
  background(58, 201, 57);
  environment();
}

void animation() {
  player1x = 600;
  player1y = 425;
  redMode = rOp ;
  player1A(player1x,player1y);
}
void score() {
  strokeWeight(1);
  stroke(1);
  fill(255, 0, 0);
  rect(50, 70, 215, 20);
  fill(0, 0, 255);
  rect(935, 70, 215, 20);
  fill(255);
  rect(50, 90, 215, 45);
  rect(935, 90, 215, 45);
  for (int i = 0; i < rScore.length; i++) {
    if (rScore[i] == 0) {
      fill(80, 80, 80);
    } else if (rScore[i] == 1) {
      fill(255,0,0); 
    } else {
      fill(0,0,255); 
    }
    circle(65 +25 * i +( 15 * (i+1)), 115, 30);
  }
  for (int i = 0; i < bScore.length; i++) {
    if (bScore[i] == 0) {
      fill(80, 80, 80);
    } else if (bScore[i] == 1) {
      fill(255,0,0); 
    } else {
      fill(0,0,255); 
    }
    circle(950 +25 * i +( 15 * (i+1)), 115, 30);
  }
}
void environment() {
  stroke(255);
  fill(131, 199, 28);
  rect(-10, 440, 1300, 440);
  noFill();
  //rect(375,280,450,165);
  strokeWeight(10);
  rect(300, 230, 600, 215);
  fill(131, 199, 28);
  quad(220, 440, 980, 440, 1180, 650, 20, 650);
  stroke(255);
  line(0, 440, 1200, 440);
  fill(255);
  strokeWeight(1);
  circle(600, 600, 15);
  ballx=600;
  bally = 600;
  balld = 50;
  ball(ballx, bally, balld);
  if (rPicked == true && bPicked == true) {
    animation();
  } else {
    strokeWeight(3);
    stroke(255);
    line(500, 230, 500, 445);
    line(700, 230, 700, 445);
    line(300, 337.5, 900, 337.5);
    textSize(50);
    fill(255);
    text("Pick a Spot!", 370, 150);
    fill(255, 0, 0);
    text("Q", 340, 300);
    text("W", 535, 300);
    text("E", 735, 300);
    text("A", 335, 410);
    text("S", 535, 410);
    text("D", 735, 410);
    fill(255);
    text("/", 390, 300);
    text("/", 585, 300);
    text("/", 785, 300);
    text("/", 385, 410);
    text("/", 585, 410);
    text("/", 785, 410);
    fill(0, 0, 255);
    text("I", 440, 300);
    text("O", 635, 300);
    text("P", 835, 300);
    text("J", 435, 410);
    text("K", 635, 410);
    text("L", 835, 410);
  }
  score();
}
