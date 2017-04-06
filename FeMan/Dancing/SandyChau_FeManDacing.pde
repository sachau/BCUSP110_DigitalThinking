//Sandy Chau
// November 11,2012
//Homework 11
PFont font1;
PImage feMan;
PImage feMan2;
int sizeFe=150;

void setup(){
  size(500,500);
  background(25,25,255);
 feMan = loadImage("FeMan.png");//Normal FeMan
 feMan2 = loadImage("FeMan2.png");//Happy/dancing FeMan
 font1=loadFont("Andalus-48.vlw");//loads font
  textFont(font1);
  
}
color pick() {
  return color(random(255), random(255), random(255));//random color
}
void draw(){
  background(pick());//flasing background
  Iron(); 
  fill(0);
  float i = random(0, 400);  // n is a random number between 50 to 500
  float z =random(0, 300);  // n is a random number between 50 to 500
  text("Dance!",i,z);//text bounces around
  rect (0,330,500,400);//floor

}
//FeMan dancing
void Iron(){
if (mouseY<250){
  image (feMan,200,200,sizeFe,sizeFe);//normal face
  }
  if (mouseY>250){
  image (feMan2,200,200,sizeFe,sizeFe);//happy face
 }
}

