//Sandy Chau
int x=0;
int y=0;
void setup ( ) {
  size(700,500);
  background(200);
  smooth( );
  frameRate(10);
}

color pick() {
  return color(random(255), random(255), random(255));//random color
}

void draw (){
 owl8(0);//1st row of owls
 owl8(100);//2nd row of owls
 owl8(200);//3rd row of owls
 owl8(300);//4th row of owls
 owl8(400);//5th row of owls
 owl8(500);//6th row of owls
 owl8(600);//7th row of owls
 owl8(700);//8th row of owls
}

void owl (int x, int y, color anycolor) {
  stroke(anycolor);//color of line
  strokeWeight(70);// width of line 
  line(x, -35+y, x, -65+y);  // body
  noStroke();
  fill(255);
  ellipse(-17.5+x, -65+y, 35, 35);  // left eye dome
  ellipse( 17.5+x, -65+y, 35, 35);  // right eye dome
  arc(0+x, -65+y, 70, 70, 0, PI);
  fill(0);
  ellipse(-14+x, -65+y, 8, 8);      // left eye
  ellipse( 14+x, -65+y, 8, 8);      // right eye
  quad(0+x, -58+y, 4+x, -51+y, x, -44+y, -4+x, -51+y);  
} 

void owl8 (int y) {
 y= y+100;
 owl(35,y,pick());//first owl 
 owl(105,y,pick());//2nd
 owl(175,y,pick());//3rd
 owl(245,y,pick());//4th  
 owl(315,y,pick());//5th 
 owl(385,y,pick());//6th
 owl(455,y,pick());//7th  
 owl(525,y,pick());//8th 

}


