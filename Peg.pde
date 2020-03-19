public class Peg {
  
  //n is the peg num in the arr
  //l is the width of the hitbox
  private int n, l;
  private Stack stack;
  private final int WIDTH = 5;
  
  public Peg(int n) {
    this.n = n;
    this.l = width / NUMOFPEG;
    this.stack = new Stack();
  }
  
  public void add(Disc d) {
    this.stack.push(d);
  }
  
  public Disc front() {
    return this.stack.front();
  }
  
  public void moveTo(Peg p) {
    if (!this.isEmpty() && p != null && this.frontSize() < p.frontSize()) {
      Disc d = this.stack.pop();
      p.add(d);
    }
  }
  
  public int frontSize() {
    if (this.isEmpty()) {
      return Integer.MAX_VALUE;
    } else {
      return this.stack.front().getSize();
    }
  }
  
  public int size() {
    return this.stack.size();
  }
  
  public boolean isEmpty() {
    return this.stack.size() == 0;
  }
  
  public boolean hitbox(int mx) {
    return mx >= n*l && mx < l*(n + 1);
  }
  
  public void show() {
    colorMode(RGB);
    fill(255);
    rect(n*l + l/2, height * 3 / 4, WIDTH, height / 2);
    this.stack.show(n*l + l / 2);
  }
}
