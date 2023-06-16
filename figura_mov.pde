float tam2 = 0;
int opacidad = 0;
float opacidad2 = .05;
void figuraMov(float inicioX_, float inicioY_) {

  for (float k = 10; k <= 100; k+=10) {
    tam2+=.09;

    push();

    stroke(255);
    strokeWeight(opacidad);
    noFill();
    ellipse(inicioX_, inicioY_, k+tam2, k+tam2);

    pop();

    for (float f = 0; f <= 5; f++) {
      push();
      stroke(255);
      strokeWeight(opacidad2);
      noFill();
      ellipse(inicioX_, inicioY_, k+f-tam2, k+f-tam2);
      pop();
    }
  }

  if (mousePressed) {
    opacidad = 2;
    opacidad2 = .5;
    tam2=0;
  }

  if (tam2 >= 45.0 ) {
    opacidad = 0;
    opacidad2 = 0;
    tam2 = 0;
  }
}
