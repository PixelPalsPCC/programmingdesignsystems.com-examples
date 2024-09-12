void setup() {

  size(300, 570);

  background(255);
  push();

  float rows = 12;
  float waves = 6;
  float waveSize = width * 0.15;
  float padding = width * 0.05;
  float thickness = width * 0.005;
  float borderThickness = width * 0.02;
  float cy = width * 0.03;

  translate(padding, padding);
  stroke(30);
  strokeWeight(borderThickness);
  rect(0, 0, width-(2*padding), height-(2*padding));

  strokeWeight(thickness);
  fill(255);
  float bby = rows * waveSize;

  for (int r = 0; r < rows; r++) {

    float curve = (waveSize/3) * (r / (rows-1));
    float offset = waveSize/2;

    push();

    float trans = waveSize * r - (waveSize/2);

    translate(0, trans);

    beginShape();

    for (int c = 0; c < waves; c++) {
      float co = c * waveSize;
      vertex(co, waveSize-cy);
      bezierVertex(co+curve, waveSize-cy, co+(waveSize/2), waveSize/2-cy, co+(waveSize/2), waveSize/2-cy);
      bezierVertex(co+(waveSize/2), waveSize/2-cy, co+waveSize-curve, waveSize-cy, co+waveSize, waveSize-cy);
    }

    float lco = (waves-1) * waveSize;

    // this one goes down to the bottom
    vertex(lco+waveSize, waveSize-cy);
    vertex(lco+waveSize, (rows-r)*waveSize + waveSize/2);
    vertex(0, (rows-r)*waveSize + waveSize/2);
    vertex(0, waveSize-cy);

    endShape();

    pop();
  }

  pop();


  noLoop();
}
