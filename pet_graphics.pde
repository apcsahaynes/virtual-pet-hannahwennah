final color BLACK = #070707;
final color LIGHT_PINK = #fdcff3;
final color PINK = #de89be;
final int PIXEL_W = 20;

void drawPet() {
  drawBlush();
  drawEyes();
  drawNose();
  drawOutline();
}

void drawBlush() {
  fill(LIGHT_PINK);
  
  square(400 + (PIXEL_W * 2), 60 + (PIXEL_W * 7), PIXEL_W * 2);
  square(400 + (PIXEL_W * 7), 60 + (PIXEL_W * 7), PIXEL_W * 2);
}

void drawEyes() {
  fill(PINK);
  
  rect(400 + (PIXEL_W * 3), 60 + (PIXEL_W * 6), PIXEL_W, PIXEL_W * 2);
  rect(400 + (PIXEL_W * 7), 60 + (PIXEL_W * 6), PIXEL_W, PIXEL_W * 2);
}

void drawNose() {
  fill(PINK);
  
  square(400 + (PIXEL_W * 5), 60 + (PIXEL_W * 7), PIXEL_W);
}

void drawOutline() {
  fill(PINK);
  
  rect(400 + (PIXEL_W * 3), 60, PIXEL_W * 2, PIXEL_W);
  rect(400 + (PIXEL_W * 6), 60, PIXEL_W * 2, PIXEL_W);
  
  rect(400 + (PIXEL_W * 2), 60 + PIXEL_W, PIXEL_W, PIXEL_W * 3);
  rect(400 + (PIXEL_W * 5), 60 + PIXEL_W, PIXEL_W, PIXEL_W * 3);
  rect(400 + (PIXEL_W * 8), 60 + PIXEL_W, PIXEL_W, PIXEL_W * 3);
  
  square(400 + PIXEL_W, 60 + (PIXEL_W * 4), PIXEL_W);
  square(400 + (PIXEL_W * 9), 60 + (PIXEL_W * 4), PIXEL_W);
  
  rect(400, 60 + (PIXEL_W * 5), PIXEL_W, PIXEL_W * 4);
  rect(400 + (PIXEL_W * 10), 60 + (PIXEL_W * 5), PIXEL_W, PIXEL_W * 4);
  
  square(400 + PIXEL_W, 60 + (PIXEL_W * 9), PIXEL_W);
  square(400 + (PIXEL_W * 9), 60 + (PIXEL_W * 9), PIXEL_W);
  
  rect(400 + (PIXEL_W * 2), 60 + (PIXEL_W * 10), PIXEL_W * 7, PIXEL_W);
}
