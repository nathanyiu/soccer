void playerMovement() {
  // player1a movement
  if (wkey == true && OneTouch1BTop == false && OneTouch2Top == false && OneTouch2BTop == false && player1B == -1 && player1y >= 228 && Mode == Game) {
    player1y += vx;
  }
  if (akey == true && OneTouch1BLeft == false && OneTouch2Left == false && OneTouch2BLeft == false && player1B == -1 && Mode == Game) {
    player1x += vx;
  }
  if (skey == true && OneTouch1BDown == false && OneTouch2Down == false && OneTouch2BDown == false && player1B == -1 && player1y <= 850 && Mode == Game) {
    player1y -= vx;
  }
  if (dkey == true && OneTouch1BRight == false && OneTouch2Right == false && OneTouch2BRight == false && player1B == -1 && Mode == Game) {
    player1x -= vx;
  }
  //player 2a movement
  if (upkey == true && TwoTouch2BTop == false && OneBTouch2Down == false && OneTouch2Down == false && player2B == -1 && player2y >= 228 && Mode == Game ) {
    player2y += vx;
  }
  if (leftkey == true && TwoTouch2BLeft == false && OneBTouch2Right == false && OneTouch2Right == false && player2B == -1 && Mode == Game) {
    player2x += vx;
  }
  if (downkey == true && TwoTouch2BDown == false && OneBTouch2Top == false && OneTouch2Top == false && player2B == -1 && player2y <= 850 && Mode == Game) {
    player2y -= vx;
  }
  if (rightkey == true && TwoTouch2BRight == false && OneBTouch2Left == false && OneTouch2Left == false && player2B == -1 && Mode == Game) {
    player2x -= vx;
  }
  
  //player 1b movement
  if (wkey == true && OneBTouch2Top == false && OneTouch1BDown == false && OneBTouch2BTop == false  && OneBTouch2BTop == false && player1B == 1 && player1By >= 228 && Mode == Game) {
    player1By += vx;
  }
  if (akey == true && OneBTouch2Left == false && OneTouch1BRight == false && OneTouch2BLeft == false && OneBTouch2BLeft == false && player1B == 1 && Mode == Game) {
    player1Bx += vx;
  }
  if (skey == true && OneBTouch2Down == false && OneTouch1BTop == false && OneTouch2BDown == false && OneBTouch2BDown == false && player1B == 1 && player1By <= 850 && Mode == Game) {
    player1By -= vx;
  }
  if (dkey == true && OneBTouch2Right == false && OneTouch1BLeft == false && OneTouch2BRight == false && OneBTouch2BRight == false && player1B == 1 && Mode == Game) {
    player1Bx -= vx;
  }
  
  //player 2b movement
  if (upkey == true && TwoTouch2BDown == false && OneTouch2BDown == false && OneBTouch2BDown == false && player2B == 1 && player2By >= 228 && Mode == Game) {
    player2By += vx;
  }
  if (leftkey == true && TwoTouch2BRight == false && OneTouch2BRight == false && OneBTouch2BRight == false && player2B == 1 && Mode == Game) {
    player2Bx += vx;
  }
  if (downkey == true && TwoTouch2BTop == false && OneTouch2BTop == false && OneBTouch2BTop == false && player2B == 1 && player2By <= 850 && Mode == Game) {
    player2By -= vx;
  }
  if (rightkey == true && TwoTouch2BLeft == false && OneTouch2BLeft == false && OneBTouch2BLeft == false && player2B == 1 && Mode == Game) {
    player2Bx -= vx;
  }
}
