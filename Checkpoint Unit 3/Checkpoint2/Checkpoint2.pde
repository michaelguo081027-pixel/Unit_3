/*
Michael Guo
2-1
Apr 1
*/

color yellow = #FFFF00;
color magenta = #FF00FF;
color cyan= #00FFFF;
color white = #FFFFFF;
color black = #000000;
color silver = #C0C0C0;
color selected;

void setup(){
  size(800, 600);
  strokeWeight(5);
  stroke(black);
  selected=white;
}

void draw(){
  background(silver);
  
  //button
  tactile(100, 100, 50);
  fill(yellow);
  circle(100, 100, 100);
  
  tactile(100, 300, 50);
  fill(magenta);
  circle(100, 300, 100);
  
  tactile(100, 500, 50);
  fill(cyan);
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
    selected=yellow;
  }
  if(dist(100,300,mouseX,mouseY)<50){
    selected=magenta;
  }
  if(dist(100,500,mouseX,mouseY)<50){
    selected=cyan;
  }
}
