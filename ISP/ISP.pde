PImage Gordon;
// create Variables for Movement of character
float xPos; // position of character in X
float yPos; // position of character in Y
float speed; // speed of character


boolean startScreen = true;
boolean moveLeft, moveRight, moveUp, moveDown; // Key values
boolean squareRight, squareLeft, squareUp, squareDown; //Entities Values

float Ent_x; // Position of Enemy X
float Ent_y; // Position of Enemy Y
float Ent_dir = 1; // 
float Ent_size = 30;  // Radius of Enemy
float dy = 0;  // Direction of Enemy



// Starting screen
void setup() {
  Gordon = loadImage("RgOrdon.png");
  size(1200, 600);
  // moving values for characters
  xPos = width/2;
  yPos = height/2;

  Ent_y = height/2;

  Ent_x = 12;

  squareRight = true;
}


// create a level

void draw() {
  background(26555);
  TouchingEnt();  

  // Draw starting screen

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
    // Draw Level 1

    fill(#B43E07);
    speed = 2;

    fill(150, 10, 10);

    // Finish line

    rect(1150, 550, 50, 50); 


    // Create Variables and Borders for the Characters




    fill(#B43E07);
    println(Ent_x) ;
    pushMatrix();
    scale(5);
    image(Gordon, Ent_x/5, Ent_y/5, Ent_size, Ent_size);
    popMatrix();


    // Speed variables for Character

    if (squareRight)
    {
      Ent_x += speed*2.5;
    } else Ent_x -= speed*2.5;

    if (moveLeft) {
      xPos -= speed+1;
    }
    if (moveRight) {
      xPos += speed+1;
    }
    if (moveUp) {
      yPos -= speed+1;
    }
    if (moveDown) {
      yPos += speed+1;
    }

    // Draw Character

    fill(#B43E07);
    println(xPos) ;
    ellipse(xPos - 590, yPos - 290, 30, 30);
  }

  // Borders for character

  if (xPos > width+570 || xPos<1) // location of border

  {
    xPos-=4; // resistance
  }
  if (yPos > height+270 || yPos<1)    // location of border           
  {
    yPos-=4;
  }
  if (xPos <= 600)
  {
    xPos += 4;
  }
  if (yPos <= 300)
  {
    yPos += 4;
  }

  // Borders for Entity 

  if (Ent_x >= width ) // location of border

  {
    Ent_x-=10;
    squareRight = false;
    squareLeft = true;
  }
  if (Ent_x <= 0)
  {
    Ent_x += 4;
    squareRight = true;
    squareLeft = false;
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

  if (key == '1') {
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
// give 
void TouchingEnt()
{
  if ((sqrt(sq((xPos - 620 - 15) - Ent_x) + sq((yPos - 305 - 25) - Ent_y))) < 35)
  {
    
    noLoop(); // Stop Drawing
  }
}