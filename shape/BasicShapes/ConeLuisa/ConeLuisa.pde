void setup() {
  size(600, 700);
  background(0);
  noStroke();

  float coneX = width * 0.6;
  float coneY = height * 0.5;
  float coneSize = width * 0.2;
  float coneRotation = 10;

  rotate(radians(coneRotation));

  // Draw inverted background
  push();
  translate(0, coneY);
  fill(255);
  rect(0, 0, width*1.5, height);
  pop();

  // Ice cream
  push();
  translate(coneX, coneY);
  fill(0);
  float x = 0;
  float y = coneSize * 0.28;
  float w = coneSize * 1.15;
  float h = coneSize * 1.15;
  for(int i = 0; i < 3; i++) {
    if(i == 1) {
      rotate(radians(-coneRotation));
      x = -(coneSize*0.12);
      y = coneSize * 0.6;
      w = coneSize * 1.6;
      h = coneSize * 0.5;
    }
    if(i == 2) {
      x -= coneSize;
      y += coneSize * 0.3;
      w = coneSize * 0.5;
      h = coneSize * 0.16;
    }
    ellipse(x, y, w, h);
  }
  pop();

  // Cone
  push();
  fill(255);
  translate(coneX, coneY);
  triangle(-(coneSize/2), 0, coneSize/2, 0, 0, -(coneSize*2));
  pop();

  noLoop();
}
