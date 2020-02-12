int xCoordinate = 0;  // Declaring a starting value for the X axis which is what I will use to make stickman move
boolean right = true;  // Making true/false statement to overwirte the stickman continuously moving in one direction
float red = 1;   // declaring variables for our starting values of each color of spaceship
float green = 100;
float blue = 200;


void setup() {
  size(1000, 800);  // setting up window size
  background(255);  // white background
}

void draw() {
  background (255);   // re coloring background every frame so man appears on it's own
  drawCloud(70, 80);
  fill(#FFD6AC);  //skin color head
  stroke(0);      // black outline
  ellipse(xCoordinate, 300, 150, 150);   // Head beginning at edge of screen to move right
  strokeWeight (3);
  line(xCoordinate, 375, xCoordinate, 575); // body
  line(xCoordinate, 375, xCoordinate + 75, 525);// left arm
  line(xCoordinate, 375, xCoordinate - 75, 525); //right arm
  line(xCoordinate, 575, xCoordinate +75, 800); //right leg
  line(xCoordinate, 575, xCoordinate -75, 800);//left leg
  if (xCoordinate == 0) {
    right = true; // when man(xcoordinate) is at starting point the right statement is true(stickman can move right)
  } else if (xCoordinate == 950) {
    right =false;
  } // when man reaches edge of the screen, statement is flase (I are telling stickman it can no longer move right)



  if (xCoordinate >= 0 && xCoordinate <= 950 && right == true) {
    xCoordinate =xCoordinate + 2;
  }// if stickman is at or past the starting point AND at or before the end point AND right statment is true then the xcoordinate(position on screen) will increase by one each frame


  else {
    xCoordinate = xCoordinate - 2;
  } //otherwise reduce xcoordinate by 2 per frame (when the right statment is false (which happens when X = 950))

  if (mousePressed) {//if the mouse is pressed...
    if (mouseButton == LEFT)//...and its the left button
      right= false;//move left

    else if (mouseButton == RIGHT)//...and its the right button
      right= true;//move right
  }

  if (keyPressed)
  {//if a key is pressed then do the following...
    if ((key == 'H') || (key == 'h')) //if the key is H or h then...
     {fill(0);
    textSize(32);
    text("HELLO!", width/2, height/10);//print it to the screen
    println("HELLO!");}
  }//print it to the console

// if (keyPressed) {//if a key is pressed then do the following...
  else  if ((key == 'C') || (key == 'c')) 
  //if the key is C or c then...
  {
      for (int i= 0; i <= 100000; i++) {//count to a hundred thousand
        println(i);//print it to the console
      }
  }

  //if (keyPressed) {//if a key is pressed then do the following...
    else if ((key == 'S') || (key == 's')){
      fill(red, green, blue );// fill out circle with our variable colors
    ellipse(mouseX, mouseY, width/2, height/10);//draw a multicolored spaceship

    if (red < 255)//if value for red is less than 255
      red = red+ 30;//add value of 30 to red
    else//otherwise
      red= random(0, 255);//place a random value between 0 and 255 for red

    if (green < 255)// same as red above
      green = green + 30;
    else
      green = random(0, 255);
    ;
    if (blue < 255)// same as red above
      blue = blue + 30;

    else
      blue= random(0, 255);
    }
  

  if (keyPressed) {//if a key is pressed then do the following...
    if ((key == 'B') || (key == 'b')) { 

      int t = 100000;
      while ( t >=0) {//count backwards from a hundred thousand
        println(t);//print it to the console
        t--;
      }
    }
  }
}

  void drawCloud(int x,int y)
  {
    ellipse(x, y, 20, 20);
    ellipse(x+ 10, y, 40, 40);
    ellipse(x + 20, y, 20, 20);
  }
