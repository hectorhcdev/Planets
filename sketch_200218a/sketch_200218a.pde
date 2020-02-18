float rotation;
float rotationS;
Astro sun;
void setup(){
  size(1000,750,P3D);
  noStroke();
  sun= new Astro(100,0.1,0,"./textures/sun.jpg");
  Astro planet= new Astro(30,0.02,200,"textures/planet1.png");
  Astro planet1= new Astro(20,0.1,-320,"textures/planet1.png");
  Astro planet2= new Astro(25,0.4,360,"textures/planet1.png");
  Astro planet3= new Astro(16,0.6,-400,"textures/planet1.png");
  Astro planet4= new Astro(45,0.3,800,"textures/planet1.png");
  Astro planet5= new Astro(10,0.5,-500,"textures/planet1.png");
  Astro moon= new Astro(10,0.4,40,"textures/moon.png");
  Astro moon1= new Astro(10,0.2,-60,"textures/moon.png");
  Astro moon2= new Astro(10,0.2,-40,"textures/moon.png");
  Astro moon3= new Astro(16,0.5,110,"textures/moon.png");
  Astro moon4= new Astro(20,0.2,90,"textures/moon.png");
  Astro moon5= new Astro(30,0.2,-160,"textures/moon.png");
  planet.addAstro(moon);
  planet.addAstro(moon1);
  planet2.addAstro(moon2);
  planet4.addAstro(moon3);
  planet4.addAstro(moon4);
  planet4.addAstro(moon5);
  sun.addAstro(planet);
  sun.addAstro(planet1);
  sun.addAstro(planet2);
  sun.addAstro(planet3);
  sun.addAstro(planet4);
  sun.addAstro(planet5);
}

void draw(){
  background(0);
  translate(width/2,height/2,-600);
  rotateX(radians(-45));
  sun.printAstro();
}
