PImage Gordon;
// create Variables for Movement of character
float xPos; // position of character in X
float yPos; // position of character in Y
float speed; // speed of character
int lives=1;
int coin=1;
float coinX;
float coinY;

boolean isSquare = true;

boolean startScreen = true;
boolean moveLeft, moveRight, moveUp, moveDown; // Key values
boolean squareRight, squareLeft, squareUp, squareDown; //Entities Values
boolean squareRight2, squareLeft2, squareUp2, squareDown2; //Entities Values
boolean squareRight3, squareLeft3, squareUp3, squareDown3; //Entities Values
boolean squareRight4, squareLeft4, squareUp4, squareDown4; //Entities Values
boolean squareRight5, squareLeft5, squareUp5, squareDown5; //Entities Values
boolean squareRight6, squareLeft6, squareUp6, squareDown6; //Entities Values

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

  Ent_x = 1;
  Ent_x5 = 1;
  Ent_x6 = 1;
  Ent_x2 = 1200;
  Ent_x3 = 1200;
  Ent_x4 = 1200;
  squareRight = true;
  squareRight2 = true;
  squareRight3 = true;
  squareRight4 = true;
  coinX=0;
  coinY=0;
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
    text(" Gordon Dodge ", 600, 250);
    text(" Press 1 to start ", 600, 350);
  } else {
    // Draw Level 1

    fill(#B43E07);
    speed = 2;

    fill(150, 10, 10);

    // Finish line

    rect(1150, 550, 50, 50); 
    textSize(24);

    // Life counter
    text("Death Count = "+lives, 100, 580);

    // coins
    //println(coinX);
    //println(coinY);
    
    if(isSquare)
    {
    rect(coinX+590, coinY+290, 20, 20);
    }


    // Create Variables and Borders for the Characters




    fill(#B43E07);
    //println(Ent_x) ;
    //println(Ent_x2) ;
    //println(Ent_x3) ;
    //println(Ent_x4) ;
    //println(Ent_x5) ;
    //println(Ent_x6) ;
    pushMatrix();
    scale(5);
    image(Gordon, Ent_x/5, 50, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x/5, 42, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x/5, 33, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x/5, 59, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x/5, 68, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x2/5, 100, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x2/5, 20, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x2/5, 12, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x2/5, 4, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x2/5, -2, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x2/5, 109, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x2/5, 91, Ent_size-10, Ent_size-10);
    image(Gordon, Ent_x2/5, 82, Ent_size-10, Ent_size-10);

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
    if (squareRight4)
    {
      Ent_x4 += speed*3;
    } else {
      Ent_x4 -= speed*3;
    }
    if (squareRight5)
    {
      Ent_x5 += speed*3;
    } else {
      Ent_x5 -= speed*3;
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
  if (Ent_x5 >= width-30 ) // location of border

  {
    Ent_x5-=10;
    squareRight5 = false;
    squareLeft5 = true;
  }
  if (Ent_x5 <= 0)
  {
    Ent_x5 += 4;
    squareRight5 = true;
    squareLeft5 = false;
  }
  if (Ent_x6 >= width-30 ) // location of border

  {
    Ent_x6-=10;
    squareRight6 = false;
    squareLeft6 = true;
  }
  if (Ent_x6 <= 0)
  {
    Ent_x6 += 4;
    squareRight6 = true;
    squareLeft6 = false;
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
  // for coints
  
  if((xPos-570 >= 590 && xPos-570 <= 610)  && (yPos-270 >= 290 && yPos-270 <= 310)){ 
   isSquare = false; 
}
//  

  // for gordons
  
  
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x) + sq((yPos - 305 - 15) - Ent_y))) < 35)
  {

    lives=lives+1;
    isSquare = true;
    setup();
  }
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x) + sq((yPos - 345 - 15) - Ent_y))) < 35)
  {

    lives=lives+1;
    isSquare = true;
    setup();
  }
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x) + sq((yPos - 265 - 15) - Ent_y))) < 35)
  {

    lives=lives+1;
    isSquare = true;
    setup();
  }
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x) + sq((yPos - 205 - 15) - Ent_y))) < 35)
  {

    lives=lives+1;
    isSquare = true;
    setup();
  }
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x) + sq((yPos - 170 - 15) - Ent_y))) < 35)
  {

    lives=lives+1;
    isSquare = true;
    setup();
  }
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x2) + sq((yPos - 595 + 80) - Ent_y))) < 35)
  {

    lives=lives+1;
    isSquare = true;
    setup();
  }

  if ((sqrt(sq((xPos - 610 - 15) - Ent_x2) + sq((yPos - 200 + 80) - Ent_y))) < 35)
  {

    lives=lives+1;
    isSquare = true;
    setup();
  }
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x2) + sq((yPos - 150 + 80) - Ent_y))) < 35)
  {

    lives=lives+1;
    setup();
  }
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x2) + sq((yPos - 100 + 80) - Ent_y))) < 35)
  {

    lives=lives+1;
    isSquare = true;
    setup();
  }
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x2) + sq((yPos - 625 + 80) - Ent_y))) < 35)
  {

    lives=lives+1;
    isSquare = true;
    setup();
  }
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x2) + sq((yPos - 575 + 80) - Ent_y))) < 35)
  {

    lives=lives+1;
    isSquare = true;
    setup();
  }
  if ((sqrt(sq((xPos - 610 - 15) - Ent_x2) + sq((yPos - 508 + 80) - Ent_y))) < 35)
  {

    lives=lives+1;
    isSquare = true;
    setup();
  }
  
  // Finish line
  
  if (isSquare != true){
    if(xPos - 570 >= 1150 && xPos - 570 <= 1200 && yPos - 270 >= 550 && yPos - 270 <= 600){
      noLoop();
    }
  }
}