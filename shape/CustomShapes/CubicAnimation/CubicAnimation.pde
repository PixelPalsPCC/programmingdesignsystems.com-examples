PVector vertexAnchor;
PVector bezierControlPoint1;
PVector bezierControlPoint2;
PVector bezierAnchor;

float lineSize;
float dotSize;

void setup()
{
  size(600, 450);
  frameRate(36);

  float w = (int) (width * 0.65);
  float h = (int) (height * 0.60);
  float shift = (int) (width * 0.1);
  float x = (int) ((width/2) - (w/2) + (shift/2));
  float y = (int) ((height/2) - (h/2));

  lineSize = width * 0.005;
  dotSize = width * 0.015;

  vertexAnchor = new PVector(x, y+h);
  bezierAnchor = new PVector(x+w, y+h);
  bezierControlPoint1 = new PVector(x-shift, y);
  bezierControlPoint2 = new PVector(x+w-shift, y);
}

void draw()
{
  background(240);

  float percent = (frameCount % 100 ) * .01;
  // draw bezier line
  strokeWeight(lineSize);
  stroke(30);
  noFill();
  beginShape();
  vertex(vertexAnchor.x, vertexAnchor.y);
  bezierVertex(bezierControlPoint1.x, bezierControlPoint1.y, bezierControlPoint2.x, bezierControlPoint2.y, bezierAnchor.x, bezierAnchor.y);
  endShape();

  // draw dots in between
  PVector pointBetween1 = drawDotBetween(vertexAnchor, bezierControlPoint1, percent, 0XE1B000, dotSize);
  PVector pointBetween2 = drawDotBetween(bezierControlPoint1, bezierControlPoint2, percent, 0XE1B000, dotSize);
  PVector pointBetween3 = drawDotBetween(bezierControlPoint2, bezierAnchor, percent, 0XE1B000, dotSize);
  PVector pointBetween4 = drawDotBetween(pointBetween1, pointBetween2, percent, 0XE1B000, dotSize);
  PVector pointBetween5 = drawDotBetween(pointBetween2, pointBetween3, percent, 0XE1B000, dotSize);
  PVector pointBetween6 = drawDotBetween(pointBetween4, pointBetween5, percent, 0Xc64821, dotSize*1.5);

  // draw anchor points
  noStroke();
  fill(#E1B000);
  ellipse(vertexAnchor.x, vertexAnchor.y, dotSize, dotSize);
  ellipse(bezierAnchor.x, bezierAnchor.y, dotSize, dotSize);

  // draw control points
  noStroke();
  fill(#E1B000);
  ellipse(bezierControlPoint1.x, bezierControlPoint1.y, dotSize, dotSize);
  ellipse(bezierControlPoint2.x, bezierControlPoint2.y, dotSize, dotSize);
}


PVector drawDotBetween(PVector start, PVector stop, float percent, int col, float s)
{
  PVector pointBetween ;
  float XLerp = lerp(start.x,stop.x, percent);
  float YLerp = lerp(start.y,stop.y, percent);
  pointBetween = new PVector(XLerp, YLerp);

  //draw line
  stroke(#FFDAA2);
  strokeWeight(lineSize/2);
  line(start.x, start.y, stop.x, stop.y);

  // // draw dot
  noStroke();
  fill(255,0,0);
  ellipse(pointBetween.x, pointBetween.y, s, s);

  return pointBetween;
}
