//Christina Jacob
//April 22, 2020
//Art 22 Spring 2020
//Week 2 Assignment 2
//Info/Inspo from Mark Hirsch lecture & Annette Lee Assignment 2

int x,y; //variable for position
//int h,s,b; // color variables

void setup() {
  size(1000, 800); //starting position in the middle
  x = width/2; //1000/2
  y = height/2; //800/2
}

void draw() {
    background(0); // black background
    //colorMode(HSB); // HueSaturationBright color mode
    
    //h = 200; // hue
    //s = 360; // saturation
    //b = 360; // brightness
   
    for (int i = 0; i < 1000; i++) { // starts at 0 and goes to less than 1000
    noStroke(); // no outline
    fill(random (100,100), random (0, 255), random (40,255), 11000); //random colors flashing on screen
    circle (random (0, width), random (0, height), 80); //random circles filled with above color
    }
    
    fill (random (255,255), random (255,255), random (255,255), 400); // random fill, 100 alpha channel
   ellipse (x, y, 100, 100); // ellipse starting in middle
   
    if (keyPressed) { // if you press a key (on the keyboard)
     if (key == CODED) { // is it special "CODED" key?
       if (keyCode == RIGHT) { // is the coded key the right arrow?
       x+=100; // same as saying x = x+100 - everytime you move the arrow you move 100+ pixles
       }
       if (keyCode == LEFT) { // is the coded key the left arrow?
      x-=100; // same as saying x = x-100
       }
       if (keyCode == UP) { // is the coded key the up arrow?
       y-=100; // same as saying y = y-100
     }
     if (keyCode == DOWN) { // is the coded key the down arrow?
     y+=100; // same as saying y = y+100
    }
     }
    }
if (x > width) { //if x goes out of bounds on the right
x = 0; // reset to the left
}
if (x < 0) { //if x goes out of bounds on the left
x = width; // reset to the right 
}
if (y > height) { // if y goes out of bounds on the bottom
y = 0; // reset to top
}
if (y < 0) { // if y goes out of bounds at the top
y = height; // reset to bottom
}
    }
 
