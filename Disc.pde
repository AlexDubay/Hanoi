public class Disc {
  
  //size of disc starts at 0
  private int l;
  private color c;
  private boolean isActive;
  //rect draw height = HEIGHT
  public static final int HEIGHT = 10, WIDTHFACTOR = 10;
  
  public Disc(int size) {
    this.l = size;
    isActive = false;
    
    colorMode(HSB);
    this.c = color(random(255), 255, 200);
  }
  
  public void setActive(boolean b) {
    this.isActive = b;
  }
  
  public boolean isActive() {
    return this.isActive;
  }
  
  public int getSize() {
    return this.l;
  }
  
  public color getColor() {
    return this.c;
  }
  
  //h is the height on the peg
  //x is the peg center
  public void show(int h, int x) {
    if (!this.isActive) {
      rectMode(CENTER);
      fill(this.c);
      rect(x, height - (h * HEIGHT + HEIGHT / 2), this.l * WIDTHFACTOR, HEIGHT);
    }
  }
}
