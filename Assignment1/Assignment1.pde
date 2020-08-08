//Thanakrit
//08.08.2020
//Add simple animation (float up)

float y;

void setup() {
  size(640,640);
}

void draw() {
  background(255);
  balloon(320,320-y,100,100);
  y += 1;
}

void balloon(float x,float y,float width,float height) {
  ellipse(x,y,width,height);
  line(x,y+(height/2),x,y+height+50);
}
