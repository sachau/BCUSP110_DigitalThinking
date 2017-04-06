// Author: Sandy Chau
// Date: October 28, 2012
// Base code for Homework 9a
int x=0;

void setup()
{
  size(400, 350);  // size of window
  frameRate(10);   // 10 updates per second
}


void draw()
{
  background(128);                // gray background
  trappedBall(25, 50, oneRandomFloat ()); 
  trappedBall(375, 350, oneRandomFloat ());
  
}

void trappedBall(int x, int y, float any)
{
  // the white box that trap the balls
  fill(255);
  rect(x-25, y-50, 50, 50);  // box that trap the balls
  
  // trapped ball
  fill(color( pick()));       // color of the ball
  ellipse(x+random(-20,20), y-random(5,45), any, any ); // the ball
}

for (int x=0; x<8; x=x+1){

trappedBall(25+50*x,50,oneRandomFloat ());

}

float oneRandomFloat(){
    return random (2, 10);
}
color pick() {
  return color(random(255), random(255), random(255));//random color
}

