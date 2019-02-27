size(200, 200);
background(255);

// le corps
fill(200);
rect(60, 60, 80, 80);

// les roues
fill(200);
rect(40, 80, 20, 90);
rect(140, 80, 20, 90);
fill(20);
rect(42, 170, 16, 10);
rect(142, 170, 16, 10);

// la tête
noFill();
ellipseMode(CORNER);
arc(60, 20, 80, 80, PI, TWO_PI);
fill(200);
arc(80, 40, 40, 40, PI, TWO_PI);


// la caméra
fill(0);
ellipseMode(CENTER);
ellipse(100, 50, 10, 10);


// l'antenne
line(60, 20, 60, 60);

// deco
fill(220);
strokeWeight(2);
line(80, 70, 140, 70);
strokeWeight(1);
rect(60, 90, 30, 10);
rect(90, 105, 50, 10);
fill(0, 255, 0);
rect(110, 80, 10, 10);
fill(255, 0, 0);
rect(125, 80, 10, 10);
fill(0, 0, 255);
rect(75, 125, 10, 10);
line(40, 100, 60, 100);
line(140, 100, 160, 100);

// le message
println("Processing ... please wait");