//Sandy Chau
// November 11,2012
//Homework 11

PFont font1;
int walk = 0;
float x = 0;
int stepl = 0;
int stepr = 0;
int y =0;
int c=0;
int g=0;
int i=0;
void setup(){
  size(1000,800);
  background(255);
  noStroke();
  font1=loadFont("ArialNarrow-Bold-48.vlw");
  textFont(font1);
}
void draw(){
  FeMan();
  y=y+2;
  laser();
  fill(50,220,50);//Color Green
  rect(0,475,1000,500);//Land
 monster();
 fill(0);
 text("Pew Pew Pew!",400,80);
 
}
void FeMan(){
  background(255);
  noStroke();
//Body  
  fill (200,0,0);
  ellipse(150+x,350,120,130);//body
  fill (100,100,255);
  ellipse (195+x,332,22,15);//Arc Reactor.....
//left leg
  stroke(200,0,0);
  strokeWeight(50);
  line(150+x,420,150+x+stepr,450);
//right leg
 
  line(150+x,420,150+x+stepl,450);
  
//Arm
  strokeWeight(40);
  line(150+x,350,220+x,350);
  noStroke();
 //Head
  fill (200,0,0);
  ellipse(150+x,250,120,120);//head
  stroke(255,255,50);
  strokeWeight(21);
  line(180+x,210,200+x,260);//yellow part top
  line(200+x,260,180+x,290);//yellow part bottom
  noStroke();
  smooth();
  fill(0);
  ellipse (150+x,250,25,25);//black outline for ear
  fill (200,0,0);
  ellipse (150+x,250,20,20);//ear
  fill (0);
  ellipse(200+x,250,10,20);//black eye
  fill(255);
  ellipse (197+x,245,5,5);//white dot on eye
  if (walk == 0) {                // which leg is moving
    stepl = stepl + 2;            // left, go faster
    stepr = stepr - 2;
  } else {
    stepr = stepr + 2;            // right, go faster
    stepl = stepl - 2;
  }
  if (abs(stepl-stepr) >= 100) {     // stride over with?
    walk = 1-walk;                  // yes, switch legs
  }
 x = x + 1;
  y=y+1;
}
void laser(){
 y=y+1;
 fill(200,200,255);
 triangle(238+x,350,250+y+x,300-y,250+y+x,390+y);
}

void monster(){
   i=i+1;
  fill(0+i);
  ellipse (650,375,150,150);//body
  fill (30+i);
  ellipse (610,350,25,25);//eye
  stroke(30+i);
  strokeWeight(3);
  line (600,330,630,300);//angry eyebrow
  line (600,400,630,400);//mouth
}
