/*
Michael Guo
2-1
Apr 7
*/

color white = #FFFFFF;
color black = #000000;
color silver = #C0C0C0;
color grey = #808080;
color red = #FF0000;
color lime = #00FF00;
color blue = #0000FF;
color yellow = #FFFF00;
color magenta = #FF00FF;
color cyan= #00FFFF;
color selected;

void setup(){
  size(1200, 800);
  strokeWeight(5);
  stroke(black);
  selected=black;
}

void draw(){
  background(silver);
  fill(grey);
  rect(0, 0, 1200, 200);
  //button
  tactile(850, 50, 25);
  fill(black);
  circle(850, 50, 50);
  
  tactile(950, 50, 25);
  fill(red);
  circle(950, 50, 50);
  
  tactile(1050, 50, 25);
  fill(lime);
  circle(1050, 50, 50);
  
  tactile(1150, 50, 25);
  fill(blue);
  circle(1150, 50, 50);
  
  tactile(850, 125, 25);
  fill(white);
  circle(850, 125, 50);
  
  tactile(950, 125, 25);
  fill(yellow);
  circle(950, 125, 50);
  
  tactile(1050, 125, 25);
  fill(magenta);
  circle(1050, 125, 50);
  
  tactile(1150, 125, 25);
  fill(cyan);
  circle(1150, 125, 50);
  //indicator
  stroke(black);
  fill(selected);
  square(700, 50, 75);
}

void tactile(int x, int y, int r){
  if(dist(x,y,mouseX,mouseY)<r){
    stroke(white);
  } else {
    stroke(black);
  }
}  

void mouseReleased(){
  if(dist(850,50,mouseX,mouseY)<25){
    selected=black;
  }
  if(dist(950,50,mouseX,mouseY)<25){
    selected=red;
  }
  if(dist(1050,50,mouseX,mouseY)<25){
    selected=lime;
  }
  if(dist(1150,50,mouseX,mouseY)<25){
    selected=blue;
  }
  if(dist(850,125,mouseX,mouseY)<25){
    selected=white;
  }
  if(dist(950,125,mouseX,mouseY)<25){
    selected=yellow;
  }
  if(dist(1050,125,mouseX,mouseY)<25){
    selected=magenta;
  }
  if(dist(1150,125,mouseX,mouseY)<25){
    selected=cyan;
  }
}
