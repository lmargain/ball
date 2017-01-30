int maxBalls = 420;
Ball[] balls;

void setup() {
  size(1100, 800);
  background(60,25,36);
  loadBalls();
}

void draw() {
   background(60,25,36);
  for(int i = 0; i< maxBalls; i++){
    balls[i].render();
    balls[i].update();
    balls[i].checkEdges();
  }
}

void loadBalls() {
  balls = new Ball[maxBalls];
for(int i = 0; i < maxBalls; i++){
    int r = (int)(Math.random()*40)+20;
    int x = (int)(random(width));
    int y = (int)(random(height));
    color c = color(random(255), random(255), random(255));
    balls[i] = new Ball(r, x, y, c);
  } 
}

