float tam=0;
void figura() {
  for (float i = 60; i <= 800; i+=i/40) {
    float n = map( i, 0, 1180, 0, 1 );
    color c = lerpColor( c2, c1, n );  //valor entre 0 y 1 = normalizado
    fill(c);
    ellipse(600, 200, 700-i+tam, 700-i+tam);

    if (tam>=600.0) {
      tam=0;
    }

    if (keyPressed && key == ' ' ) {
      tam=random(0, 400);
      c2 = color(random(255), random(255), random(255));
    }

    if (keyPressed && key == 'r' || key == 'R') {
      c1 = color(20, 30, 147);
      c2 = color(16, 175, 90);
      tam=0;
    }
  }
  cambiarC();
}


void cambiarC() {
  if (keyPressed) {
    if (key == 'c' || key == 'C' ) {
      c1 = color(random(255), random(255), 0);
      c2 =color( random(255), random(255), 0);
    } else if (key == 'f' || key == 'F') {
      c1 = color(0, random(255), random(255));
      c2 =color(0, random(255), random(255));
    }
  }
}
