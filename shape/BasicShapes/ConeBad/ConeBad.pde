void setup() {
  size(600, 500);
  background(255);
  noStroke();

  float ellipseX = width / 2;
  float ellipseY = height * 0.3;
  float ellipseSize = width * 0.3;
  float triangleY = height * 0.5;
  float spacing = width * 0.1;

  fill(40);
  ellipse(ellipseX, ellipseY, ellipseSize, ellipseSize);

  fill(255);
  rect(0, triangleY - spacing, width, height);

  fill(40);
  triangle(ellipseX - (ellipseSize/2) - spacing, triangleY, ellipseX + (ellipseSize/2) + spacing, triangleY, ellipseX, height * 0.8);

  noLoop();
}
