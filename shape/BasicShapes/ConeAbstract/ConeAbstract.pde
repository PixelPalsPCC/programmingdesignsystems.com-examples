void setup() {
  size(600, 500);
  background(255);

  float ellipseX = width / 2;
  float ellipseY = height * 0.3;
  float ellipseSize = width * 0.32;
  float triangleY = height * 0.36;
  float spacing = width * 0.01;
  strokeWeight(spacing*0.5);

  noFill();
  stroke(40);
  ellipse(ellipseX, ellipseY, ellipseSize, ellipseSize);

  noStroke();
  fill(255);
  rect(0, triangleY - spacing, width, height);

  noFill();
  stroke(40);
  triangle(ellipseX - (ellipseSize/2) - spacing, triangleY, ellipseX + (ellipseSize/2) + spacing, triangleY, ellipseX, height * 0.9);

  noLoop();
}
