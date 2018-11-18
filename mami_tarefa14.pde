PImage img1, img2;
PImage img3 = createImage(1920, 1040, RGB);
color ponto;
int x, y;

void setup() {
  size(960, 520);
  img1 = loadImage("1.png");
  img2 = loadImage("2.png");
  x = -15;
  y = 0;
}

void draw() {
  background(0);
  image(img3, 0, 0, 960, 520);
  fill(120);
  rectMode(CENTER);
  rect(x, y, 30, 1040);
  
  keyReleased();
  processaImagem();
  println("x =", x);
}

void keyPressed() {
  if (keyCode == RIGHT && x <= width+10) {
    x += 5;
  }
  if (keyCode == LEFT && x >= -10) {
    x -= 5;
  }
}


void processaImagem() {
  for (int i = 0; i < (x*2); i++) {
    for (int j = 0; j < 1040; j++) {
      ponto = img1.get(i, j);
      img3.set(i, j, ponto);
    }
  }
  for (int i = (x*2); i < 1920; i++) {
    for (int j = 0; j < 1040; j++) {
      ponto = img2.get(i, j);
      img3.set(i, j, ponto);
    }
  }
}
