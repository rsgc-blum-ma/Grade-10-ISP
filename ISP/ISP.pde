// create Variables for Movement of character
float xPos;
float yPos;
float speed;
boolean moveLeft, moveRight, moveUp, moveDown;

boolean startScreen = true;
// Starting screen
void setup() {
  size(1200, 600);

  xPos = width/2;
  yPos = height/2;
}

// create a level

void draw() {
  background(26555);

  if (startScreen)
  {
    fill(127, 0, 0);
    rect(0, 0, 1200, 600);
    textSize(50); 
    fill(0);
    textAlign(CENTER, CENTER);
    text(" Game Name ", 600, 250);
    text(" Press 1 to start ", 600, 350);
  } else {

    fill(#B43E07);
    speed = 2;

    if (moveLeft){
      xPos -= speed;
    }
    if (moveRight){
      xPos += speed;
    }
    if (moveUp){
      yPos -= speed;
    }
    if (moveDown){
      yPos += speed;
    }
    
    println(xPos) ;
    ellipse(xPos - 590, yPos - 290, 30, 30);
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      moveLeft = true;
    } else if (keyCode == RIGHT) {
      moveRight = true;
    } else if (keyCode == UP) {
      moveUp = true;
    } else if (keyCode == DOWN) {
      moveDown = true;
    }
  }

  if (key == '1'){
    startScreen = false;
  }
}

void keyReleased() {

  if (key == CODED) {
    if (keyCode == LEFT) {
      moveLeft = false;
    } else if (keyCode == RIGHT) {
      moveRight = false;
    } else if (keyCode == UP) {
      moveUp = false;
    } else if (keyCode == DOWN) {
      moveDown = false;
    }
  }
} 