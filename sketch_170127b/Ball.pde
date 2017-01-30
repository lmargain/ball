class Ball {
  int radius = 0;
  int xLoc = 0;
  int yLoc = 0;
  color clr = color(0,0,0);
  int xSpeed = (int)(Math.random()*5)+1;
  int ySpeed = (int)(Math.random()*5)+1;
  
  Ball(int r, int x, int y, color c){
    radius = r;
    xLoc = x;
    yLoc = y;
    clr =c;
  }
  
  void update(){
    xLoc += xSpeed;
    yLoc += ySpeed;
  }
  
  void render() {
    fill(clr);
    ellipse(xLoc, yLoc, radius, radius);
  }
  
  void checkEdges(){
    if(xLoc>width) xSpeed *= -1;
    if(yLoc>height) ySpeed *= -1;
    if(xLoc<0) xSpeed *= -1;
    if(yLoc<0) ySpeed *= -1;
  }
}


