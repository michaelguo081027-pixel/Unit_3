/*
Michael Guo
2-1
Mar 12
*/

color red = color(255, 0, 0);
color lime = color(0, 255, 0);
color blue = color(0, 0, 255);
color white = color(255);
color selected;

void setup(){
  size(800, 600);
  strokeWeight(5);
  selected=white;
}

void draw(){
  background(white);
  
  //buttons
  fill(red);
  circle(100, 100, 100);
  fill(lime);
  circle(100, 300, 100);
  fill(blue);
  circle(100, 500, 100);
  //indicator
  fill(selected);
  square(300, 100, 400);
}

void mouseReleased(){
  if(dist(100,100,mouseX,mouseY)<50){
    selected=red;
  }
  if(dist(100,300,mouseX,mouseY)<50){
    selected=lime;
  }
  if(dist(100,500,mouseX,mouseY)<50){
    selected=blue;
  }
}
