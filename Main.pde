// global variables
Button cleanButton;
Button feedButton;
Button playButton;

Food apple;
Game fetch;
Pet bunny;

final int UPDATE_INTERVAL = 30000; // in milliseconds
int lastUpdateTime = 0;

String message;
final int MESSAGE_DURATION = 5000; // in millseconds
int messageTime = 0;

void setup() {
  size(680, 380);
  noStroke();
 
  cleanButton = new Button("clean", 80, 60, 280);
  feedButton = new Button("feed", 80, 160, 280);
  playButton = new Button("play", 80, 260, 280);
 
  apple = new Food("apple", 1, 2, 1);
  fetch = new Game("fetch", 1, 2);
  bunny = new Pet("snow white");
  
  message = bunny.getName() + " is waiting . . .";
}

void draw() {
  background(255);

  if (millis() - lastUpdateTime >= UPDATE_INTERVAL) {
    bunny.update();
    lastUpdateTime = millis();
  }

  drawPet();
  displayStats(bunny);
  cleanButton.display();
  feedButton.display();
  playButton.display();
  displayMessage();
}

void mousePressed() {
  if (cleanButton.isClicked(mouseX, mouseY)) {
    bunny.clean();
    changeMessage(bunny.getName() + " was cleaned !");
  }
  
  if (feedButton.isClicked(mouseX, mouseY)) {
    bunny.feed(apple);
    changeMessage(bunny.getName() + " ate an apple !");
  }
  
  if (playButton.isClicked(mouseX, mouseY)) {
    bunny.play(fetch);
    changeMessage(bunny.getName() + " played fetch !");
  }
}

void changeMessage(String msg) {
  message = msg;
  messageTime = millis();
}
