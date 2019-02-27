int r = 25;
float xPosRobot;
float yPosRobot;
float v = 2;
float alpha;


void setup() {
  size(500, 500);
  xPosRobot = random(r, width - r);
  yPosRobot = random(r, height - r);
  noStroke();
  fill(127);
  ellipseMode(RADIUS);
}

void draw() {
  background(255);
  ellipse(xPosRobot, yPosRobot, r, r);
  float vxPosRobot = v * cos(alpha);
  float vyPosRobot = v * sin(alpha);
  xPosRobot += vxPosRobot;
  yPosRobot += vyPosRobot;
  if (xPosRobot < r) {
    alpha = random(-PI/2, PI/2);
  } else if (xPosRobot > width-r) {
    alpha = random(PI/2, 3*PI/2);
  } else if (yPosRobot < r ) {
    alpha = random(PI);
  } else if (yPosRobot > height-r) {
    alpha = random(-PI);
  }
  if (xPosRobot < r || xPosRobot > width - r) {
    vxPosRobot = -vxPosRobot;
  }
  if (yPosRobot < r || yPosRobot > height - r) {
    vyPosRobot = -vyPosRobot;
  }
}