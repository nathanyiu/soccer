void Pause() {
  stroke(0);
  strokeWeight(2);
  while(i < pauseBack) {
    fill(58,201,57,120);
    rect(0,0,1200,880);
    i++;
  }
  if (dist(mouseX,mouseY,50,50)<25) {
    stroke(255);
  } else {
    stroke(0); 
  }
  fill(255,0,0);
  circle(50,50,50.5);
  stroke(0);
  fill(255);
  rect(35,45,30,20);
  triangle(33,45.5,68,45.5,50,35.2);
  //pause
  if (dist(mouseX,mouseY,110,50)<25) {
    stroke(255);
  } else {
    stroke(0); 
  }
  fill(0,0,255);
  circle(110,50,50);
  pauseLetters();
}
