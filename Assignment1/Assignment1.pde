//Thanakrit
//08.08.2020
//Add simple animation (shake)

float x;
float y;

void setup() {
  size(640,640);
}

void draw() {
  background(255);
  if ( y < ((width/2)+height)) {
    y -= 1;
  }
  x = random(-2,2);
  balloon(320+x,height+y,100,100);
}

void balloon(float x,float y,float width,float height) {
  ellipse(x,y,width,height);
  line(x,y+(height/2),x,y+height+50);
}
