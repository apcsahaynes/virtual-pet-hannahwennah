final int PADDING = 20;
final int STATS_W = 300;
final int STATS_X = 60;
final int STATS_Y = 140;

void displayStats(Pet pet) {
  fill(PINK);
  textAlign(LEFT, TOP);
  textFont(createFont("Cherry Bomb One Regular", 60));
  text(pet.getName(), 60, 60);

  int row = 0;
  drawRow("age", pet.getAgeYears(), row++);
  drawRow("cleanliness", pet.getCleanliness(), row++);
  drawRow("energy", pet.getEnergy(), row++);
  drawRow("happiness", pet.getHappiness(), row++);
  drawRow("weight", pet.getWeight(), row++);
}

void drawRow(String label, int value, int i) {
  fill(PINK);
  textAlign(LEFT, TOP);
  textFont(createFont("Lexend Regular", 14));
  text(label, STATS_X, STATS_Y + (PADDING * i));

  fill(BLACK);
  textAlign(RIGHT, TOP);
  text(value, STATS_X + STATS_W, STATS_Y + (PADDING * i));
}

void displayMessage() {
  int timeElapsed = millis() - messageTime;
  if (timeElapsed > MESSAGE_DURATION) {
    message = "snow white is waiting . . .";
  }

  fill(BLACK);
  textAlign(CENTER, BOTTOM);
  textFont(createFont("Lexend Regular", 9));
  text(message, 510, 320);
}
