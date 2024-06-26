private Nave nave;
private Asteroide asteroide;
private Enemigo enemigo;
private Bala bala;


public void setup() {
  size(800, 800);
  imageMode(CENTER);

  nave = new Nave(loadImage("nave.png"), random(width), height-48);
  asteroide = new Asteroide(loadImage("asteroide.png"), random(width), random(height/2));
  enemigo = new Enemigo(loadImage("enemigo.png"), random(width), random(height/2));
}

public void draw() {
  background(0);
  
  nave.display();
  nave.mover();
  nave.readCommand();
  
  asteroide.display();
  asteroide.mover();
  
  enemigo.display();
  enemigo.mover();

  if (bala != null) {
    bala.display();
    bala.mover();
    
    if (bala.y < 0 || bala.y > height) {
      bala = null;
    }
  }

}

public void keyPressed() {

}
