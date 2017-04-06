//Sandy Chau
// November 11,2012
//Homework 11
int x=0;
 int z=0;
 int i=0;
void setup (){
  size (500,500);
  frameRate (30);//slows down the fishes
}

void draw (){
  background (150,150,255); 
  for (int i=50; i<500; i=i+100){//bottom batch of fishes
    int y= i;
  swimmingFish (y);
  }

  for (int i=100; i<500; i=i+100){//top batch of fishes
    int y= i;
  swimmingFish2 (y);
  }
}
//group of swimming fishes
void swimmingFish(int y){
   x=x+1;
  if (x<500){
    fish2 (50+x,y);//going right
    }else{
    z=z+1;
    fish (500-z,y);//coming back 
    }

}
//group of swimming fishes 
void swimmingFish2(int y){
   x=x+1;
  if (x<500){
    fish2 (0+x,y);//going right
    }else{
    z=z+1;
    fish (550-z,y);//coming back
    }

}
//Fish going left
void fish (int x,int y){
  stroke (0);
  strokeWeight (5);//outline the fish
  fill (250,150,55);//set to orange
  ellipse (x,y,50,30);//body of fish
  triangle (x+25,y,x+53, y-13, x+53, y+13);//tail 
  //Bubbles   
  fill (255);//set to white
  ellipse (x-35,y,10,10);
  ellipse (x-40,y-15,15,15); 
  ellipse (x-43,y-30,20,20);
  ellipse (x-35,y-40,20,20);
  ellipse (x-25,y-50,20,20);
}
//Fish going right
void fish2 (int x, int y){
  stroke (0);
  strokeWeight (5);//outline the fish
  fill (250,150,55);//color set to orange
  ellipse (x,y,50,30);//body of fish
  triangle (x-25,y,x-53, y+13, x-53, y-13);//tail
  //Bubbles 
  fill (255);//Color set to white 
  ellipse (x+35,y,10,10);
  ellipse (x+40,y-15,15,15);
  ellipse (x+43,y-30,20,20);
  ellipse (x+35,y-40,20,20);
  ellipse (x+25,y-50,20,20);
}

