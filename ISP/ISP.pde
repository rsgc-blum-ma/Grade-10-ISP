PImage Gordon;
// create Variables for Movement of character
float xPos; // position of character in X
float yPos; // position of character in Y
float speed; // speed of character


boolean startScreen = true;
boolean moveLeft, moveRight, moveUp, moveDown; // Key values
boolean squareRight, squareLeft, squareUp, squareDown; //Entities Values
boolean squareRight2, squareLeft2, squareUp2, squareDown2; //Entities Values
boolean squareRight3, squareLeft3, squareUp3, squareDown3; //Entities Values
boolean squareRight4, squareLeft4, squareUp4, squareDown4; //Entities Values

float Ent_x; // Position of Enemy X
float Ent_x2;
float Ent_x3;
float Ent_x4;
float Ent_x5;
float Ent_x6;
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
  Ent_x2 = 50;
  Ent_x3 = 620;
  Ent_x4 = 700;
  squareRight = true;
  squareRight2 = true;
  squareRight3 = true;
  squareRight4 = true;
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

    // start line 
    rect(0, 0, 50, 50); 

    // Create Variables and Borders for the Characters




    fill(#B43E07);
    println(Ent_x) ;
    println(Ent_x2) ;
    println(Ent_x3) ;
    println(Ent_x4) ;
    pushMatrix();
    scale(5);
    image(Gordon, Ent_x/5, Ent_y/5, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x2/5, Ent_y/3, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x3/5, Ent_y/15, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x3/5, Ent_y/25, Ent_size-10, Ent_size-10);
    
    popMatrix();


    // Speed variables for Character

    if (squareRight)
    {
      Ent_x += speed*3;
    } else {
      Ent_x -= speed*3;
    }

    if (squareRight2)
    {

      Ent_x2 += speed*3;
    } else {
      Ent_x2 -= speed*3;
    }

    if (squareRight3)
    {

      Ent_x3 += speed*3;
    } else {
      Ent_x3 -= speed*3;
    }
    if (moveLeft) {
      xPos -= speed+1;
    }
    if (moveRight) {
      xPos += speed+2;
    }
    if (moveUp) {
      yPos -= speed+2;
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

  if (Ent_x >= width-30 ) // location of border

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

  if (Ent_x2 >= width-30 ) // location of border

  {
    Ent_x2-=10;
    squareRight2 = false;
    squareLeft2 = true;
  }
  if (Ent_x2 <= 0)
  {
    Ent_x2 += 4;
    squareRight2 = true;
    squareLeft2 = false;
  }

  if (Ent_x3 >= width-30 ) // location of border

  {
    Ent_x3-=10;
    squareRight3 = false;
    squareLeft3 = true;
  }
  if (Ent_x3 <= 0)
  {
    Ent_x3 += 4;
    squareRight3 = true;
    squareLeft3 = false;
  }
    if (Ent_x4 >= width-30 ) // location of border

  {
    Ent_x4-=10;
    squareRight4 = false;
    squareLeft4 = true;
  }
  if (Ent_x4 <= 0)
  {
    Ent_x4 += 4;
    squareRight4 = true;
    squareLeft4 = false;
  }
}




// Level 1 Border





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
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x) + sq((yPos - 305 - 15) - Ent_y))) < 35)
  {

    noLoop(); // Stop Drawing
  }
  if ((sqrt(sq((xPos - 615 - 15) - Ent_x2) + sq((yPos - 425 - 95) - Ent_y))) < 35)
  {

    noLoop(); // Stop Drawing
  }

  if ((sqrt(sq((xPos - 610 - 15) - Ent_x3) + sq((yPos - 200 + 80) - Ent_y))) < 35)
  {

    noLoop(); // Stop Drawing
  }
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x3) + sq((yPos - 150 + 80) - Ent_y))) < 35)
  {

    noLoop(); // Stop Drawing
  }
}