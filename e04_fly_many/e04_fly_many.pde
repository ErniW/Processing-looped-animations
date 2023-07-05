float radius = 0.5;
float smooth = 0.3;
float time = 0;
float frames = 180;
int pointAmount = 100;

float step = TWO_PI / frames;

Fly[] flies = new Fly[pointAmount];

void setup(){
  size(600,600);
  background(255);
  strokeWeight(20);
  stroke(0);
  
  for(int i=0; i<pointAmount; i++){
    flies[i] = new Fly();
  }
}

void draw(){
  background(255);
  
  for(Fly f : flies){
    f.move();
    f.draw();
  }

  saveFrame("###.png");
  
  time += step;

  if(time == step) println("Begin position\t", flies[0].x, flies[0].y);
  else if(time >= TWO_PI){
    println("End position\t", flies[0].x, flies[0].y);
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
