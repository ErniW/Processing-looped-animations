float sine = 0;
float frames = 120;
float step = TWO_PI / frames;

void setup(){
  size(400,400);
  background(255);
  strokeWeight(20);
}

void draw(){
  background(255);
  
  float x = sin(sine) * 100;
  x += 200;
  
  point(x, 200);
  
  saveFrame("###.png");

  if(sine == 0) println("Begin position\t", x);
  else if(sine >= TWO_PI){
    println("End position\t", x);
    println("Total frames drawn:\t", frameCount);
    noLoop();
  }
  
  sine += step;
}
