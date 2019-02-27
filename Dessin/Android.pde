size(200,200);
background(255);
int xPosRobot = 100;
int yPosRobot = 100;
noStroke();
rectMode(CENTER);
fill(153,205,0);
//Legs
rect(xPosRobot-20,yPosRobot+40,10,40);
rect(xPosRobot+20,yPosRobot+40,10,40);
arc(xPosRobot+20,yPosRobot+60,10,10,0,PI,PIE);
arc(xPosRobot-20,yPosRobot+60,10,10,0,PI,PIE);
//Arms
rect(xPosRobot-55,yPosRobot,10,50,10,10,10,10);
rect(xPosRobot+55,yPosRobot,10,50,10,10,10,10);
//Corps
rect(xPosRobot,yPosRobot+5,80,65,0,0,10,10);
//Head
arc(xPosRobot,yPosRobot-35,80,65,PI, TWO_PI, CHORD);
quad(xPosRobot+19,yPosRobot-60,xPosRobot+26,yPosRobot-75,xPosRobot+28,yPosRobot-75,xPosRobot+21,yPosRobot-60);
quad(xPosRobot-19,yPosRobot-60,xPosRobot-26,yPosRobot-75,xPosRobot-28,yPosRobot-75,xPosRobot-21,yPosRobot-60);
fill(0);
ellipse(xPosRobot+17,yPosRobot-50,10,10);
ellipse(xPosRobot-17,yPosRobot-50,10,10);