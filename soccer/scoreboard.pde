void scoreboard(int teamA, int teamB) {
  noStroke();
  fill(80,80,80);
  rect(230, 0, 740, 190);
  fill(0);
  rect(240, 10, 130, 170);
  rect(380, 10, 130, 170);
  rect(830, 10, 130, 170);
  rect(690, 10, 130, 170);
  
  rect(520,45,32.5,52.5);
  rect(560,45,32.5,52.5);
  rect(607.5,45,32.5,52.5);
  rect(650,45,32.5,52.5);
  fill(255);
  circle(600,60,5);
  circle(600,82.5,5);
  fill(255, 0, 0);
  stroke(255, 0, 0);
  strokeWeight(0);
  teamA = teamA % 10;
  teamB = teamB % 10;
  scoreA10 = scoreA/10;
  scoreB10 = scoreB/10;
  if (scoreA > 99) {
    scoreA = 0; 
  }
  if (scoreB > 99) {
    scoreB = 0; 
  }
  pushMatrix();
  translate(-80, 0);
  if (teamA == 0) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (teamA == 1) {
    top(0);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (teamA == 2) {
    top(1);
    topL(0);
    BottomL(1);
    Bottom(1);
    BottomR(0);
    topR(1);
    mid(1);
  } else if (teamA == 3) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (teamA == 4) {
    top(0);
    topL(1);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (teamA == 5) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (teamA == 6) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (teamA == 7) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (teamA == 8) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (teamA == 9) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  popMatrix();
  pushMatrix();
  translate(370, 0);
  if (teamB == 0) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (teamB == 1) {
    top(0);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (teamB == 2) {
    top(1);
    topL(0);
    BottomL(1);
    Bottom(1);
    BottomR(0);
    topR(1);
    mid(1);
  } else if (teamB == 3) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (teamB == 4) {
    top(0);
    topL(1);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (teamB == 5) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (teamB == 6) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (teamB == 7) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (teamB == 8) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (teamB == 9) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  popMatrix();

  pushMatrix();
  translate(-160, 0);
  pushMatrix();
  translate(-60, 0);
  if (scoreA10 == 0) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (scoreA10 == 1) {
    top(0);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (scoreA10 == 2) {
    top(1);
    topL(0);
    BottomL(1);
    Bottom(1);
    BottomR(0);
    topR(1);
    mid(1);
  } else if (scoreA10 == 3) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (scoreA10 == 4) {
    top(0);
    topL(1);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (scoreA10 == 5) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (scoreA10 == 6) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (scoreA10 == 7) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (scoreA10 == 8) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (scoreA10 == 9) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  popMatrix();
  pushMatrix();
  translate(390, 0);
  if (scoreB10 == 0) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (scoreB10 == 1) {
    top(0);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (scoreB10 == 2) {
    top(1);
    topL(0);
    BottomL(1);
    Bottom(1);
    BottomR(0);
    topR(1);
    mid(1);
  } else if (scoreB10 == 3) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (scoreB10 == 4) {
    top(0);
    topL(1);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (scoreB10 == 5) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (scoreB10 == 6) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (scoreB10 == 7) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (scoreB10 == 8) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (scoreB10 == 9) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  popMatrix();
  popMatrix();
  timer();
}
void top(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  rect(490, 15, 70, 15);
  triangle(490, 15, 490, 30, 475, 15);
  triangle(560, 15, 560, 30, 575, 15);
}
void topL(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  triangle(475, 32, 490, 32, 475, 17);
  rect(475, 32, 15, 46);
  triangle(475, 78, 490, 78, 482.5, 93);
}
void BottomL(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  triangle(482.5, 97, 475, 112, 490, 112);
  rect(475, 112, 15, 46);
  triangle(475, 158, 490, 158, 475, 173);
}
void Bottom(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  triangle(490, 160, 475, 175, 490, 175);
  rect(490, 160, 70, 15);
  triangle(560, 160, 560, 175, 575, 175);
}
void BottomR(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  triangle(560, 158, 575, 173, 575, 158);
  rect(560, 112, 15, 46);
  triangle(560, 112, 575, 112, 567.5, 97);
}
void topR(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  triangle(567.5, 93, 560, 78, 575, 78);
  rect(560, 32, 15, 46);
  triangle(560, 32, 575, 32, 575, 17);
}
void mid(int a) {
  if (a == 0) {
    fill(0);
    stroke(0);
  } else {
    fill(255, 0, 0);
    stroke(255, 0, 0);
  }
  rect(500, 87.5, 50, 15);
  triangle(500, 87.5, 500, 102.5, 485, 95);
  triangle(550, 87.5, 550, 102.5, 565, 95);
}
