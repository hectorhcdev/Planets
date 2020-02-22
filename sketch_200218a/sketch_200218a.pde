float rotation;
float rotationS;
float rotationZ;
PImage bg;
boolean [] keys={false,false};
Astro sun;
void setup(){
  size(1000,750,P3D);
  noStroke();
  bg=loadImage("./textures/back.png");
  bg.resize(1000,750);
  sun= new Astro(100,0.1,1.0,0,"./textures/sun.jpg");
  Astro planet= new Astro(30,0.2,10,200,"textures/planet1.png");
  Astro planet1= new Astro(20,-30,-10,0.45,"textures/planet2.jpg");
  Astro planet2= new Astro(25,0.4,2,360,"textures/planet3.jpg");
  Astro planet3= new Astro(16,0.6,5,-400,"textures/planet4.jpg");
  Astro planet4= new Astro(45,0.3,-4,800,"textures/planet5.jpg");
  Astro planet5= new Astro(10,0.5,-2,-500,"textures/moon.png");
  Astro moon= new Astro(10,0.4,1.0,40,"textures/moon.png");
  Astro moon1= new Astro(10,0.2,1.0,-60,"textures/moon.png");
  Astro moon2= new Astro(10,0.2,1.0,-40,"textures/moon.png");
  Astro moon3= new Astro(16,0.5,60,110,"textures/moon.png");
  Astro moon4= new Astro(20,0.2,120,90,"textures/moon.png");
  planet.addAstro(moon);
  planet.addAstro(moon1);
  planet2.addAstro(moon2);
  planet4.addAstro(moon3);
  planet4.addAstro(moon4);
  sun.addAstro(planet);
  sun.addAstro(planet1);
  sun.addAstro(planet2);
  sun.addAstro(planet3);
  sun.addAstro(planet4);
  sun.addAstro(planet5);
  rotationZ=-30;
}

void draw(){
  background(bg);
  text("TO CONTROL THE INCLINATION\nPRESS ↑ OR ↓ ",30,30);
  translate(width/2,height/2,-700);
  rotateX(radians(rotationZ));
  sun.printAstro();
  
  if(keys[0]){
    rotationZ+=0.1;
  }
  if(keys[1]){
    rotationZ-=0.1;
  }
  
  if(rotationZ>45){
    rotationZ=45;
  }
  if(rotationZ<-45){
    rotation=-45;
  }
  
}

void keyPressed(){
  if (keyCode==UP){
    keys[0]=true;
  }
  if(keyCode==DOWN){
    keys[1]=true;
  }
}

void keyReleased(){
    if (keyCode==UP){
    keys[0]=false;
  }
  if(keyCode==DOWN){
    keys[1]=false;
  }
};
