//Thanakrit
//10.08.2020
//Using Array

//class name Balloon
class Balloon {
  float position_X;
  float position_Y;
  float diameter;
  float wind;
  int color_R;
  int color_G;
  int color_B;
  
  //Constructor
  Balloon(float x,float tempD) {
    position_X = x;
    position_Y = height;
    diameter = random(tempD)+50;
    wind = int(random(-150,150));
    color_R = int(random(0,255)); //random number of red color
    color_G = int(random(0,255)); //random number of green color
    color_B = int(random(0,255)); //random number of blue color
  }
  
  //function to make balloon float up
  void ascend() {
    if (mousePressed) {
      position_Y = position_Y; //stop at current y position
    } else if ( position_Y < ((width/2)+height)) {
        position_Y -= 1;
    }
  }    
  
  //function to make balloon move left and right
  void wind() {
    if (mousePressed) {
      position_X = position_X; //stop at current x position
    } else if (wind == 0) {
      wind = int(random(-150,150));
    } else if (wind > 0) {
        position_X += 1;
        wind -= 1;
    } else if (wind < 0) {
        position_X -= 1;
        wind += 1;
    }
  }
  
  //function to create balloon
  void craft_balloon() {
    fill(color_R,color_G,color_B); //fill color to balloon
    ellipse(position_X,position_Y,diameter,diameter);
    line(position_X,position_Y+(diameter/2),position_X,position_Y+(diameter+50));
  }
}

Balloon[] balloon = new Balloon[3];

void setup() {
  size(400,400); //set resolution
  balloon[0] = new Balloon(100,80);  //create object
  balloon[1] = new Balloon(200,80);  //create object
  balloon[2] = new Balloon(300,80);  //create object
}

void draw() {
  background(255); //fill background
  balloon[0].ascend();
  balloon[0].wind();
  balloon[0].craft_balloon();
  
  balloon[1].ascend();
  balloon[1].wind();
  balloon[1].craft_balloon();
  
  balloon[2].ascend();
  balloon[2].wind();
  balloon[2].craft_balloon();
}
