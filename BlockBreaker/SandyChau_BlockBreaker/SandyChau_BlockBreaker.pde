//Sandy Chau  
//November 14,2012
//Homework 12
PImage ball;
float posX = random (100,300);
float posY= random (200,300);
float velocityX = random (-2,2);
float velocityY = random (2,3);
boolean block1Visible =true;
float block1X=random(0,350);
float block1Y=random(50,200);
void setup(){
  size(400,500);
  frameRate (60);
  ball = loadImage("soccer.png");
}
void draw() {
  posX=posX+velocityX;
  posY=posY+velocityY;
  background (200);
  image (ball,posX,posY,30,30);//Ball
  if (posY > 470){
    velocityY *= -1;}//keeps ball from bottom
  if (posY <0){
    velocityY *= -1;}//keeps ball from top
  if (posX > 370){
    velocityX *= -1;}//keeps ball from right
  if (posX <0){
    velocityX *= -1;}  //keeps ball from left
   fill(200,30,200); 
   rect(mouseX,460,60,8);//paddle
   if (ballPaddleCollide(posX,posY,30,mouseX,460,60,8)){
        velocityY *= -1;}//when ball meets paddle, velocity decreases
   if  (block1Visible) {
    fill (100,100,255);
    rect(block1X, block1Y, 50, 10);//makes the block appear
    }
   if  (block1Visible) {
   rect(block1X, block1Y, 50, 10);
   if (ballPaddleCollide( posX,posY,30,block1X,block1Y,50,10)) {//if ball collides, brick disappears
   block1Visible = false; // don’t want to draw block again!
   velocityY *= -1; // flip the y velocity of the ball
  }
}
           
}

boolean ballPaddleCollide(float ballX, float ballY, float
ballSize, float paddleX, float paddleY, float paddleWidth,
float paddleHeight) {
  float paddleMaxX = paddleX + paddleWidth;
  if (ballX < paddleMaxX) {
    float ballMaxX = ballX + ballSize;
    if (paddleX < ballMaxX) {
      float paddleMaxY = paddleY + paddleHeight;
      if (ballY < paddleMaxY) {
        return (paddleY < (ballY + ballSize));
      }
    }
  }
  return false;
}
