//Thanakrit
//10.08.2020
//Using class to create balloon

//class name Balloon
class Balloon {
  float position_X;
  float position_Y;
  float diameter;
  
  //Constructor
  Balloon(float x,float tempD) {
    position_X = x;
    position_Y = height;
    diameter = random(tempD)+50;
  }
  
  //function to make balloon float up
  void ascend() {
    if ( position_Y < ((width/2)+height)) {
        position_Y -= 1;
    }
  }    
  
  //function to create balloon
  void craft_balloon() {
    fill(255,100,200); //fill color to balloon
    ellipse(position_X,position_Y,diameter,diameter);
    line(position_X,position_Y+(diameter/2),position_X,position_Y+(diameter+50));
  }
}

Balloon balloon_1;

void setup() {
  size(400,400); //set resolution
  balloon_1 = new Balloon(200,80);  //create object
}

void draw() {
  background(255); //fill background
  balloon_1.ascend();
  balloon_1.craft_balloon();
}
