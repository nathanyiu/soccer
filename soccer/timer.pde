void timer() {
  if (Mode == Game) {
    timer++;
  } else {
    timer+=0; 
  }
  if (timer%60 == 0) {
    sec++;
  }
  sec10 = sec/10;
  if (sec == 60) {
    min++;
    sec = 0;
  }
  min10 = min/10;
  timing();
}




void timing() {
  pushMatrix();
  scale(0.25);
  translate(2143, 187);
  if (sec%10 == 0) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (sec%10 == 1) {
    top(0);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (sec%10 == 2) {
    top(1);
    topL(0);
    BottomL(1);
    Bottom(1);
    BottomR(0);
    topR(1);
    mid(1);
  } else if (sec%10 == 3) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (sec%10 == 4) {
    top(0);
    topL(1);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (sec%10 == 5) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (sec%10 == 6) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (sec%10 == 7) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (sec%10 == 8) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (sec%10 == 9) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  //---------------------------------------------------------------
  translate(-170, 0);
  if (sec10 == 0) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (sec10 == 1) {
    top(0);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (sec10 == 2) {
    top(1);
    topL(0);
    BottomL(1);
    Bottom(1);
    BottomR(0);
    topR(1);
    mid(1);
  } else if (sec10 == 3) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (sec10 == 4) {
    top(0);
    topL(1);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (sec10 == 5) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  }
  //------------------------------------------------
  translate(-190, 0);
  if (min%10 == 0) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (min%10 == 1) {
    top(0);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (min%10 == 2) {
    top(1);
    topL(0);
    BottomL(1);
    Bottom(1);
    BottomR(0);
    topR(1);
    mid(1);
  } else if (min%10 == 3) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (min%10 == 4) {
    top(0);
    topL(1);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (min%10 == 5) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (min%10 == 6) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (min%10 == 7) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (min%10 == 8) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (min%10 == 9) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  translate(-160, 0);
  if (min10 == 0) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (min10 == 1) {
    top(0);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (min10 == 2) {
    top(1);
    topL(0);
    BottomL(1);
    Bottom(1);
    BottomR(0);
    topR(1);
    mid(1);
  } else if (min10 == 3) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (min10 == 4) {
    top(0);
    topL(1);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (min10 == 5) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (min10 == 6) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(0);
    mid(1);
  } else if (min10 == 7) {
    top(1);
    topL(0);
    BottomL(0);
    Bottom(0);
    BottomR(1);
    topR(1);
    mid(0);
  } else if (min10 == 8) {
    top(1);
    topL(1);
    BottomL(1);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  } else if (min10 == 9) {
    top(1);
    topL(1);
    BottomL(0);
    Bottom(1);
    BottomR(1);
    topR(1);
    mid(1);
  }
  popMatrix();
}
