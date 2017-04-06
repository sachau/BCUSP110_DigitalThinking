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
boolean block2Visible =true;
float block2X=random(0,350);
float block2Y=random(50,200);
boolean block3Visible =true;
float block3X=random(0,350);
float block3Y=random(50,200);
boolean block4Visible =true;
float block4X=random(0,350);
float block4Y=random(50,200);
boolean block5Visible =true;
float block5X=random(0,350);
float block5Y=random(50,200);
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
//brick #1
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
//brick #2
    if  (block2Visible) {
    fill (255,100,255);
    rect(block2X, block2Y, 50, 10);//makes the block appear
    }
   if  (block2Visible) {
   rect(block2X, block2Y, 50, 10);
   if (ballPaddleCollide( posX,posY,30,block2X,block2Y,50,10)) {//if ball collides, brick disappears
   block2Visible = false; // don’t want to draw block again!
   velocityY *= -1; // flip the y velocity of the ball
  }
}    
//brick#3
    if  (block3Visible) {
    fill (205,200,25);
    rect(block3X, block3Y, 50, 10);//makes the block appear
    }
   if  (block3Visible) {
   rect(block3X, block3Y, 50, 10);
   if (ballPaddleCollide( posX,posY,30,block3X,block3Y,50,10)) {//if ball collides, brick disappears
   block3Visible = false; // don’t want to draw block again!
   velocityY *= -1; // flip the y velocity of the ball
  }
} 
//brick#4
    if  (block4Visible) {
    fill (5,200,105);
    rect(block4X, block4Y, 50, 10);//makes the block appear
    }
   if  (block4Visible) {
   rect(block4X, block4Y, 50, 10);
   if (ballPaddleCollide( posX,posY,30,block4X,block4Y,50,10)) {//if ball collides, brick disappears
   block4Visible = false; // don’t want to draw block again!
   velocityY *= -1; // flip the y velocity of the ball
  }
} 
//brick#5    
if  (block5Visible) {
    fill (255,100,5);
    rect(block5X, block5Y, 50, 10);//makes the block appear
    }
   if  (block5Visible) {
   rect(block5X, block5Y, 50, 10);
   if (ballPaddleCollide( posX,posY,30,block5X,block5Y,50,10)) {//if ball collides, brick disappears
   block5Visible = false; // don’t want to draw block again!
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
void mousePressed() {
   block1Visible = true;//makes the brick reappear 
   block2Visible = true;
   block3Visible = true;
   block4Visible = true;
   block5Visible = true;
   block1X=random(0,350);//random position of the brick
   block1Y=random(50,200);//random position of the brick 
   block2X=random(0,350);
   block2Y=random(50,200);
   block3X=random(0,350);
   block3Y=random(50,200);
   block4X=random(0,350);
   block4Y=random(50,200);
   block5X=random(0,350);
   block5Y=random(50,200);
   posX = random (100,300);//random position of the ball
   posY= random (200,300);//random position of the ball
  redraw();//resets game
}
