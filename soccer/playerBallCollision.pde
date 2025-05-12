void playerBallCollision(float px, float py) {
 if (dist(px,py,ballx,bally) <= 38){
   ballvx = (px - ballx); 
   ballvy = (py - bally);
   intBallvx = ballvx;
   intBallvy = ballvy;
 }
}
