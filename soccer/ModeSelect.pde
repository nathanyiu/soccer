void modeSelect() {
  introBack();
  //textFont(mode);
  fill(0, 0, 255);
  textSize(50);
  text("Select a Mode:", 435, 100);
  strokeWeight(2);
  stroke(0, 0, 255);
  line(400, 120, 775, 120);
  stroke(255, 0, 0);
  fill(0);
  if (gameMode == 1) {
    stroke(255);
  } else {
    stroke(0);
  }
  rect(200, 160, 300, 230, 20);
  stroke(255);
  fill(131, 199, 28);
  rect(210, 170, 280, 160);
  circle(350, 250, 40);
  line(350, 170, 350, 330);
  rect(210, 220, 20, 60);
  rect(470, 220, 20, 60);

  stroke(0);
  fill(255, 0, 0);
  circle(280, 220, 20);
  circle(260, 290, 20);
  fill(0, 0, 255);
  circle(350, 270, 20);
  circle(430, 230, 20);
  fill(255);
  text("Match", 285, 380);
  if (gameMode == 2) {
    stroke(255);
  } else {
    stroke(0);
  }
  fill(0);
  rect(700, 160, 300, 230, 20);

  fill(0, 0, 255);
  text("Modification:", 460, 450);
  stroke(0, 0, 255);
  line(435, 470, 765, 470);
  mod();
}
void mod() {
  fill(0);
  textSize(30);
  stroke(0);
  text("Player Speed", 145, 560);
  fill(255, 0, 0);
  circle(375, 550, 50);
  line1 = map(vx, -1, -11, 345, 315);
  line2 = map(vx, -1, -11, 350, 325);
  line(line1, 550, 345, 550);
  line(line2, 530, 350, 530);
  line(line2, 570, 350, 570);
  noFill();
  //fill(0);
  rect(435, 530, 40, 40);
  stroke(0);
  line(445, 550, 465, 550);

  rect(725, 530, 40, 40);
  line(735, 550, 755, 550);
  line(745, 540, 745, 560);
  fill(0);
  rect(495, 545, 210, 10, 150);
  noStroke();
  fill(255);
  circle(moveCircle, 550, 25);
  if (moveCircle <= 495) {
    moveCircle = 495;
  }
  if (moveCircle >= 705) {
    moveCircle = 705;
  }
  vx = map(moveCircle, 495, 705, -1, -10);
  vx = (int)vx;
  fill(0);
  text((int)abs(vx), 790, 560, 30);

  //ball speed
  text("Ball Speed", 175, 650);
  pushMatrix();
  translate(0, 90);
  stroke(0);
  strokeWeight(2);
  fill(255, 0, 0);
  noStroke();
  circle(375, 550, 50);
  image(soccer, 350, 525, 50, 50);
  stroke(2);
  line3 = map(ballSpeed, 0.5, 3, 345, 315);
  line4 = map(ballSpeed, 0.5, 3, 350, 325);
  line(line3, 550, 345, 550);
  line(line4, 530, 350, 530);
  line(line4, 570, 350, 570);
  noFill();
  popMatrix();
  fill(0);
  text("0.5", 440, 655);
  text(1, 520, 655);
  text("1.5", 580, 655);
  text(2, 665, 655);
  text(3, 740, 655);
  if (ballSpeed == 0.5) {
    ballSpeedRect(429.5, 615);
  } else if (ballSpeed == 1) {
    ballSpeedRect(498, 615);
  } else if (ballSpeed == 1.5) {
    ballSpeedRect(568, 615);
  } else if (ballSpeed == 2) {
    ballSpeedRect(642, 615);
  } else if (ballSpeed == 3) {
    ballSpeedRect(717, 615);
  }

  //max points
  text("Points to Win", 140, 740);
  text(1,450,740);
  text(3,520,740);
  text(5,590,740);
  text(10,660,740);
  text(inf,735,740);
  if (maxScore == 1) {
    ballSpeedRect(429.5, 700);
  } else if (maxScore == 3) {
    ballSpeedRect(498, 700);
  } else if (maxScore == 5) {
    ballSpeedRect(568, 700);
  } else if (maxScore == 10) {
    ballSpeedRect(642, 700);
  } else {
    ballSpeedRect(717, 700);
  }
  pushMatrix();
  translate(220, 700);
  scale(0.3);
  noStroke();
  if (maxScore == 1) {
    BottomR1(1);
    topR1(1);
  } else if (maxScore == 3) {
    top1(1);
    Bottom1(1);
    BottomR1(1);
    topR1(1);
    mid1(1);
  } else if (maxScore == 5) {
    top1(1);
    topL1(1);
    Bottom1(1);
    BottomR1(1);
    mid1(1);
  } else if (maxScore == 10) {
    top1(1);
    topL1(1);
    BottomL1(1);
    Bottom1(1);
    BottomR1(1);
    topR1(1);
    mid1(0);
    pushMatrix();
    translate(-150, 0);
    BottomR1(1);
    topR1(1);
    popMatrix();
  } else {
    mid1(1);
  }
  popMatrix();
}


void top1(int a) {
  if (a == 0) {
    fill(0);
    //stroke(0);
  } else {
    fill(255, 0, 0);
    //stroke(255, 0, 0);
  }
  rect(490, 15, 70, 15);
  triangle(490, 15, 490, 30, 475, 15);
  triangle(560, 15, 560, 30, 575, 15);
}
void topL1(int a) {
  if (a == 0) {
    fill(58, 201, 57);
    //stroke(0);
  } else {
    fill(255, 0, 0);
    //stroke(255, 0, 0);
  }
  triangle(475, 32, 490, 32, 475, 17);
  rect(475, 32, 15, 46);
  triangle(475, 78, 490, 78, 482.5, 93);
}
void BottomL1(int a) {
  if (a == 0) {
    fill(58, 201, 57);
    //stroke(0);
  } else {
    fill(255, 0, 0);
    //stroke(255, 0, 0);
  }
  triangle(482.5, 97, 475, 112, 490, 112);
  rect(475, 112, 15, 46);
  triangle(475, 158, 490, 158, 475, 173);
}
void Bottom1(int a) {
  if (a == 0) {
    fill(58, 201, 57);
    //stroke(0);
  } else {
    fill(255, 0, 0);
    //stroke(255, 0, 0);
  }
  triangle(490, 160, 475, 175, 490, 175);
  rect(490, 160, 70, 15);
  triangle(560, 160, 560, 175, 575, 175);
}
void BottomR1(int a) {
  if (a == 0) {
    fill(58, 201, 57);
    //stroke(0);
  } else {
    fill(255, 0, 0);
    //stroke(255, 0, 0);
  }
  triangle(560, 158, 575, 173, 575, 158);
  rect(560, 112, 15, 46);
  triangle(560, 112, 575, 112, 567.5, 97);
}
void topR1(int a) {
  if (a == 0) {
    fill(58, 201, 57);
    //stroke(0);
  } else {
    fill(255, 0, 0);
    //stroke(255, 0, 0);
  }
  triangle(567.5, 93, 560, 78, 575, 78);
  rect(560, 32, 15, 46);
  triangle(560, 32, 575, 32, 575, 17);
}
void mid1(int a) {
  if (a == 0) {
    fill(58, 201, 57);
    //stroke(0);
  } else {
    fill(255, 0, 0);
    //stroke(255, 0, 0);
  }
  rect(500, 87.5, 50, 15);
  triangle(500, 87.5, 500, 102.5, 485, 95);
  triangle(550, 87.5, 550, 102.5, 565, 95);
}
