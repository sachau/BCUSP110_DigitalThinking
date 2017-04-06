//Sandy Chau
//Homework 10
//November 7,2012
int x = 0;
int y = 0;
int i = 0;
void setup ( ) {
  size(600,600);
  smooth( );
  frameRate(30);

}


void draw ( ) {

  background(200);//grey background

  fill (150,0,0);
  rect (50,50,500,500);
  
  if(mouseY<200){  
   drawOwlsInAROw (200, 8);//row of Owls at 200 
   }
  if(mouseY>400){  
    drawOwlsInAROw (400, 6);//row of Owls at 400
  }
 if(mouseX<200){  
   drawOwlsInAColumn(200,4);//column of Owls at 200
  }   
   if(mouseX<400){  //column of Owls at 400 
   drawOwlsInAColumn(400,6);
  }
}

void owl (int x, int y ) {
  stroke(0);
  strokeWeight(70);
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
void drawOwlsInAROw(int y, int num){
  for (int i=0; i<num; i=i+1){
    int x = 35+i*70;
    owl(x,y);
  }
}

void drawOwlsInAColumn(int x, int num){
    for (int i=0; i<num; i=i+1){
    int y = 100+i*100;
    owl(x,y);
  }
}
  
