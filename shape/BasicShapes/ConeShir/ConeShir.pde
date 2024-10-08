void setup() {
  size(600, 700);
  background(255);
  fill(255);
  stroke(0);
  strokeWeight(width * 0.024);

  float coneX = width / 2;
  float coneY = height * 0.6;
  float coneSize = width * 0.18;

  translate(coneX, coneY);

  // Cookie
  push();
  rotate(radians(-25));
  translate(coneSize*0.8, -(coneSize*3));
  rect(0, 0, coneSize * 0.3, coneSize);
  pop();

  strokeJoin(ROUND);

  // Ice cream
  for(int i = 3; i >= 0; i--) {
    ellipse(0, -(coneSize*0.25) - (i * (coneSize * 0.6)), coneSize, coneSize);
  }

  // Cone
  triangle(-(coneSize/2), 0, coneSize/2, 0, 0, coneSize*1.6);

  noLoop();
}
