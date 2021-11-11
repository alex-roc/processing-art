/* By Alex Ojeda Copa */

float theta = 0;
float r = 250;

void setup(){
  size(500, 500);
  strokeWeight(5);
  background(0);
  stroke(0);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);

}

void draw(){
   stroke(random(255), random(255), random(255));
   translate(width/2, height/2);
   line(0, 0, cos(theta) * r, sin(theta) * r);
   theta = theta + 0.01; 
}
