float radius = 5;
float smooth = 0.1;
float time = 0;
float frames = 360;

float step = TWO_PI / frames;

void setup(){
  size(600,600);
  background(255);
  strokeWeight(20);
  stroke(0);
}

void draw(){
  background(255);
  
  float noiseX = circularNoise(100, 100, time);
  float noiseY = circularNoise(200, 200, time);
  float x = noiseX * width;
  float y = noiseY * height;
  
  point(x, y);
  
  saveFrame("###.png");
  
  time += step;

  if(time == 0) println("Begin position\t", x, y);
  else if(time >= TWO_PI){
    println("End position\t", x, y);
    println("Total frames drawn:\t", frameCount);
    noLoop();
  }
}

float circularNoise(float offsetX, float offsetY, float time){
  
  float x = offsetX + (sin(time) * radius);
  float y = offsetY + (cos(time) * radius);
  
  float n = noise(x * smooth, y * smooth);
  
  return n;
}
