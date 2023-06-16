https://youtu.be/-8PJuDlZPC8
PImage referencia;
int x, y;
color c1, c2;

void setup() {
  size(800, 400, P2D);
  background(200);
  referencia = loadImage("ilusionoptica.jpg");
  c1 = color(20, 30, 147);
  c2 = color(16, 175, 90);
}

void draw() {


  figura();

  figuraMov(x, y);
  image(referencia, 0, 0, 400, 400);


}

void mouseClicked() {
  x = mouseX;
  y = mouseY;
}
