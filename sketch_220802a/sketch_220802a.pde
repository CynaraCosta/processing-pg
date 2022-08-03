float init_x = 30;
float init_y = 350 - 30;
int velocity_x = 7;
int velocity_y = 10;
int r = 30;
float gravity = 0.5;
int xdirection = 1;
int ydirection = 1;

void setup(){
  size(500, 350);
  smooth();
  noStroke();
}

void draw(){
  
  background(155);
  
  init_x = init_x + (velocity_x * xdirection);
  init_y = init_y + (velocity_y * ydirection);
  
  // translacao
  applyMatrix(  1.0, 0.0, init_x + (velocity_x * xdirection),
                0.0, 1.0, init_y + (velocity_y * ydirection));  
  
  velocity_y += gravity;
  
  if(init_x + r/2 > width || init_x - r/2 < 0){
    xdirection *= -1;
  }
  
  if(init_y > height - r/2 || init_y < 200){
    ydirection *= -1;
  }
  ellipse(0, -15, r, r);
}
