float phi;
float move = 0;
float len = 1;

void setup() {
  fullScreen();
  frameRate(60);
  noStroke();
  phi = (1 + sqrt(5)) / 2;
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  
  for(int i = 0; i < len; i++){
    fill(255 - i, 255, 255 - i);
    rotate(radians(360 * phi) - move);
    ellipse(i, 0, 2 * sqrt(i), 2 * sqrt(i));
  }
  move = move - 0.0001;
  len = len + 1;
}
