float radius = 3;
float smooth = 0.1;
float time = 0;
float frames = 400;
int pointAmount = 100;

float step = TWO_PI / frames;

Fly[] flies = new Fly[pointAmount];
Fly queen = new Fly();

void setup(){
  size(600,600);
  background(30);
  colorMode(HSB);
  
  for(int i=0; i<pointAmount; i++){
    flies[i] = new Fly();
  }
}

void draw(){
  background(30);
  
  queen.move();
  
  for(Fly f : flies){
    f.move();
    

    if(dist(queen.x, queen.y, f.x, f.y) < 100){
      stroke(f.col, 255, 255);
      strokeWeight(5);
      line(queen.x, queen.y, f.x, f.y);
    }
    else{
      stroke(100);
    }
    
    strokeWeight(10);
    f.draw();
    
    stroke(255);
    strokeWeight(30);
    queen.draw();
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
