void setup() {
  size(600, 500);
  background(240);
  noStroke();
  fill(40);
  float size = width * 0.45;
  translate(width/2, height/2);
  triangle(0, -(size/2), size/2, size/2, -(size/2), size/2);
  noLoop();
}
