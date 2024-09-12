PVector vertexAnchor;
PVector bezierControlPoint;
PVector bezierAnchor;

float lineSize;
float dotSize;

void setup()
{
  size(600, 450);
  frameRate(36);

  float w = width * 0.65;
  float h = height * 0.60;
  float x = (width/2) - (w/2);
  float y = (height/2) - (h/2);

  lineSize = width * 0.005;
  dotSize = width * 0.015;

  vertexAnchor = new PVector(x, y+h);
  bezierAnchor = new PVector(x+w, y+h);
  bezierControlPoint = new PVector(x+(w/2), y);
}

void draw()
{
  background(240);

  float percent = (frameCount % 100) * .01;

  // draw bezier line
  strokeWeight(lineSize);
  stroke(30);
  noFill();
  beginShape();
  vertex(vertexAnchor.x, vertexAnchor.y);
  quadraticVertex(bezierControlPoint.x, bezierControlPoint.y, bezierAnchor.x, bezierAnchor.y);
  endShape();

  // draw dots in between
  PVector pointBetween1 = drawDotBetween(vertexAnchor, bezierControlPoint, percent, 0XE1B000, dotSize);
  PVector pointBetween2 = drawDotBetween(bezierControlPoint, bezierAnchor, percent, 0XE1B000, dotSize);
  PVector pointBetween3 = drawDotBetween(pointBetween1, pointBetween2, percent, 0Xc64821, dotSize*1.5);

  // draw anchor points
  noStroke();
  fill(#E1B000);
  ellipse(vertexAnchor.x, vertexAnchor.y, dotSize, dotSize);
  ellipse(bezierAnchor.x, bezierAnchor.y, dotSize, dotSize);

  // draw control point
  noStroke();
  fill(#E1B000);
  ellipse(bezierControlPoint.x, bezierControlPoint.y, dotSize, dotSize);
}

PVector drawDotBetween(PVector start, PVector stop, float percent, int col, float s)
{  
  PVector pointBetween ;
  float XLerp = lerp(start.x,stop.x, percent);
  float YLerp = lerp(start.y,stop.y, percent);
  pointBetween = new PVector(XLerp, YLerp);

  // draw line
  stroke(#FFDAA2);
  strokeWeight(lineSize/2);
  line(start.x, start.y, stop.x, stop.y);

  // draw dot
  noStroke();
  fill(col);
  ellipse(pointBetween.x, pointBetween.y, s, s);

  return pointBetween;
}
