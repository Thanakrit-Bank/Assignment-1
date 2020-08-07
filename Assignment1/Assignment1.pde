//Thanakrit
//07.08.2020
//Craft balloon with function

void setup() {
  size(640,640);
}

void draw() {
  balloon(320,320,100,100);
}

void balloon(float x,float y,float width,float height) {
  ellipse(x,y,width,height);
  line(x,y+(height/2),x,y+height+50);
}
