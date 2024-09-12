void setup() {
  size(600, 500);
  background(255);

  float ellipseX = width / 2;
  float ellipseY = height * 0.3;
  float ellipseSize = width * 0.32;
  float triangleY = height * 0.36;
  float spacing = width * 0.01;
  strokeWeight(spacing*1.5);

  noFill();
  stroke(40);
  ellipse(ellipseX + (spacing*2), ellipseY, ellipseSize * 1.1, ellipseSize * 1.1);

  fill(255);
  noStroke();
  push();
  translate(0, triangleY - (spacing*4));
  rotate(radians(3));
  rect(0, 0, width, height);
  pop();

  fill(40);
  noStroke();
  triangle(ellipseX - (ellipseSize/2) - spacing, triangleY, ellipseX + (ellipseSize/2) + spacing, triangleY, ellipseX, height * 0.9);

  noLoop();
}
