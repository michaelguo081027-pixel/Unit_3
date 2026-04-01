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
  tactile(50, 150, 50, 150);
  fill(yellow);
  square(50, 50, 100);
  
  tactile(50, 150, 250, 350);
  fill(magenta);
  square(50, 250, 100);
  
  tactile(50, 150, 450, 550);
  fill(cyan);
  square(50, 450, 100);
  //indicator
  stroke(black);
  fill(selected);
  square(300, 100, 400);
}

void tactile(int x1, int x2, int y1, int y2){
  if(mouseX>x1 && mouseX<x2 && mouseY>y1 && mouseY<y2){
    stroke(white);
  } else {
    stroke(black);
  }
}  

void mouseReleased(){
  if(mouseX>50 && mouseX<150 && mouseY>50 && mouseY<150){
    selected=yellow;
  }
  if(mouseX>50 && mouseX<150 && mouseY>250 && mouseY<350){
    selected=magenta;
  }
  if(mouseX>50 && mouseX<150 && mouseY>450 && mouseY<550){
    selected=cyan;
  }
}
