float phi = 0;
float move = 0;

void setup() {
  fullScreen();
  frameRate(30);
  phi = (1 + sqrt(5)) / 2;
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  
  for(int i = 0; i < 500; i++){
    fill(255 - i, 255, 255);
    rotate(radians(360 * phi) + move);
    ellipse(i, 0, 2 * sqrt(i), 2 * sqrt(i));
  }
  move = move + 0.0001;
}
