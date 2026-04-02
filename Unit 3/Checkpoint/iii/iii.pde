/*
Michael Guo
2-1
Apr 2
*/

float x;
float d;

void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(5);
  x=200;
  d=x-200;
}

void draw() {
  background(255);
  line(200, 50, 600, 50);
  fill(0);
  circle(x, 50, 50);
  textSize(20);
  text("r=", 465, 290);
  text(d/2, 480, 290);
  noFill();
  circle(400, 300, d);
  line(400, 300, 400+d/2, 300);
}

void mouseDragged(){
  slider();
}

void mouseReleased(){
  slider();
}

void slider() {
  if (mouseX > 200 && mouseX <600 && mouseY > 25 && mouseY < 75){
    x=mouseX;
  }
  
  d = map(x, 200, 600, 0, 400);
}
