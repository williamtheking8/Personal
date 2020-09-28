

// translate(450, 450);

float  x, vx, objectX, ClickXV, ClickX, SteamX, GungeonX, BulletX,BulletVX,PlasmaX,PlasmaVX,DarkX;
float y, vy, objectY, ClickYV, ClickY, SteamY, GungeonY, BulletY,BulletVY,PlasmaY,PlasmaVY,DarkY;
int objectAngle, time, BulletAngle,DEATH;

  PFont Clock; 
void setup() {
  size(900, 900);
  Clock = createFont("Roboto-Medium.ttf", 50);


// Variable Start

  ClickX = 800;
  ClickY = 100;
  
  time = 0;
  
  SteamY = 500;
  
  GungeonX = -900;
  GungeonY = -900;
  
  BulletX = -900;
  BulletY = -900;
  BulletAngle = 0;
  BulletVX = 0;
  BulletVY = 0;
  
  PlasmaX = -999;
  PlasmaY = -999;
  
  PlasmaVX = 0;
  PlasmaVY = 0;
  
  DarkX = -999;
  DarkY = -999;
  
  DEATH = 0;
}//---------------------------------END OF SETUP-------------------------------

void draw() {

 // Computer
  strokeWeight(0);
  background(000);
  fill(100);
  rect(00, 00, 900, 900);
  fill(0);
  rect(100, 100, 700, 700);

  //Power
  if (time < 1000)
    fill(0, 255, 100);
  circle(850, 850, 20);
 





  // Steam Logo
  Steam(200, SteamY, 0);
  strokeWeight(0);

  //Gungeon Logo
  Gungeon(GungeonX, GungeonY);
  textSize(200);
  textFont(Clock);
  fill(#F5B339);
  text("Enter The Gungeon",GungeonX+50,GungeonY- 50);

  //Gungeon Bullet
  Bullet(BulletX,BulletY,BulletAngle);
  
  //Bullet Speech
  fill(255);
  ellipse(BulletX-50,BulletY,200,200);
  textSize(200);
  textFont(Clock);
  fill(0);
  text("AHHHH",BulletX-50,BulletY);
   if (time > 500){
      fill(255);
      ellipse(BulletX-50,BulletY,300,200);
      fill(0);
      text("This is it, isn't it?",BulletX-50,BulletY);
   }
  //Gungeon Plasma 
   Plasma(PlasmaX,PlasmaY);
   
   
   //  DarkSouls
  Dark(DarkX,DarkY);
  noStroke();


  // Changing Variables
  time = time + 1;
  ClickX = ClickX + ClickXV;
  ClickY = ClickY + ClickYV;
  
  BulletX = BulletX + BulletVX;
  BulletY = BulletY + BulletVY;
  
  PlasmaX = PlasmaX + PlasmaVX;
  PlasmaY = PlasmaY + PlasmaVY;


  // Animation Time
  if (time == 50) {
    ClickXV = -5;
    ClickYV = 2;
  }
  if (time == 150) {
    ClickXV = -.75;
    ClickYV = 5.5;
  }
  if (time == 200) {
    ClickXV = 0;
    ClickYV = 0;
  }
  if (time == 240) {
    SteamY = -999;
    GungeonX = 200;
    GungeonY = 150;
    ClickYV = -5;
  }
  if (time == 300) {
    ClickYV = 0;
    GungeonX = -999;
    ClickX = -999;
    BulletX = 700;
    BulletY = 500;
    PlasmaX = 100;
    PlasmaY = 500;
    
    
  }
   if (time == 350){
    BulletVY = -2;
    BulletAngle = 0;
    PlasmaVX = 3;
    
    
    
   }
    if (time == 420){
    BulletVY = 0;
    BulletVX = -5;
    BulletAngle = 270;
    PlasmaVX = -2;
    PlasmaVY = 0;
    }
    
     if (time == 500){
    BulletVY = 0;
    BulletVX = 0;
    BulletAngle = 0;
    PlasmaVX = .2;
    PlasmaVY = -.5;
     }
   if (time > 570){
    BulletY = 99999;
    BulletX = 9999;
    BulletAngle = 0;
    PlasmaX = 999999;
    text("Game Over", 450,450);
   }
   
   if (time > 650) {
     fill(0);
     rect(300,400,300,100);
   }
   if (time == 650) {
     DarkX = 450;
     DarkY = 450;
     ClickX = 200;
     ClickY = 200;
     ClickXV = 6;
     ClickYV = 6;
     
     
   }
   if (time > 700) {
   DarkX = -999;
   DarkY = -999;
   ClickX = 0;
   ClickXV = 10;
   ClickYV = 0;
   
   }

  fill(255,0,0);
  text("DARK SOULS",DarkX+50,DarkY-50);
  fill(0);
   if (time > 790) {
     rect(400,400,100,100);
     textSize(DEATH);
     fill(255,0,0);
     text("YOU DIED",450,450);
     DEATH = DEATH + 1;
   }
  
  fill(0, 200, 50);
  textAlign(CENTER, CENTER);
  textSize(200);
  textFont(Clock);
  if (time > 0) {
    fill(0, 200, 50);
    text("6 PM", 700, 760);
  }
  if (time > 240) {
    fill(0);
    rect(600, 680, 100, 100);
    fill(0, 200, 50);
    text("7 PM", 700, 760);
  }
  if (time > 480) {
    fill(0);
    rect(600, 680, 100, 100);
    fill(0, 200, 50);
    text("8 PM", 700, 760);
     }
  if (time > 720) {
    fill(0);
    rect(600, 680, 100, 100);
    fill(0, 200, 50);
    text("9 PM", 700, 760);
  }
    if (time > 900) {
     background(255);
     textSize(100);
     text("It's bedtime now", 450,450);
      
      
    }
   // Mouse CLicker
   fill(255);
    stroke(0);
  Mouse(ClickX, ClickY);

}
// object(objectX, 300, objectAngle)
// ------------------------------END OF DRAW-----------------------------------



//                                  Paremeters
void Steam(float x, float y, int angle) {
  pushMatrix(); // Begin Transformation
  translate(x, y);
  rotate(radians(angle));

  scale(.2);

  fill(255);
  strokeWeight(5);
  stroke(255);

  fill(0);
  ellipse(450, 450, 900, 900); //Background Sphere

  fill(255);                          
  quad(300, 600, 400, 700, 750, 300, 525, 200); // Thick right arm

  ellipse(345, 635, 220, 220); // White circle *AROUND* round arm end

  stroke(0);
  strokeWeight(20);
  ellipse(344, 635, 133, 133);  // Round arm end

  stroke(255);       
  strokeWeight(0);
  fill(255);
  quad(0, 440, 13, 560, 330, 690, 360, 580);

  ellipse(600, 300, 300, 300); // White circle Around big right round arm end

  stroke(0);
  strokeWeight(20);
  ellipse(600, 300, 175, 175);  // Round Big right arm end





  popMatrix(); // End Transformation
}

void Mouse(float x, float y) {
  pushMatrix(); 
  translate(x, y);

  scale(.4);
  strokeWeight(10);
  quad(25, 100, 55, 90, 130, 200, 90, 200); // Stem
  
  triangle(0, 150, 0, 0, 100, 100);  // Top of Mouse

  popMatrix();
}

void Gungeon(float x, float y) {
  pushMatrix(); 
  translate(x, y);

  fill(#F5B339);
  rect(0, 0, 200, 200);   //Background

  fill(0);
  circle(40, 145, 45);   // Eyes
  circle(160, 145, 45);



  popMatrix();
}

void Bullet(float x, float y, int angle) {
  pushMatrix(); 
  translate(x, y);
  rotate(radians(angle));
  
  scale(.8);
  fill(100);
  ellipse(100, 50, 100, 100);    //Head Top
  fill(#FFE75D);
  rect(50, 50, 100, 175);     //Body


  fill(0);
  circle(75, 105, 20);    //Eyes
  circle(125, 105, 20);
  
  rect(90, 105, 20, 5);    //Mouth
  popMatrix();
}
void Plasma(float x, float y) {
  pushMatrix(); 
  translate(x, y);
  
  scale(5);

  fill(#FF2D0D);
  circle(25, 25, 20);
  strokeWeight(0);
  fill(#FC7661);
  circle(25, 25, 10);
  fill(#FAA79A);
  circle(25, 25, 5);
  popMatrix();
}
void Dark(float x, float y) {
  pushMatrix(); 
  translate(x, y);

strokeWeight(0);
fill(100);
rect(80,120,40,60);
circle(100,180,50);
rect(50,100,100,40);
rect(70,40,60,90);
fill(255);

stroke(255);
fill(255);
line(100,20,100,80);

triangle(70,40,130,40,100,0);

popMatrix();

}
