float angle = 0;
float frames = 120;
float step = TWO_PI / frames;

void setup(){
  size(400,400);
  background(255);
  strokeWeight(20);
}

void draw(){
  background(255);
  
  float x = sin(angle) * 100;
  float y = cos(angle) * 100;
  
  //to center the circle
  x += 200;
  y += 200;
  
  point(x, y);
  
  saveFrame("###.png");

  if(angle == 0) println("Begin position\t", x, y);
  else if(angle >= TWO_PI){
    println("End position\t", x, y);
    println("Total frames drawn:\t", frameCount);
    noLoop();
  }
  
  angle += step;
}
