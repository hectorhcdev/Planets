
class Astro{
  
  private ArrayList<Astro> satelites = new ArrayList();
  private int size;
  private float rotationV,rotation,distance;
  private PShape globe;
  PImage texture;
  
  public Astro(int size,float rotation,float distance,String texture){
    this.size=size;
    this.rotation=rotation;
    this.distance=distance;
    this.texture=loadImage(texture);
    
  }
  
  void addAstro(Astro ad){
    satelites.add(ad);
  }
  
  void printAstro(){
    pushMatrix();
    rotateY(radians(this.rotationV));
    translate(this.distance,0,0);
    noFill();
    globe=createShape(SPHERE,this.size);
    globe.setTexture(this.texture);
    //sphere(this.size);
    shape(globe);
    this.rotationV+=this.rotation;
  
    if(this.rotationV>=360){
      this.rotationV-=360;
    }
    for(Astro sat:this.satelites){
      //println("pintando satelite");

      sat.printAstro();
    }
    popMatrix();
  }
}
