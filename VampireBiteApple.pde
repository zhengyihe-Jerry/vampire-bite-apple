//Vampire
int vampireX = 150;
int vampireY = 250;
int speed = 5;
//Apple
int appleX = 650;
int appleY = 300;

int biteCount = 0;
boolean bitePressed = false;


void setup() {
  size(800, 500);
}

void draw() {
  background(230);

// Vampire
  // Vampire head
  fill(240);
  stroke(0);
  ellipse(vampireX,vampireY,80,100);

  // Vampire hair
  fill(0);
  arc(vampireX, vampireY - 25, 80, 60, PI, TWO_PI);

  // Eyes
  fill(255, 0, 0);
  ellipse(vampireX-15,vampireY-5,10,10);
  ellipse(vampireX+15,vampireY-5,10,10);

  // Mouth
  stroke(0);
  line(vampireX-15, vampireY+20,vampireX+15, vampireY+20);

  // Fangs
  fill(255);
  triangle(vampireX - 10, vampireY + 20,
    vampireX - 3, vampireY + 20,
    vampireX - 7, vampireY + 35);
  triangle(vampireX + 3, vampireY + 20,
    vampireX + 10, vampireY + 20,
    vampireX + 7, vampireY + 35);

  // Body
  fill(60);
  rect(vampireX-30,vampireY+50,60,100);

// Apple
if(biteCount == 0){
  // Full apple
  fill(220, 0, 0);
  stroke(0);
  ellipse(appleX, appleY, 70, 70);
}

else if(biteCount == 1){
  // Apple becomes smaller after the first bite
  fill(220, 0, 0);
  stroke(0);
  ellipse(appleX, appleY, 55, 55);
}

else if(biteCount == 2){
  // Apple becomes even smaller after the second bite
  fill(220, 0, 0);
  stroke(0);
  ellipse(appleX, appleY, 35, 35);
}

// Only show the stem and leaf while the apple still exists
if(biteCount < 3){

  // Apple stem
  stroke(80, 50, 20);
  line(appleX, appleY - 35, appleX, appleY - 55);

  // Apple leaf
  fill(0, 180, 0);
  ellipse(appleX + 15, appleY - 50, 25, 12);
}
  
  //Vampire Movement
  if(keyPressed){

  if(keyCode == LEFT){
    if(vampireX > 40){
      vampireX -= speed;
     }
   }

  if(keyCode == RIGHT){
    if(vampireX < width - 40){
      vampireX += speed;
     }
   }
}
biteApple();
fill(0);
textSize(25);
text("Bites: " + biteCount, 20, 40);
if(biteCount >= 3){
  fill(0);
  textSize(32);
  text("You ate the apple!", 280, 100);
}

}

//Bite
void biteApple(){

  // Calculate the distance between the vampire and the apple
  float distance = dist(
    vampireX,
    vampireY,
    appleX,
    appleY);

  // Bite only when the vampire is close and the apple still exists
  if(distance < 100 && biteCount < 3){

    if(bitePressed){
      biteCount++;
      bitePressed = false;
    }
}

  // Reset the bite input even if the vampire is too far away
  if(bitePressed && distance >= 100){
    bitePressed = false;
  }
}


void keyPressed(){

  if(key == ' '){
    bitePressed = true;
  }

  if(key == 'r' || key == 'R'){
    restartGame();
  }
}
//Restart the Game
void restartGame(){
  vampireX = 150;
  vampireY = 250;
  biteCount = 0;
  bitePressed = false;
}
