class Fly{
  float xOffsetX = random(1, 10000);
  float xOffsetY = random(1, 10000);
  float yOffsetX = random(1, 10000);
  float yOffsetY = random(1, 10000);
  float x;
  float y;
  
  Fly(){

  }
  
  void move(){
    float noiseX = circularNoise(xOffsetX, xOffsetY, time);
    float noiseY = circularNoise(yOffsetX, yOffsetY, time);
    
    x = noiseX * width;
    y = noiseY * height;
  }
  
  void draw(){
    point(x,y);
  }
}
