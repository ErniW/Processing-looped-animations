void setup(){
  size(600,600);
  
  float step = 0.01;
  float dx = 0;
  
  for(int col=0; col<width; col++){
    float dy = 0;
    dx += step;
    
    for(int row=0; row<height; row++){
      dy += step;
      
      int x = col;
      int y = row;
      float n = noise(dx, dy) * 255;
      set(x,y,color(n));     
    }
  }
  
  noStroke();
  fill(0);
  rect(0,400,width,200);
}
float steps =  TWO_PI /200;
float stepsLines = 600 / 200;
float time = 0;
float xpos = 0;
float ypos = 0;

void draw(){
  float x = sin(time) * 80;
  float y = cos(time) * 80;
  float smooth = 0.01;
  
  float xx = x + 200;
  float xy = y + 200;
  
  float yx = x + 400;
  float yy = y + 200;
  
  stroke(255,0,0);
  strokeWeight(5);
  point(xx, xy);
  stroke(0,255,0);
  point(yx, yy);

  float noiseRed = noise(xx * smooth , xy * smooth);
  float noiseGreen = noise(yx * smooth  , yy * smooth);
  
  stroke(255,0,0);
  point(xpos, height - noiseRed*200);
  stroke(0,255,0);
  point(ypos, height - noiseGreen*200);
  
  if(time == 0) {  
    println("Beginning position\t", noiseRed * width, noiseGreen * height);
  }
  else if(time >= TWO_PI){
     println("Ending position\t", noiseRed * width, noiseGreen * height);
     noLoop();
  }
  
  xpos += stepsLines;
  ypos += stepsLines;
  time += steps;
}
