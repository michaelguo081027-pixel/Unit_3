/*
Michael Guo
2-1
Mar 31
*/

color red = color(255, 0, 0);
color lime = color(0, 255, 0);
color blue = color(0, 0, 255);
color white = color(255);
color black = color(0);
color gray = color(128);
color selected;

void setup(){
  size(800, 600);
  strokeWeight(5);
  stroke(black);
  selected=white;
}

void draw(){
  background(gray);
  
  //button
  tactile(100, 100, 50);
  fill(red);
  circle(100, 100, 100);
  
  tactile(100, 300, 50);
  fill(lime);
  circle(100, 300, 100);
  
  tactile(100, 500, 50);
  fill(blue);
  circle(100, 500, 100);
  //indicator
  stroke(black);
  fill(selected);
  square(300, 100, 400);
}

void tactile(int x, int y, int r){
  if(dist(x,y,mouseX,mouseY)<r){
    stroke(white);
  } else {
    stroke(black);
  }
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
