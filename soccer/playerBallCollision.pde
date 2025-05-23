void playerBallCollision(float px, float py) {
  if (dist(px,py,ballx,bally) <= 38){
   ballvx = (px - ballx)*ballSpeed; 
   ballvy = (py - bally)*ballSpeed;
   intBallvx = ballvx;
   intBallvy = ballvy;
 }
}
