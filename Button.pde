class Button {
  private String label;
  private color hoverColor = #edacdb;
  private int h, w, x, y;

  Button(String label, int w, int x, int y) {
    this.label = label;
    h = 40;
    this.w = w;
    this.x = x;
    this.y = y;
  }

  public void display() {
    if (isHovered()) {
      fill(hoverColor);
    } else {
      fill(PINK);
    }
    rect(x, y, w, h);
    
    fill(255);
    textAlign(CENTER, CENTER);
    textFont(createFont("Lexend Regular", 14));
    text(label, x + (w / 2), y + (h / 2));
  }
 
  public boolean isClicked(float mx, float my) {
    return (mx >= x) && (mx <= x + w) && (my >= y) && (my <= y + h);
  }

  // private helpers
  private boolean isHovered() {
    return (mouseX >= x) && (mouseX <= x + w) && (mouseY >= y) && (mouseY <= y + h);
  }
}
